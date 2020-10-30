/*
@Time : 2020/10/26 15:00
@Author : Tux
@Description :
*/

package pod

import (
	"bufio"
	"fmt"
	"net/http"
	"strconv"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
	// "github.com/gorilla/websocket"
	corev1 "k8s.io/api/core/v1"

	"go-admin/global"
)

const (
	// Time allowed to write a message to the peer.
	writeWait = 10 * time.Second
)

var upGrader = websocket.Upgrader{
	ReadBufferSize:  1024,
	WriteBufferSize: 1024,
	// Allow connections from any Origin
	CheckOrigin: func(r *http.Request) bool { return true },
}

func Log(c *gin.Context) {
	log := global.Sugar.Named("ws")
	token := c.GetHeader("Sec-Websocket-Protocol")
	// 验证token是否有效
	_, err := global.Jwt.ParseTokenString(token)
	if err != nil {
		log.Debug(err)
		return
	}

	upGrader.Subprotocols = []string{token}
	ws, err := upGrader.Upgrade(c.Writer, c.Request, nil)
	if err != nil {
		log.Info(err)
		return
	}
	defer func() {
		ws.Close()
		fmt.Println("ws closed")
	}()
	namespaceName := c.Param("namespaceName")
	podName := c.Param("podName")
	containerName := c.Query("container")
	tailLines, _ := strconv.ParseInt(c.Query("tailLines"), 10, 64)

	req := global.K8sClient.CoreV1().Pods(namespaceName).GetLogs(podName, &corev1.PodLogOptions{
		Container: containerName,
		Follow:    true,
		TailLines: &tailLines,
	})

	podLogs, err := req.Stream()
	if err != nil {
		log.Info(err)
		return
	}
	defer podLogs.Close()

	done := make(chan struct{})
	reader := bufio.NewReader(podLogs)

	// 判断关闭连接
	go HandleCloseMessage(ws, done)

	go HandlePodLog(ws, reader, done)

	<-done
}

func HandleCloseMessage(ws *websocket.Conn, done chan struct{}) {
	defer ws.Close()
	for {
		_, _, err := ws.ReadMessage()

		if err != nil {
			close(done)
			break
		}
	}
}

func HandlePodLog(ws *websocket.Conn, reader *bufio.Reader, done chan struct{}) {
	defer ws.Close()
	for {
		line, err := reader.ReadBytes('\n')
		if err != nil {
			global.Sugar.Named("ws").Debug(err)
			break
		}
		line = append(line, '\r')
		err = ws.WriteMessage(websocket.TextMessage, line)
		if err != nil {
			global.Sugar.Named("ws").Debug(err)
			break
		}
	}
	ws.SetWriteDeadline(time.Now().Add(writeWait))
	ws.WriteMessage(websocket.CloseMessage, websocket.FormatCloseMessage(websocket.CloseNormalClosure, ""))
}

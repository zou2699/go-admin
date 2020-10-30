/*
@Time : 2020/10/26 14:47
@Author : Tux
@Description :
*/

package pod

import (
	"github.com/gin-gonic/gin"

	"go-admin/global"
)

func Exec(c *gin.Context) {
	log := global.Sugar.Named("exec")
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
	namespaceName := c.Param("namespaceName")
	podName := c.Param("podName")
	containerName := c.Query("container")
	shell := c.Query("shell")

	global.K8sTerminal.HandleSession(shell, namespaceName, podName, containerName, ws)
}

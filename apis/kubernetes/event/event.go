/*
@Time : 2020/9/16 15:11
@Author : Tux
@Description :
*/

package event

import (
	"github.com/gin-gonic/gin"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/tools"
	"go-admin/tools/app"
)

func GetEventList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")
	// watch 用于watch服务器的事件更新
	watch := c.Query("watch")
	if watch == "true" {
		resourceVersion := c.Query("resourceVersion")
		timeoutSeconds := c.Query("timeoutSeconds")
		ts, err := tools.StringToInt64(timeoutSeconds)
		if err != nil {
			ts = 0
		}
		w, err := global.K8sClient.CoreV1().Events(namespaceName).Watch(metav1.ListOptions{Watch: true, ResourceVersion: resourceVersion, TimeoutSeconds: &ts})
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}
		defer w.Stop()
		res := <-w.ResultChan()
		app.OK(c, res, "")
		return
	}

	eventList, err := global.K8sClient.CoreV1().Events(namespaceName).List(metav1.ListOptions{})

	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, eventList, "")
}

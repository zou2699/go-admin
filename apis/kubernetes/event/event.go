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

	eventList, err := global.K8sClient.CoreV1().Events(namespaceName).List(metav1.ListOptions{})
	tools.HasError(err, "", -1)

	app.OK(c, eventList, "")
}

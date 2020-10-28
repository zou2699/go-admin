/*
@Time : 2020/10/27 09:46
@Author : Tux
@Description :
*/

package pod

import (
	"github.com/gin-gonic/gin"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/tools/app"
)

func GetPodList(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	labelSelector := c.Query("labelSelector")
	podList, err := global.K8sClient.CoreV1().Pods(namespaceName).List(metav1.ListOptions{LabelSelector: labelSelector})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}
	app.OK(c, podList, "")
}

/*
@Time : 2020/9/7 10:43
@Author : Tux
@Description :
*/

package node

import (
	"github.com/gin-gonic/gin"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/tools/app"
)

func GetNodeList(c *gin.Context) {
	// var nodeList *corev1.NodeList
	var err error

	nodeList, err := global.K8sClient.CoreV1().Nodes().List(metav1.ListOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, nodeList, "")
}

func GetNode(c *gin.Context) {
	nodeName := c.Param("nodeName")
	node, err := global.K8sClient.CoreV1().Nodes().Get(nodeName, metav1.GetOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, node, "")
}

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
	"go-admin/tools"
	"go-admin/tools/app"
)

func GetNodeList(c *gin.Context) {
	// var nodeList *corev1.NodeList
	var err error

	nodeList, err := global.K8sClient.CoreV1().Nodes().List(metav1.ListOptions{})
	tools.HasError(err, "", -1)

	app.OK(c, nodeList,"")
}

func GetNode(c *gin.Context) {
	nodeName:=c.Param("nodeName")
	node, err := global.K8sClient.CoreV1().Nodes().Get(nodeName,metav1.GetOptions{})
	tools.HasError(err, "抱歉未找到相关信息", -1)

	app.OK(c, node, "")
}

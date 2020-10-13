/*
@Time : 2020/9/8 13:59
@Author : Tux
@Description :
*/

package namespace

import (
	"github.com/gin-gonic/gin"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/tools/app"
)

func GetNamespaceList(c *gin.Context) {
	var err error
	namespaceList, err := global.K8sClient.CoreV1().Namespaces().List(metav1.ListOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, namespaceList, "")
}

func GetNamespace(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	namespace, err := global.K8sClient.CoreV1().Namespaces().Get(namespaceName, metav1.GetOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, namespace, "")
}

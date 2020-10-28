/*
@Time : 2020/10/27 10:37
@Author : Tux
@Description :
*/

package replicaset

import (
	"github.com/gin-gonic/gin"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/tools/app"
)

func GetReplicasetList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")
	labelSelector := c.Query("labelSelector")

	replicasetList, err := global.K8sClient.AppsV1().ReplicaSets(namespaceName).List(metav1.ListOptions{LabelSelector: labelSelector})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, replicasetList, "")
}

/*
@Time : 2020/9/8 15:26
@Author : Tux
@Description :
*/

package deployment

import (
	"encoding/json"
	"time"

	"github.com/gin-gonic/gin"
	appsv1 "k8s.io/api/apps/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/types"

	"go-admin/global"
	"go-admin/tools"
	"go-admin/tools/app"
)

func GetDeploymentList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")

	deploymentList, err := global.K8sClient.AppsV1().Deployments(namespaceName).List(metav1.ListOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, deploymentList, "")
}

func GetDeployment(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	deploymentName := c.Param("deploymentName")
	deployment, err := global.K8sClient.AppsV1().Deployments(namespaceName).Get(deploymentName, metav1.GetOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, deployment, "")
}

func RestartDeployment(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	deploymentName := c.Param("deploymentName")
	// 模式kubectl rollout restart deployment
	patchData := map[string]interface{}{
		"spec": map[string]interface{}{
			"template": map[string]interface{}{
				"metadata": map[string]interface{}{
					"annotations": map[string]interface{}{
						"kubectl.kubernetes.io/restartedAt": time.Now().Format(time.RFC3339),
					},
				},
			},
		},
	}

	patchDataBytes, _ := json.Marshal(patchData)
	_, err := global.K8sClient.AppsV1().Deployments(namespaceName).Patch(deploymentName, types.StrategicMergePatchType, patchDataBytes)
	tools.HasError(err, "重启失败", -1)
	app.OK(c, "", "重启成功")
}

func ChangeDeployment(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	var deployment appsv1.Deployment
	err := c.ShouldBindJSON(&deployment)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	dp, err := global.K8sClient.AppsV1().Deployments(namespaceName).Update(&deployment)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, dp, "")
}

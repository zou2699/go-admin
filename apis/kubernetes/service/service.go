/*
@Time : 2020/9/10 09:55
@Author : Tux
@Description :
*/

package service

import (
	"fmt"

	"github.com/gin-gonic/gin"
	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/tools"
	"go-admin/tools/app"
)

func GetServiceList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")

	serviceList, err := global.K8sClient.CoreV1().Services(namespaceName).List(metav1.ListOptions{})
	tools.HasError(err, "", -1)

	app.OK(c, serviceList, "")
}

func GetService(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	serviceName := c.Param("serviceName")
	service, err := global.K8sClient.CoreV1().Services(namespaceName).Get(serviceName, metav1.GetOptions{})
	tools.HasError(err, "抱歉未找到相关信息", -1)

	app.OK(c, service, "")
}

func ChangeService(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	var svc corev1.Service
	err := c.ShouldBindJSON(&svc)
	tools.HasError(err, "", -1)
	fmt.Printf("%+v", svc)
	service, err := global.K8sClient.CoreV1().Services(namespaceName).Update(&svc)
	tools.HasError(err, "", -1)

	app.OK(c, service, "")
}

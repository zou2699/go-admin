/*
@Time : 2020/9/10 09:55
@Author : Tux
@Description :
*/

package service

import (
	"github.com/gin-gonic/gin"
	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/tools/app"
)

func GetServiceList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")

	serviceList, err := global.K8sClient.CoreV1().Services(namespaceName).List(metav1.ListOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, serviceList, "")
}

func GetService(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	serviceName := c.Param("serviceName")
	service, err := global.K8sClient.CoreV1().Services(namespaceName).Get(serviceName, metav1.GetOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, service, "")
}

func ChangeService(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	var svc corev1.Service
	err := c.ShouldBindJSON(&svc)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}
	service, err := global.K8sClient.CoreV1().Services(namespaceName).Update(&svc)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, service, "")
}

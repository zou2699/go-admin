/*
@Time : 2020/9/11 10:07
@Author : Tux
@Description :
*/

package istio

import (
	"github.com/gin-gonic/gin"
	v1alpha3 "istio.io/client-go/pkg/apis/networking/v1alpha3"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/tools/app"
)

func GetGatewayList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")

	gwList, err := global.IstioClient.NetworkingV1alpha3().Gateways(namespaceName).List(metav1.ListOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, gwList, "")
}

func GetGateway(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	gatewayName := c.Param("gatewayName")
	gw, err := global.IstioClient.NetworkingV1alpha3().Gateways(namespaceName).Get(gatewayName, metav1.GetOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, gw, "")
}

func ChangeGateway(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	var gateway v1alpha3.Gateway
	err := c.ShouldBindJSON(&gateway)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	gw, err := global.IstioClient.NetworkingV1alpha3().Gateways(namespaceName).Update(&gateway)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, gw, "")
}

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
	"go-admin/tools"
	"go-admin/tools/app"
)

func GetGatewayList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")

	gwList, err := global.IstioClient.NetworkingV1alpha3().Gateways(namespaceName).List(metav1.ListOptions{})
	tools.HasError(err, "", -1)

	app.OK(c, gwList, "")
}

func GetGateway(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	gatewayName := c.Param("gatewayName")
	gw, err := global.IstioClient.NetworkingV1alpha3().Gateways(namespaceName).Get(gatewayName, metav1.GetOptions{})
	tools.HasError(err, "抱歉未找到相关信息", -1)

	app.OK(c, gw, "")
}

func ChangeGateway(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	var gateway v1alpha3.Gateway
	err := c.ShouldBindJSON(&gateway)
	tools.HasError(err, "", -1)

	gw, err := global.IstioClient.NetworkingV1alpha3().Gateways(namespaceName).Update(&gateway)
	tools.HasError(err, "", -1)

	app.OK(c, gw, "")
}

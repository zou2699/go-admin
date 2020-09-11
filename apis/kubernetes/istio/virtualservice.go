/*
@Time : 2020/9/11 10:07
@Author : Tux
@Description :
*/

package istio

import (
	"github.com/gin-gonic/gin"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/tools"
	"go-admin/tools/app"
)

func GetVirtualServiceList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")

	vsList, err := global.IstioClient.NetworkingV1alpha3().VirtualServices(namespaceName).List(metav1.ListOptions{})
	tools.HasError(err, "", -1)

	app.OK(c, vsList, "")
}

func GetVirtualService(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	virtualServiceName := c.Param("virtualServiceName")
	gw, err := global.IstioClient.NetworkingV1alpha3().VirtualServices(namespaceName).Get(virtualServiceName, metav1.GetOptions{})
	tools.HasError(err, "抱歉未找到相关信息", -1)

	app.OK(c, gw, "")
}

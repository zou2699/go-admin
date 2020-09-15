/*
@Time : 2020/9/11 10:07
@Author : Tux
@Description :
*/

package istio

import (
	"github.com/gin-gonic/gin"
	"istio.io/client-go/pkg/apis/networking/v1alpha3"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/tools"
	"go-admin/tools/app"
)

func GetServiceEntryList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")

	seList, err := global.IstioClient.NetworkingV1alpha3().ServiceEntries(namespaceName).List(metav1.ListOptions{})
	tools.HasError(err, "", -1)

	app.OK(c, seList, "")
}

func GetServiceEntry(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	serviceEntryName := c.Param("serviceEntryName")
	se, err := global.IstioClient.NetworkingV1alpha3().ServiceEntries(namespaceName).Get(serviceEntryName, metav1.GetOptions{})
	tools.HasError(err, "抱歉未找到相关信息", -1)

	app.OK(c, se, "")
}

func ChangeServiceEntry(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	var serviceEntry v1alpha3.ServiceEntry
	err := c.ShouldBindJSON(&serviceEntry)
	tools.HasError(err, "", -1)

	se, err := global.IstioClient.NetworkingV1alpha3().ServiceEntries(namespaceName).Update(&serviceEntry)
	tools.HasError(err, "", -1)

	app.OK(c, se, "")
}

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
	"go-admin/tools/app"
)

func GetServiceEntryList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")

	seList, err := global.IstioClient.NetworkingV1alpha3().ServiceEntries(namespaceName).List(metav1.ListOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, seList, "")
}

func GetServiceEntry(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	serviceEntryName := c.Param("serviceEntryName")
	se, err := global.IstioClient.NetworkingV1alpha3().ServiceEntries(namespaceName).Get(serviceEntryName, metav1.GetOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, se, "")
}

func ChangeServiceEntry(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	var serviceEntry v1alpha3.ServiceEntry
	err := c.ShouldBindJSON(&serviceEntry)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	se, err := global.IstioClient.NetworkingV1alpha3().ServiceEntries(namespaceName).Update(&serviceEntry)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, se, "")
}

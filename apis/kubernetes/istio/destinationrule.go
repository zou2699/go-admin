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

func GetDestinationRuleList(c *gin.Context) {
	var err error
	namespaceName := c.Param("namespaceName")

	drList, err := global.IstioClient.NetworkingV1alpha3().DestinationRules(namespaceName).List(metav1.ListOptions{})
	tools.HasError(err, "", -1)

	app.OK(c, drList, "")
}

func GetDestinationRule(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	destinationRuleName := c.Param("destinationRuleName")
	dr, err := global.IstioClient.NetworkingV1alpha3().DestinationRules(namespaceName).Get(destinationRuleName, metav1.GetOptions{})
	tools.HasError(err, "抱歉未找到相关信息", -1)

	app.OK(c, dr, "")
}

func ChangeDestinationRule(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	var destinationRule v1alpha3.DestinationRule
	err := c.ShouldBindJSON(&destinationRule)
	tools.HasError(err, "", -1)

	dr, err := global.IstioClient.NetworkingV1alpha3().DestinationRules(namespaceName).Update(&destinationRule)
	tools.HasError(err, "", -1)

	app.OK(c, dr, "")
}

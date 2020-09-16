/*
@Time : 2020/9/16 11:02
@Author : Tux
@Description :
*/

package create

import (
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/pkg/errors"
	"istio.io/client-go/pkg/apis/networking/v1alpha3"
	appsv1 "k8s.io/api/apps/v1"
	corev1 "k8s.io/api/core/v1"

	"go-admin/global"
	"go-admin/tools"
	"go-admin/tools/app"
)

func Resource(c *gin.Context) {
	namespaceName := c.Param("namespaceName")
	kind := c.Param("kind")
	var err error

	switch kind {
	case "deployment":
		var res appsv1.Deployment
		err = c.ShouldBindJSON(&res)
		tools.HasError(err, "", -1)

		_, err := global.K8sClient.AppsV1().Deployments(namespaceName).Create(&res)
		tools.HasError(err, "", -1)
	case "service":
		var res corev1.Service
		err = c.ShouldBindJSON(&res)
		tools.HasError(err, "", -1)

		_, err := global.K8sClient.CoreV1().Services(namespaceName).Create(&res)
		tools.HasError(err, "", -1)
	case "gateway":
		var res v1alpha3.Gateway
		err = c.ShouldBindJSON(&res)
		tools.HasError(err, "", -1)

		_, err := global.IstioClient.NetworkingV1alpha3().Gateways(namespaceName).Create(&res)
		tools.HasError(err, "", -1)
	case "virtualService":
		var res v1alpha3.VirtualService
		err = c.ShouldBindJSON(&res)
		tools.HasError(err, "", -1)

		_, err := global.IstioClient.NetworkingV1alpha3().VirtualServices(namespaceName).Create(&res)
		tools.HasError(err, "", -1)
	case "serviceEntry":
		var res v1alpha3.ServiceEntry
		err = c.ShouldBindJSON(&res)
		tools.HasError(errors.Wrap(err, ""), "", -1)
		fmt.Printf("%+v\n", &res)

		_, err := global.IstioClient.NetworkingV1alpha3().ServiceEntries(namespaceName).Create(&res)
		tools.HasError(errors.Wrap(err, ""), "", -1)
	case "destinationRule":
		var res v1alpha3.DestinationRule
		err = c.ShouldBindJSON(&res)
		tools.HasError(errors.Wrap(err, ""), "", -1)

		_, err := global.IstioClient.NetworkingV1alpha3().DestinationRules(namespaceName).Create(&res)
		tools.HasError(err, "", -1)
	default:
		var res app.Response
		res.Msg = fmt.Sprintf("not supported kind: %s", kind)
		c.JSON(http.StatusOK, res.ReturnOK())
		return
	}

	app.OK(c, "", "")
}

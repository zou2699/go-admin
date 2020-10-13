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
	"istio.io/client-go/pkg/apis/networking/v1alpha3"
	appsv1 "k8s.io/api/apps/v1"
	corev1 "k8s.io/api/core/v1"

	"go-admin/global"
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
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}

		_, err := global.K8sClient.AppsV1().Deployments(namespaceName).Create(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}
		app.OK(c, "", "创建成功")
	case "service":
		var res corev1.Service
		err = c.ShouldBindJSON(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}

		_, err := global.K8sClient.CoreV1().Services(namespaceName).Create(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}
		app.OK(c, "", "创建成功")
	case "gateway":
		var res v1alpha3.Gateway
		err = c.ShouldBindJSON(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}

		_, err := global.IstioClient.NetworkingV1alpha3().Gateways(namespaceName).Create(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}
		app.OK(c, "", "创建成功")
	case "virtualService":
		var res v1alpha3.VirtualService
		err = c.ShouldBindJSON(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}

		_, err := global.IstioClient.NetworkingV1alpha3().VirtualServices(namespaceName).Create(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}
	case "serviceEntry":
		var res v1alpha3.ServiceEntry
		err = c.ShouldBindJSON(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}

		_, err := global.IstioClient.NetworkingV1alpha3().ServiceEntries(namespaceName).Create(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}
		app.OK(c, "", "创建成功")
	case "destinationRule":
		var res v1alpha3.DestinationRule
		err = c.ShouldBindJSON(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}

		_, err := global.IstioClient.NetworkingV1alpha3().DestinationRules(namespaceName).Create(&res)
		if err != nil {
			app.Error(c, -1, err, "")
			return
		}
		app.OK(c, "", "创建成功")
	default:
		var res app.Response
		res.Msg = fmt.Sprintf("not supported kind: %s", kind)
		c.JSON(http.StatusOK, res.ReturnOK())
		return
	}

	app.OK(c, "", "")
}

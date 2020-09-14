/*
@Time : 2020/9/7 10:55
@Author : Tux
@Description :
*/

package router

import (
	"github.com/gin-gonic/gin"

	"go-admin/apis/kubernetes/deployment"
	"go-admin/apis/kubernetes/istio"
	"go-admin/apis/kubernetes/namespace"
	"go-admin/apis/kubernetes/node"
	"go-admin/apis/kubernetes/service"
	"go-admin/middleware"
	jwt "go-admin/pkg/jwtauth"
)

// 需认证的路由代码
func registerKubernetesRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {

	apiv1 := v1.Group("/api/v1").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		// node
		apiv1.GET("/nodes", node.GetNodeList)
		apiv1.GET("/nodes/:nodeName", node.GetNode)

		// namespace
		apiv1.GET("/namespaces", namespace.GetNamespaceList)
		apiv1.GET("/namespaces/:namespaceName", namespace.GetNamespace)

		// service
		apiv1.GET("/namespaces/:namespaceName/services", service.GetServiceList)
		apiv1.GET("/namespaces/:namespaceName/services/:serviceName", service.GetService)
		apiv1.PUT("/namespaces/:namespaceName/services/:serviceName", service.ChangeService)

	}

	appsv1 := v1.Group("/apis/apps/v1").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		// deployment
		appsv1.GET("/namespaces/:namespaceName/deployments", deployment.GetDeploymentList)
		appsv1.GET("/namespaces/:namespaceName/deployments/:deploymentName", deployment.GetDeployment)
		appsv1.PATCH("/namespaces/:namespaceName/deployments/:deploymentName", deployment.RestartDeployment)
	}

	// istio
	istiov1alpha3 := v1.Group("/apis/networking.istio.io/v1alpha3").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		// gw
		istiov1alpha3.GET("/namespaces/:namespaceName/gateways", istio.GetGatewayList)
		istiov1alpha3.GET("/namespaces/:namespaceName/gateways/:gatewayName", istio.GetGateway)
		// vs
		istiov1alpha3.GET("/namespaces/:namespaceName/virtualservices", istio.GetVirtualServiceList)
		istiov1alpha3.GET("/namespaces/:namespaceName/virtualservices/:virtualServiceName", istio.GetVirtualService)
		// se
		istiov1alpha3.GET("/namespaces/:namespaceName/serviceentries", istio.GetServiceEntryList)
		istiov1alpha3.GET("/namespaces/:namespaceName/serviceentries/:serviceEntryName", istio.GetServiceEntry)
		// dr
		istiov1alpha3.GET("/namespaces/:namespaceName/destinationrules", istio.GetDestinationRuleList)
		istiov1alpha3.GET("/namespaces/:namespaceName/destinationrules/:destinationRuleName", istio.GetDestinationRule)
	}
}
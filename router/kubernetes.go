/*
@Time : 2020/9/7 10:55
@Author : Tux
@Description :
*/

package router

import (
	"github.com/gin-gonic/gin"

	"go-admin/apis/kubernetes/deployment"
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

	}

	r := v1.Group("/apis/apps/v1").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		// deployment
		r.GET("/namespaces/:namespaceName/deployments", deployment.GetDeploymentList)
		r.GET("/namespaces/:namespaceName/deployments/:deploymentName", deployment.GetDeployment)
		r.PATCH("/namespaces/:namespaceName/deployments/:deploymentName", deployment.RestartDeployment)
	}
}

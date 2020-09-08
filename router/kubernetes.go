/*
@Time : 2020/9/7 10:55
@Author : Tux
@Description :
*/

package router

import (
	"github.com/gin-gonic/gin"

	"go-admin/apis/kubernetes/namespace"
	"go-admin/apis/kubernetes/node"
	"go-admin/middleware"
	jwt "go-admin/pkg/jwtauth"
)

// 需认证的路由代码
func registerKubernetesRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {

	r := v1.Group("/api/v1").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())

	// node
	r.GET("/nodes", node.GetNodeList)
	r.GET("/nodes/:nodeName", node.GetNode)

	// namespace
	r.GET("/namespaces", namespace.GetNamespaceList)
	r.GET("/namespaces/:namespaceName", namespace.GetNamespace)

}

package router

import (
	"github.com/gin-gonic/gin"

	"go-admin/global"
	"go-admin/middleware"
	"go-admin/router/article"
	"go-admin/router/dashboard"
	"go-admin/router/k8s"
	"go-admin/router/system"
	"go-admin/tools"
)

func InitRouter() *gin.Engine {
	r := gin.New()

	middleware.InitMiddleware(r)
	// the jwt middleware
	authMiddleware, err := middleware.AuthInit()
	global.Jwt = authMiddleware
	tools.HasError(err, "JWT Init Error", 500)

	// 注册系统路由
	root := r.Group("")
	system.InitRouter(root, authMiddleware)

	//test
	// root.GET("/ws",pod.Ping)
	// 注册dashboard
	dashboardApi := r.Group("/api/v1/dashboard")
	dashboard.InitRouter(dashboardApi, authMiddleware)

	// k8s
	k8sApi := r.Group("/k8s-api")
	k8s.InitRouter(k8sApi, authMiddleware)

	// 注册业务路由
	v1 := r.Group("/api/v1")
	article.InitRouter(v1, authMiddleware)

	return r
}

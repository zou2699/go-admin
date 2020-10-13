package router

import (
	"github.com/gin-gonic/gin"

	"go-admin/middleware"
	_ "go-admin/pkg/jwtauth"
	"go-admin/tools"
)

func InitRouter() *gin.Engine {
	r := gin.New()

	middleware.InitMiddleware(r)
	// the jwt middleware
	authMiddleware, err := middleware.AuthInit()
	tools.HasError(err, "JWT Init Error", 500)

	// 注册系统路由
	InitSysRouter(r, authMiddleware)

	// 注册业务路由
	InitExamplesRouter(r, authMiddleware)

	return r
}

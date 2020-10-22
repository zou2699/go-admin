/*
@Time : 2020/10/21 14:06
@Author : Tux
@Description :
*/

package dashboard

import (
	"github.com/gin-gonic/gin"

	"go-admin/apis/dashboard"
	"go-admin/middleware"
	jwt "go-admin/pkg/jwtauth"
)

func InitRouter(g *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {
	registerDashboardRouter(g, authMiddleware)
}

func registerDashboardRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {
	api := v1.Group("").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		api.GET("", dashboard.InitData)
	}
}

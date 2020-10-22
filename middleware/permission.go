package middleware

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"go-admin/global"
	mycasbin "go-admin/pkg/casbin"
	"go-admin/pkg/jwtauth"
	_ "go-admin/pkg/jwtauth"
	"go-admin/tools"
)

// 权限检查中间件
func AuthCheckRole() gin.HandlerFunc {
	return func(c *gin.Context) {
		data, _ := c.Get("JWT_PAYLOAD")
		v := data.(jwtauth.MapClaims)
		e, err := mycasbin.Casbin()
		tools.HasError(err, "", 500)
		// 检查权限
		res, err := e.Enforce(v["rolekey"], c.Request.URL.Path, c.Request.Method)
		tools.HasError(err, "", 500)

		global.Sugar.Named("middleware").Debugw(
			"AuthCheckRole",
			"method", c.Request.Method,
			"url", c.Request.URL.Path,
			"role", v["rolekey"],
			"user", v["nicekey"],
		)

		if res {
			c.Next()
		} else {
			c.JSON(http.StatusForbidden, gin.H{
				"code": 403,
				"msg":  "对不起，您没有该接口访问权限，请联系管理员",
			})
			c.Abort()
			return
		}
	}
}

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

		global.Logger.Infof("%s  method: %s, url: %s, role: %s",
			tools.GetCurrentTimeStr(),
			c.Request.Method,
			c.Request.URL.Path,
			v["rolekey"],
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

package middleware

import (
	"github.com/gin-gonic/gin"

	"go-admin/tools/config"
)

func InitMiddleware(r *gin.Engine) {
	// 记录日志到db
	if config.LoggerConfig.EnabledDB {
		r.Use(OperLogToDB())
	}
	// 使用gin自带的logger
	r.Use(gin.Logger())
	// 自定义错误处理
	r.Use(CustomError)
	// NoCache is a middleware function that appends headers
	r.Use(NoCache)
	// 跨域处理
	r.Use(Options)
	// Secure is a middleware function that appends security
	r.Use(Secure)
	// Set X-Request-Id header
	r.Use(RequestId())
}

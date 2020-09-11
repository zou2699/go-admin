package middleware

import (
	"net/http"
	"strconv"
	"strings"

	"github.com/gin-gonic/gin"

	"go-admin/global"
)

func CustomError(c *gin.Context) {
	defer func() {
		if err := recover(); err != nil {

			if c.IsAborted() {
				c.Status(200)
			}
			switch errStr := err.(type) {
			case string:
				p := strings.Split(errStr, "#")
				if len(p) == 3 && p[0] == "CustomError" {
					statusCode, e := strconv.Atoi(p[1])
					if e != nil {
						break
					}
					c.Status(statusCode)
					global.Logger.Warningf(
						"method: %v, url: %v, statusCode: %d, clientIP: %v, errMsg: %v",
						c.Request.Method,
						c.Request.URL,
						statusCode,
						c.ClientIP(),
						p[2],
					)
					c.JSON(http.StatusOK, gin.H{
						"code": statusCode,
						"msg":  p[2],
					})
				}
			default:
				panic(err)
			}
		}
	}()
	c.Next()
}

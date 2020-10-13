package middleware

import (
	"strings"
	"time"

	"github.com/gin-gonic/gin"

	"go-admin/global"
	"go-admin/models/system"
	"go-admin/tools"
)

// 日志记录到文件
func OperLogToDB() gin.HandlerFunc {

	return func(c *gin.Context) {
		// 开始时间
		startTime := time.Now()

		// 处理请求
		c.Next()

		// 结束时间
		endTime := time.Now()

		// 执行时间
		latencyTime := endTime.Sub(startTime)

		// 请求方式
		reqMethod := c.Request.Method

		// 请求路由
		reqUri := c.Request.RequestURI

		// 状态码
		statusCode := c.Writer.Status()

		// 请求IP
		clientIP := c.ClientIP()

		// 日志格式
		// fmt.Printf("%s [INFO] %s %s %3d %13v %15s \r\n",
		// 	startTime.Format("2006-01-02 15:04:05"),
		// 	reqMethod,
		// 	reqUri,
		// 	statusCode,
		// 	latencyTime,
		// 	clientIP,
		// )

		// global.ApiLog.Infof("%3d %13v %15s %8s %-7s",statusCode, latencyTime, clientIP, reqMethod, reqUri)

		if c.Request.Method != "GET" && c.Request.Method != "OPTIONS" {
			SetDBOperLog(c, clientIP, statusCode, reqUri, reqMethod, latencyTime)
		}
	}
}

// 写入操作日志表
// 该方法后续即将弃用
func SetDBOperLog(c *gin.Context, clientIP string, statusCode int, reqUri string, reqMethod string, latencyTime time.Duration) {
	if reqUri == "/login" || strings.Contains(reqUri, "/api/v1/logout") { // 不在这里记录登录登出
		return
	}
	menu := system.Menu{}
	menu.Path = reqUri
	menu.Action = reqMethod
	menuList, _ := menu.Get()
	sysOperLog := system.SysOperLog{}
	sysOperLog.OperIp = clientIP
	sysOperLog.OperLocation = tools.GetLocation(clientIP)
	sysOperLog.Status = tools.IntToString(statusCode)
	sysOperLog.OperName = tools.GetUserName(c)
	sysOperLog.RequestMethod = c.Request.Method
	sysOperLog.OperUrl = reqUri

	if reqMethod == "POST" {
		sysOperLog.BusinessType = "1"
	} else if reqMethod == "PUT" {
		sysOperLog.BusinessType = "2"
	} else if reqMethod == "DELETE" {
		sysOperLog.BusinessType = "3"
	}

	sysOperLog.Method = reqMethod
	if len(menuList) > 0 {
		sysOperLog.Title = menuList[0].Title
	}
	b, _ := c.Get("body")
	sysOperLog.OperParam, _ = tools.StructToJsonStr(b)
	sysOperLog.CreateBy = tools.GetUserName(c)
	sysOperLog.OperTime = tools.GetCurrentTime()
	sysOperLog.LatencyTime = (latencyTime).String()
	sysOperLog.UserAgent = c.Request.UserAgent()
	if c.Err() == nil && statusCode <= 400 {
		sysOperLog.Status = "0"
	} else {
		sysOperLog.Status = "1"
	}
	_, err := sysOperLog.Create()
	if err != nil {
		global.Sugar.Warnf("sysOperLog  create err, %s", err)
	}
}

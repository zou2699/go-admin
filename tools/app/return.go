package app

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"go.uber.org/zap"

	"go-admin/global"
)

// 失败数据处理
func Error(c *gin.Context, code int, err error, msg string) {
	global.Logger.Named("errResp").WithOptions(zap.AddCallerSkip(1)).Info("handle error", zap.Error(err))
	var res Response
	res.Msg = err.Error()
	if msg != "" {
		res.Msg = msg
	}
	c.JSON(http.StatusOK, res.ReturnError(code))
}

// 通常成功数据处理
func OK(c *gin.Context, data interface{}, msg string) {
	var res Response
	res.Data = data
	if msg != "" {
		res.Msg = msg
	}
	c.JSON(http.StatusOK, res.ReturnOK())
}

// 分页数据处理
func PageOK(c *gin.Context, result interface{}, count int, pageIndex int, pageSize int, msg string) {
	var res PageResponse
	res.Data.List = result
	res.Data.Count = count
	res.Data.PageIndex = pageIndex
	res.Data.PageSize = pageSize
	if msg != "" {
		res.Msg = msg
	}
	c.JSON(http.StatusOK, res.ReturnOK())
}

// 兼容函数
func Custum(c *gin.Context, data gin.H) {
	c.JSON(http.StatusOK, data)
}

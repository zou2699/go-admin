package system

import (
	"errors"
	"fmt"
	"strings"

	"github.com/gin-gonic/gin"

	"go-admin/models/system"
	"go-admin/tools/app"
)

// @Summary 查询系统信息
// @Description 获取JSON
// @Tags 系统信息
// @Success 200 {string} string	"{"code": 200, "message": "添加成功"}"
// @Success 200 {string} string	"{"code": -1, "message": "添加失败"}"
// @Router /api/v1/setting [get]
func GetSetting(c *gin.Context) {
	var s system.SysSetting
	r, err := s.Get()
	if err != nil {
		app.Error(c, -1, fmt.Errorf("查询数据失败，%v", err.Error()), "")
		return
	}

	if r.Logo != "" {
		if !strings.HasPrefix(r.Logo, "http") {
			r.Logo = fmt.Sprintf("http://%s/%s", c.Request.Host, r.Logo)
		}
	}

	app.OK(c, r, "查询成功")
}

// @Summary 更新或提交系统信息
// @Description 获取JSON
// @Tags 系统信息
// @Param data body models.SysUser true "body"
// @Success 200 {string} string	"{"code": 200, "message": "添加成功"}"
// @Success 200 {string} string	"{"code": -1, "message": "添加失败"}"
// @Router /api/v1/setting [post]
func CreateSetting(c *gin.Context) {
	var s system.ResponseSystemConfig
	if err := c.ShouldBind(&s); err != nil {
		app.Error(c, 200, errors.New("缺少必要参数"), "")
		return
	}

	var sModel system.SysSetting
	sModel.Logo = s.Logo
	sModel.Name = s.Name

	a, e := sModel.Update()
	if e != nil {
		app.Error(c, 200, e, "")
		return
	}

	if a.Logo != "" {
		if !strings.HasPrefix(a.Logo, "http") {
			a.Logo = fmt.Sprintf("http://%s/%s", c.Request.Host, a.Logo)
		}
	}

	app.OK(c, a, "提交成功")

}

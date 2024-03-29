package dict

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/gin-gonic/gin/binding"

	"go-admin/models/system"
	"go-admin/tools"
	"go-admin/tools/app"
)

// @Summary 字典类型列表数据
// @Description 获取JSON
// @Tags 字典类型
// @Param dictName query string false "dictName"
// @Param dictId query string false "dictId"
// @Param dictType query string false "dictType"
// @Param pageSize query int false "页条数"
// @Param pageIndex query int false "页码"
// @Success 200 {object} app.Response "{"code": 200, "data": [...]}"
// @Router /api/v1/dict/type/list [get]
// @Security Bearer
func GetDictTypeList(c *gin.Context) {
	var data system.DictType
	var err error
	var pageSize = 10
	var pageIndex = 1

	if size := c.Request.FormValue("pageSize"); size != "" {
		pageSize = tools.StrToInt(err, size)
	}

	if index := c.Request.FormValue("pageIndex"); index != "" {
		pageIndex = tools.StrToInt(err, index)
	}

	data.DictName = c.Request.FormValue("dictName")
	id := c.Request.FormValue("dictId")
	data.DictId, _ = tools.StringToInt(id)
	data.DictType = c.Request.FormValue("dictType")
	data.DataScope = tools.GetUserIdStr(c)
	result, count, err := data.GetPage(pageSize, pageIndex)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	var mp = make(map[string]interface{}, 3)
	mp["list"] = result
	mp["count"] = count
	mp["pageIndex"] = pageIndex
	mp["pageSize"] = pageSize

	var res app.Response
	res.Data = mp
	c.JSON(http.StatusOK, res.ReturnOK())
}

// @Summary 通过字典id获取字典类型
// @Description 获取JSON
// @Tags 字典类型
// @Param dictId path int true "字典类型编码"
// @Success 200 {object} app.Response "{"code": 200, "data": [...]}"
// @Router /api/v1/dict/type/{dictId} [get]
// @Security Bearer
func GetDictType(c *gin.Context) {
	var DictType system.DictType
	DictType.DictName = c.Request.FormValue("dictName")
	DictType.DictId, _ = tools.StringToInt(c.Param("dictId"))
	result, err := DictType.Get()
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}
	var res app.Response
	res.Data = result
	c.JSON(http.StatusOK, res.ReturnOK())
}

func GetDictTypeOptionSelect(c *gin.Context) {
	var DictType system.DictType
	DictType.DictName = c.Request.FormValue("dictName")
	DictType.DictId, _ = tools.StringToInt(c.Param("dictId"))
	result, err := DictType.GetList()
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}
	var res app.Response
	res.Data = result
	c.JSON(http.StatusOK, res.ReturnOK())
}

// @Summary 添加字典类型
// @Description 获取JSON
// @Tags 字典类型
// @Accept  application/json
// @Product application/json
// @Param data body models.DictType true "data"
// @Success 200 {string} string	"{"code": 200, "message": "添加成功"}"
// @Success 200 {string} string	"{"code": -1, "message": "添加失败"}"
// @Router /api/v1/dict/type [post]
// @Security Bearer
func InsertDictType(c *gin.Context) {
	var data system.DictType
	err := c.BindWith(&data, binding.JSON)
	data.CreateBy = tools.GetUserIdStr(c)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}
	result, err := data.Create()
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}
	var res app.Response
	res.Data = result
	c.JSON(http.StatusOK, res.ReturnOK())
}

// @Summary 修改字典类型
// @Description 获取JSON
// @Tags 字典类型
// @Accept  application/json
// @Product application/json
// @Param data body models.DictType true "body"
// @Success 200 {string} string	"{"code": 200, "message": "添加成功"}"
// @Success 200 {string} string	"{"code": -1, "message": "添加失败"}"
// @Router /api/v1/dict/type [put]
// @Security Bearer
func UpdateDictType(c *gin.Context) {
	var data system.DictType
	err := c.BindWith(&data, binding.JSON)
	data.UpdateBy = tools.GetUserIdStr(c)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}
	result, err := data.Update(data.DictId)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}
	var res app.Response
	res.Data = result
	c.JSON(http.StatusOK, res.ReturnOK())
}

// @Summary 删除字典类型
// @Description 删除数据
// @Tags 字典类型
// @Param dictId path int true "dictId"
// @Success 200 {string} string	"{"code": 200, "message": "删除成功"}"
// @Success 200 {string} string	"{"code": -1, "message": "删除失败"}"
// @Router /api/v1/dict/type/{dictId} [delete]
func DeleteDictType(c *gin.Context) {
	var data system.DictType
	data.UpdateBy = tools.GetUserIdStr(c)
	IDS := tools.IdsStrToIdsIntGroup("dictId", c)
	result, err := data.BatchDelete(IDS)
	tools.HasError(err, "修改失败", 500)
	app.OK(c, result, "删除成功")
}

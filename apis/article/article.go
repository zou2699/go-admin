package article

import (
	"github.com/gin-gonic/gin"
	"github.com/gin-gonic/gin/binding"

	"go-admin/models/article"
	"go-admin/tools"
	"go-admin/tools/app"
	"go-admin/tools/app/msg"
)

func GetArticleList(c *gin.Context) {
	var data article.Article
	var err error
	var pageSize = 10
	var pageIndex = 1

	if size := c.Request.FormValue("pageSize"); size != "" {
		pageSize = tools.StrToInt(err, size)
	}
	if index := c.Request.FormValue("pageIndex"); index != "" {
		pageIndex = tools.StrToInt(err, index)
	}

	data.ArticleId, _ = tools.StringToInt(c.Request.FormValue("articleId"))
	data.Author = c.Request.FormValue("author")
	data.Title = c.Request.FormValue("title")

	data.DataScope = tools.GetUserIdStr(c)
	result, count, err := data.GetPage(pageSize, pageIndex)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.PageOK(c, result, count, pageIndex, pageSize, "")
}

func GetArticle(c *gin.Context) {
	var data article.Article
	data.ArticleId, _ = tools.StringToInt(c.Param("articleId"))
	result, err := data.Get()
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, result, "")
}

func InsertArticle(c *gin.Context) {
	var data article.Article
	err := c.ShouldBindJSON(&data)
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
	app.OK(c, result, "")
}

func UpdateArticle(c *gin.Context) {
	var data article.Article
	err := c.BindWith(&data, binding.JSON)
	tools.HasError(err, "数据解析失败", -1)
	data.UpdateBy = tools.GetUserIdStr(c)
	result, err := data.Update(data.ArticleId)
	if err != nil {
		app.Error(c, -1, err, "")
		return
	}

	app.OK(c, result, "")
}

func DeleteArticle(c *gin.Context) {
	var data article.Article
	data.UpdateBy = tools.GetUserIdStr(c)

	IDS := tools.IdsStrToIdsIntGroup("articleId", c)
	_, err := data.BatchDelete(IDS)
	if err != nil {
		app.Error(c, -1, err, msg.DeletedFail)
		return
	}
	app.OK(c, nil, msg.DeletedSuccess)
}

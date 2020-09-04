package main

import (
	"log"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"

	"go-admin/global"
	mycasbin "go-admin/pkg/casbin"
	"go-admin/pkg/logger"
	"go-admin/router"
)

func main() {
	var err error
	global.DB, err = gorm.Open("mysql", "zouhl:passw0rd@tcp/go_admin_dev?charset=utf8&parseTime=True&loc=Local")
	if err != nil {
		panic(err)
	}
	mycasbin.Setup()
	logger.Setup()
	global.GinEngine = gin.Default()
	router.InitRouter()
	log.Fatal(global.GinEngine.Run(":8000"))
}

package database

import (
	_ "github.com/go-sql-driver/mysql" // 加载mysql
	"github.com/jinzhu/gorm"

	"go-admin/global"
	"go-admin/tools"
	"go-admin/tools/config"
)

type Mysql struct {
}

func (e *Mysql) Setup() {
	var err error
	var db Database

	db = new(Mysql)
	source := db.GetConnect()
	global.Logger.Info(tools.Green(source))
	global.DB, err = db.Open(db.GetDriver(), db.GetConnect())
	if err != nil {
		global.Logger.Fatal(tools.Red(db.GetDriver()+" connect error :"), err)
	} else {
		global.Logger.Info(tools.Green(db.GetDriver() + " connect success !"))
	}

	if global.DB.Error != nil {
		global.Logger.Fatal(tools.Red(" database error :"), global.DB.Error)
	}
	if db.GetDebugModel() {
		global.Logger.Debug("enabled gorm debug model")
		global.DB.LogMode(db.GetDebugModel())
	}
}

// 打开数据库连接
func (e *Mysql) Open(dbType string, conn string) (db *gorm.DB, err error) {
	return gorm.Open(dbType, conn)
}

// 获取数据库连接
func (e *Mysql) GetConnect() string {
	return config.DatabaseConfig.Source
}

func (e *Mysql) GetDriver() string {
	return config.DatabaseConfig.Driver
}

func (e *Mysql) GetDebugModel() bool {
	return config.DatabaseConfig.Debug
}

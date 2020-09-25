package database

import (
	_ "github.com/go-sql-driver/mysql" // 加载mysql
	"github.com/jinzhu/gorm"
	"go.uber.org/zap"

	"go-admin/global"
	"go-admin/tools/config"
)

type Mysql struct {
}

func (e *Mysql) Setup() {
	var err error
	var db Database

	db = new(Mysql)
	source := db.GetConnect()
	global.Logger.Debug(source)
	global.DB, err = db.Open(db.GetDriver(), db.GetConnect())
	if err != nil {
		global.Logger.Error(db.GetDriver()+" connect error", zap.Error(err))
	} else {
		global.Logger.Info(db.GetDriver() + " connect success!")
	}

	if global.DB.Error != nil {
		global.Logger.Fatal("database error", zap.Error(global.DB.Error))
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

package database

import (
	_ "github.com/go-sql-driver/mysql" // 加载mysql
	"github.com/jinzhu/gorm"

	"go-admin/global"
	"go-admin/tools/config"
)

type Mysql struct {
}

func (e *Mysql) Setup() {
	var err error
	var db Database
	var log = global.Sugar.Named("database")

	db = new(Mysql)
	source := db.GetConnect()
	log.Debugf("source: %s", source)

	global.DB, err = db.Open(db.GetDriver(), db.GetConnect())
	if err != nil {
		log.Fatalf("%s connect error, %s", db.GetDriver(), err)
	} else {
		log.Infof("%s connect success!", db.GetDriver())
	}

	if global.DB.Error != nil {
		log.Fatalf("database error %s", global.DB.Error)
	}

	if db.GetDebugMode() {
		log.Debug("enabled gorm debug mode")
		global.DB.LogMode(db.GetDebugMode())
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

// 获取数据类型
func (e *Mysql) GetDriver() string {
	return config.DatabaseConfig.Driver
}

// 是否开启 gorm debug mode
func (e *Mysql) GetDebugMode() bool {
	return config.DatabaseConfig.Debug
}

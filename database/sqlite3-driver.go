// +build sqlite3

package database

import (
	"log"

	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/sqlite"

	"go-admin/global"
	"go-admin/tools/config"
)

type SqLite struct {
}

func (e *SqLite) Setup() {
	var err error
	var db Database

	db = new(SqLite)
	source := db.GetConnect()
	global.Logger.Info(tools.Green(source))
	global.DB, err = db.Open(db.GetDriver(), db.GetConnect())

	if err != nil {
		log.Fatalf("%s connect error %v", db.GetDriver(), err)
	} else {
		log.Printf("%s connect success!", db.GetDriver())
	}

	if global.DB.Error != nil {
		log.Fatalf("database error %v", global.DB.Error)
	}

	if db.GetDebugModel() {
		global.Logger.Debug("enabled gorm debug model")
		global.DB.LogMode(db.GetDebugModel())
	}
}

// 打开数据库连接
func (*SqLite) Open(dbType string, conn string) (db *gorm.DB, err error) {
	eloquent, err := gorm.Open(dbType, conn)
	return eloquent, err
}

func (e *SqLite) GetConnect() string {
	return config.DatabaseConfig.Source
}

func (e *SqLite) GetDriver() string {
	return config.DatabaseConfig.Driver
}

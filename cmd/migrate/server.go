package migrate

import (
	"go-admin/database"
	"go-admin/global"
	"go-admin/models/gorm"
	"go-admin/models/system"
	"go-admin/pkg/logger"
	"go-admin/tools/config"

	"github.com/spf13/cobra"
)

var (
	configYml string
	mode      string
	StartCmd  = &cobra.Command{
		Use:     "init",
		Short:   "Initialize the database",
		Example: "go-admin init -c config/settings.yml",
		Run: func(cmd *cobra.Command, args []string) {
			run()
		},
	}
)

func init() {
	StartCmd.PersistentFlags().StringVarP(&configYml, "config", "c", "config/settings.yml", "Start server with provided configuration file")
	StartCmd.PersistentFlags().StringVarP(&mode, "mode", "m", "dev", "server mode ; eg:dev,test,prod")
}

func run() {
	var log = global.Sugar.Named("migrate")
	usage := `start init`
	log.Info(usage)
	// 1. 读取配置
	config.Setup(configYml)
	// 2. 设置日志
	logger.Setup(config.LoggerConfig.Mode)
	// 3. 初始化数据库链接
	database.Setup(config.DatabaseConfig.Driver)
	// 4. 数据库迁移
	_ = migrateModel()
	log.Info("数据库结构初始化成功！")
	// 5. 数据初始化完成
	if err := system.InitDb(); err != nil {
		log.Fatal("数据库基础数据初始化失败！")
	}
	usage = `数据库基础数据初始化成功`
	log.Info(usage)
}

func migrateModel() error {
	if config.DatabaseConfig.Driver == "mysql" {
		global.DB = global.DB.Set("gorm:table_options", "ENGINE=InnoDB CHARSET=utf8mb4")
	}
	return gorm.AutoMigrate(global.DB)
}

package config

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"strings"

	"github.com/spf13/viper"
)

// 数据库配置项
var cfgDatabase *viper.Viper

// 应用配置项
var cfgApplication *viper.Viper

// Token配置项
var cfgJwt *viper.Viper

// Log配置项
var cfgLogger *viper.Viper

// Ssl配置项 非必须
var cfgSsl *viper.Viper

// 代码生成配置项 非必须
var cfgGen *viper.Viper

// k8s 配置
var cfgKubernetes *viper.Viper

// 载入配置文件
func Setup(path string) {
	viper.SetConfigFile(path)
	content, err := ioutil.ReadFile(path)
	if err != nil {
		log.Fatal(fmt.Sprintf("Read config file fail: %s", err.Error()))
	}

	// Replace environment variables
	err = viper.ReadConfig(strings.NewReader(os.ExpandEnv(string(content))))
	if err != nil {
		log.Fatal(fmt.Sprintf("Parse config file fail: %s", err.Error()))
	}

	cfgDatabase = viper.Sub("settings.database")
	if cfgDatabase == nil {
		panic("Not found settings.database in the configuration")
	}
	DatabaseConfig = InitDatabase(cfgDatabase)

	cfgApplication = viper.Sub("settings.application")
	if cfgApplication == nil {
		panic("Not found settings.application in the configuration")
	}
	ApplicationConfig = InitApplication(cfgApplication)

	cfgJwt = viper.Sub("settings.jwt")
	if cfgJwt == nil {
		panic("Not found settings.jwt in the configuration")
	}
	JwtConfig = InitJwt(cfgJwt)

	cfgLogger = viper.Sub("settings.logger")
	if cfgLogger == nil {
		panic("Not found settings.logger in the configuration")
	}
	LoggerConfig = InitLog(cfgLogger)

	cfgGen = viper.Sub("settings.gen")
	if cfgGen == nil {
		panic("Not found settings.gen")
	}
	GenConfig = InitGen(cfgGen)

	cfgKubernetes = viper.Sub("settings.kubernetes")
	if cfgKubernetes == nil {
		panic("Not found settings.kubernetes in the configuration")
	}
	KubernetesConfig = InitKubernetes(cfgKubernetes)
}

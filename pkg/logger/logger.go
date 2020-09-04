package logger

import (
	"github.com/gogf/gf/os/glog"

	"go-admin/global"
	"go-admin/tools/config"
)

const (
	green   = "\033[97;42m"
	white   = "\033[90;47m"
	yellow  = "\033[90;43m"
	red     = "\033[97;41m"
	blue    = "\033[97;44m"
	magenta = "\033[97;45m"
	cyan    = "\033[97;46m"
	reset   = "\033[0m"
)

var Logger *glog.Logger

func Setup() {
	Logger = glog.New()
	Logger.SetPrefix("\u001B[97;42m SYS \u001B[0m")
	Logger.SetFlags(glog.F_FILE_SHORT)
	_ = Logger.SetLevelStr(config.LoggerConfig.Level)

	Logger.Info("Logger init success!")

	global.Logger = Logger.Stdout()
}

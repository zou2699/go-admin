package config

import "github.com/spf13/viper"

type Logger struct {
	Mode      string
	EnabledDB bool
	// EnabledJOB bool `default:"false"`
}

func InitLog(cfg *viper.Viper) *Logger {
	return &Logger{
		Mode:      cfg.GetString("mode"),
		EnabledDB: cfg.GetBool("enableddb"),
		// EnabledJOB: cfg.GetBool("enabledjob"),
	}
}

var LoggerConfig = new(Logger)

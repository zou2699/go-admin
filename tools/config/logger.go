package config

import "github.com/spf13/viper"

type Logger struct {
	Model     string
	EnabledDB bool
	// EnabledJOB bool `default:"false"`
}

func InitLog(cfg *viper.Viper) *Logger {
	return &Logger{
		Model:     cfg.GetString("model"),
		EnabledDB: cfg.GetBool("enableddb"),
		// EnabledJOB: cfg.GetBool("enabledjob"),
	}
}

var LoggerConfig = new(Logger)

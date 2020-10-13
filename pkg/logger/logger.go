package logger

import (
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"

	"go-admin/global"
)

func Setup(model string) {
	var logger *zap.Logger
	switch model {
	case "dev":
		logger, _ = zap.NewDevelopment()
	case "prod":
		config := zap.NewProductionConfig()
		config.EncoderConfig.EncodeTime = zapcore.ISO8601TimeEncoder
		logger, _ = config.Build()
	default:
		logger, _ = zap.NewDevelopment()
	}
	zap.AddCaller()
	global.Logger = logger
	global.Sugar = logger.Sugar()
}

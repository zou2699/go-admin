package config

import "github.com/spf13/viper"

type Database struct {
	Driver string
	Source string
	Debug  bool
}

func InitDatabase(cfg *viper.Viper) *Database {

	db := &Database{
		Driver: cfg.GetString("driver"),
		Source: cfg.GetString("source"),
		Debug:  cfg.GetBool("debug"),
	}
	return db
}

var DatabaseConfig = new(Database)

package config

import "github.com/spf13/viper"

type Kubernetes struct {
	Path string
}

func InitKubernetes(cfg *viper.Viper) *Kubernetes {
	kubernetes := &Kubernetes{
		Path: cfg.GetString("path"),
	}
	return kubernetes
}

var KubernetesConfig = new(Kubernetes)

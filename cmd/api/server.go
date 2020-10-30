package api

import (
	"context"
	"net/http"
	"os"
	"os/signal"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/spf13/cobra"
	"github.com/spf13/viper"

	"go-admin/database"
	"go-admin/global"
	"go-admin/pkg/cache"
	mycasbin "go-admin/pkg/casbin"
	"go-admin/pkg/client/kubernetes"
	"go-admin/pkg/client/prometheus"
	"go-admin/pkg/logger"
	"go-admin/router"
	"go-admin/tools"
	"go-admin/tools/config"
)

var (
	configYml string
	StartCmd  = &cobra.Command{
		Use:          "server",
		Short:        "Start API server",
		Example:      "go-admin server -c config/settings.yml",
		SilenceUsage: true,
		PreRun: func(cmd *cobra.Command, args []string) {
			setup()
		},
		RunE: func(cmd *cobra.Command, args []string) error {
			return run()
		},
	}
)

func init() {
	StartCmd.PersistentFlags().StringVarP(&configYml, "config", "c", "config/settings.yml", "Start server with provided configuration file")
}

func setup() {
	// 1. 读取配置
	config.Setup(configYml)
	// 2. 设置日志
	logger.Setup(config.LoggerConfig.Mode)
	// 3. 初始化数据库链接
	database.Setup(config.DatabaseConfig.Driver)
	// 4. 接口访问控制加载
	mycasbin.Setup()
	// 5. 初始化k8sClient
	kubernetes.Setup(config.KubernetesConfig.Path)
	kubernetes.SetupTerminal()

	// 6. 初始化缓存
	cache.InitCache()
	//
	prometheus.Setup("http://10.6.64.131:31182")

	global.Sugar.Named("init").Debug("successful setup")
}

func run() error {
	var log = global.Sugar.Named("init")
	if viper.GetString("settings.application.mode") == string(tools.ModeProd) {
		gin.SetMode(gin.ReleaseMode)
	}
	version, _ := global.K8sClient.ServerVersion()
	log.Infof("remote kubernetes version: %s", version)

	log.Infof("gin running in %s mode", viper.GetString("settings.application.mode"))

	r := router.InitRouter()
	defer global.DB.Close()

	srv := &http.Server{
		Addr:    config.ApplicationConfig.Host + ":" + config.ApplicationConfig.Port,
		Handler: r,
	}

	go func() {
		// 服务连接
		if err := srv.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			log.Fatal("listen: ", err)
		}
	}()

	log.Infof("Server Run http://%s:%s/",
		config.ApplicationConfig.Host,
		config.ApplicationConfig.Port)
	log.Infof("Swagger URL http://%s:%s/swagger/index.html",
		config.ApplicationConfig.Host,
		config.ApplicationConfig.Port)

	log.Infof("Enter Control + C Shutdown Server")

	// 等待中断信号以优雅地关闭服务器（设置 5 秒的超时时间）
	quit := make(chan os.Signal)
	signal.Notify(quit, os.Interrupt)
	<-quit
	log.Infof("Shutdown Server ...")

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	if err := srv.Shutdown(ctx); err != nil {
		log.Fatalf("Server Shutdown: %s", err)
	}
	log.Info("Server exiting")

	return nil
}

package api

import (
	"context"
	"fmt"
	"net/http"
	"os"
	"os/signal"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/spf13/cobra"
	"github.com/spf13/viper"
	"go.uber.org/zap"

	"go-admin/database"
	"go-admin/global"
	mycasbin "go-admin/pkg/casbin"
	"go-admin/pkg/kubernetes/client"
	"go-admin/pkg/logger"
	"go-admin/router"
	"go-admin/tools"
	"go-admin/tools/config"
)

var (
	configYml string
	port      string
	mode      string
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
	StartCmd.PersistentFlags().StringVarP(&port, "port", "p", "8000", "Tcp port server listening on")
	StartCmd.PersistentFlags().StringVarP(&mode, "mode", "m", "dev", "server mode ; eg:dev,test,prod")
}

func setup() {

	// 1. 读取配置
	config.Setup(configYml)
	// 2. 设置日志
	logger.Setup(config.LoggerConfig.Model)
	// 3. 初始化数据库链接
	database.Setup(config.DatabaseConfig.Driver)
	// 4. 接口访问控制加载
	mycasbin.Setup()
	// 5. 初始化k8sClient
	client.Setup(config.KubernetesConfig.Path)
	usageStr := `starting api server`
	global.Logger.Info(usageStr)

}

func run() error {
	if viper.GetString("settings.application.mode") == string(tools.ModeProd) {
		gin.SetMode(gin.ReleaseMode)
	}

	r := router.InitRouter()
	defer global.DB.Close()

	srv := &http.Server{
		Addr:    config.ApplicationConfig.Host + ":" + config.ApplicationConfig.Port,
		Handler: r,
	}
	go func() {
		// jobs.InitJob()
		// jobs.Setup()

	}()

	go func() {
		// 服务连接
		if config.SslConfig.Enable {
			if err := srv.ListenAndServeTLS(config.SslConfig.Pem, config.SslConfig.KeyStr); err != nil && err != http.ErrServerClosed {
				global.Logger.Fatal("listen: ", zap.Error(err))
			}
		} else {
			if err := srv.ListenAndServe(); err != nil && err != http.ErrServerClosed {
				global.Logger.Fatal("listen: ", zap.Error(err))
			}
		}
	}()
	// content, _ := ioutil.ReadFile("./static/go-admin.txt")
	// fmt.Println(tools.Red(string(content)))
	// tip()
	fmt.Println(tools.Green("Server run at:"))
	fmt.Printf("-  Local:   http://localhost:%s/ \r\n", config.ApplicationConfig.Port)
	fmt.Printf("-  Network: http://%s:%s/ \r\n", tools.GetLocaHonst(), config.ApplicationConfig.Port)
	fmt.Println(tools.Green("Swagger run at:"))
	fmt.Printf("-  Local:   http://localhost:%s/swagger/index.html \r\n", config.ApplicationConfig.Port)
	fmt.Printf("-  Network: http://%s:%s/swagger/index.html \r\n", tools.GetLocaHonst(), config.ApplicationConfig.Port)
	fmt.Printf("%s Enter Control + C Shutdown Server \r\n", tools.GetCurrentTimeStr())
	// 等待中断信号以优雅地关闭服务器（设置 5 秒的超时时间）
	version, _ := global.K8sClient.ServerVersion()
	fmt.Println("kubernetes version: ", version)
	quit := make(chan os.Signal)
	signal.Notify(quit, os.Interrupt)
	<-quit
	fmt.Printf("%s Shutdown Server ... \r\n", tools.GetCurrentTimeStr())

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	if err := srv.Shutdown(ctx); err != nil {
		global.Logger.Fatal("Server Shutdown:", zap.Error(err))
	}
	global.Logger.Info("Server exiting")

	return nil
}

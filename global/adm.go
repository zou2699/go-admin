package global

import (
	"github.com/allegro/bigcache"
	"github.com/casbin/casbin/v2"
	"github.com/jinzhu/gorm"
	v1 "github.com/prometheus/client_golang/api/prometheus/v1"
	"go.uber.org/zap"
	"istio.io/client-go/pkg/clientset/versioned"
	"k8s.io/client-go/kubernetes"
	"k8s.io/client-go/rest"

	jwt "go-admin/pkg/jwtauth"
	"go-admin/pkg/terminal"
)

// go-admin Version Info
// var Version = "1.1.5"

var CasbinEnforcer *casbin.SyncedEnforcer

var DB *gorm.DB

var Logger *zap.Logger
var Sugar *zap.SugaredLogger

var Jwt *jwt.GinJWTMiddleware

// k8s client
var K8sClient *kubernetes.Clientset
var K8sConfig *rest.Config
var IstioClient *versioned.Clientset
var K8sTerminal terminal.Interface

// cache
var Cache *bigcache.BigCache

// prometheus client
var PrometheusClient v1.API

package global

import (
	"github.com/allegro/bigcache"
	"github.com/casbin/casbin/v2"
	"github.com/jinzhu/gorm"
	v1 "github.com/prometheus/client_golang/api/prometheus/v1"
	"go.uber.org/zap"
	"istio.io/client-go/pkg/clientset/versioned"
	"k8s.io/client-go/kubernetes"

	jwt "go-admin/pkg/jwtauth"
)

// go-admin Version Info
var Version = "1.1.5"

var CasbinEnforcer *casbin.SyncedEnforcer

var DB *gorm.DB

var Logger *zap.Logger
var Sugar *zap.SugaredLogger

var Jwt *jwt.GinJWTMiddleware

// k8s client
var K8sClient *kubernetes.Clientset

var IstioClient *versioned.Clientset

// cache
var Cache *bigcache.BigCache

// prometheus client
var PrometheusClient v1.API

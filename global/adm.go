package global

import (
	"github.com/casbin/casbin/v2"
	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	"go.uber.org/zap"
	"istio.io/client-go/pkg/clientset/versioned"
	"k8s.io/client-go/kubernetes"
)

// go-admin Version Info
var Version = "1.1.5"

var GinEngine *gin.Engine

var CasbinEnforcer *casbin.SyncedEnforcer

var DB *gorm.DB

var Logger *zap.Logger

// k8s client
var K8sClient *kubernetes.Clientset

var IstioClient *versioned.Clientset

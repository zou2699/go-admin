package global

import (
	"github.com/casbin/casbin/v2"
	"github.com/jinzhu/gorm"
	"go.uber.org/zap"
	"istio.io/client-go/pkg/clientset/versioned"
	"k8s.io/client-go/kubernetes"
)

// go-admin Version Info
var Version = "1.1.5"

var CasbinEnforcer *casbin.SyncedEnforcer

var DB *gorm.DB

var Logger *zap.Logger
var Sugar *zap.SugaredLogger

// k8s client
var K8sClient *kubernetes.Clientset

var IstioClient *versioned.Clientset

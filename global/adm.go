package global

import (
	"github.com/casbin/casbin/v2"
	"github.com/gin-gonic/gin"
	"github.com/gogf/gf/os/glog"
	"github.com/jinzhu/gorm"
)

// go-admin Version Info
var Version = "1.1.5"

var GinEngine *gin.Engine

var CasbinEnforcer *casbin.SyncedEnforcer

var DB *gorm.DB

var Logger *glog.Logger

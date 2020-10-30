/*
@Time : 2020/10/12 14:59
@Author : Tux
@Description :
*/

package dashboard

import (
	"context"
	"encoding/json"

	"github.com/allegro/bigcache"
	"github.com/gin-gonic/gin"
	v1 "github.com/prometheus/client_golang/api/prometheus/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
	"go-admin/models/system"
	"go-admin/pkg/service"
	"go-admin/tools"
	"go-admin/tools/app"
)

func InitData(c *gin.Context) {
	var err error
	var dashboardData = make(map[string]interface{})
	var cacheKey = tools.GetUserIdStr(c) + "dashboardData"
	dashboardDataBytes, err := global.Cache.Get(cacheKey)
	if err == nil {
		err = json.Unmarshal(dashboardDataBytes, &dashboardData)
		if err != nil {
			app.Error(c, -1, err, "")
		}
		app.OK(c, dashboardData, "from cache")
		return
	}

	if err != bigcache.ErrEntryNotFound {
		app.Error(c, -1, err, "")
	}

	var panelGroup struct {
		SysUserCount    int `json:"sys_user_count"`
		SysLoginCount   int `json:"sys_login_count"`
		K8sNodeCount    int `json:"k8s_node_count"`
		K8sPodCount     int `json:"k8s_pod_count"`
		PromFiringCount int `json:"prom_firing_count"`
	}

	// 用户数
	err = global.DB.Model(&system.SysUser{}).Count(&panelGroup.SysUserCount).Error
	if err != nil {
		app.Error(c, -1, err, "")
	}

	// 登录成功数
	err = global.DB.Model(&system.LoginLog{}).Where("msg = ?", "登录成功").Count(&panelGroup.SysLoginCount).Error
	if err != nil {
		app.Error(c, -1, err, "")
	}

	// node数
	nodeList, err := global.K8sClient.CoreV1().Nodes().List(metav1.ListOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
	}
	panelGroup.K8sNodeCount = len(nodeList.Items)

	// pod数
	podList, err := global.K8sClient.CoreV1().Pods(metav1.NamespaceAll).List(metav1.ListOptions{})
	if err != nil {
		app.Error(c, -1, err, "")
	}
	panelGroup.K8sPodCount = len(podList.Items)

	podRankingData, err := service.PodRanking()
	if err != nil {
		app.Error(c, -1, err, "")
	}

	// 报警数
	alerts, err := global.PrometheusClient.Alerts(context.Background())
	if err != nil {
		app.Error(c, -1, err, "")
	}
	for _, alert := range alerts.Alerts {
		if alert.State == v1.AlertStateFiring {
			panelGroup.PromFiringCount++
		}
	}

	dashboardData["panelGroup"] = panelGroup
	dashboardData["podRankingData"] = podRankingData

	// 缓存
	result, err := json.Marshal(dashboardData)
	if err != nil {
		app.Error(c, -1, err, "")
	}
	err = global.Cache.Set(cacheKey, result)
	if err != nil {
		app.Error(c, -1, err, "")
	}

	app.OK(c, dashboardData, "")
}

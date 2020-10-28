/*
@Time : 2020/10/23 15:22
@Author : Tux
@Description :
*/

package prometheus

import (
	"github.com/prometheus/client_golang/api"
	v1 "github.com/prometheus/client_golang/api/prometheus/v1"

	"go-admin/global"
)

func Setup(endpoint string) {

	client, err := api.NewClient(api.Config{
		Address: endpoint,
	})
	if err != nil {
		panic(err)
	}
	v1api := v1.NewAPI(client)

	global.PrometheusClient = v1api
}

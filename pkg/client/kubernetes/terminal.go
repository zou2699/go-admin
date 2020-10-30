/*
@Time : 2020/10/30 14:35
@Author : Tux
@Description :
*/

package kubernetes

import (
	"go-admin/global"
	"go-admin/pkg/terminal"
)

func SetupTerminal() {
	global.K8sTerminal = terminal.NewTerminaler(global.K8sClient, global.K8sConfig)
}

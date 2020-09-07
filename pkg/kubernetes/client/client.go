/*
@Time : 2020/9/7 09:36
@Author : Tux
@Description :
*/

package client

import (
	"k8s.io/client-go/kubernetes"
	"k8s.io/client-go/tools/clientcmd"

	"go-admin/global"
)

func Setup(kubeconfigPath string) {
	config, err := clientcmd.BuildConfigFromFlags("", kubeconfigPath)
	if err != nil {
		panic(err)
	}

	global.K8sClient, err = kubernetes.NewForConfig(config)
	if err != nil {
		panic(err)
	}
}

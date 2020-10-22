/*
@Time : 2020/10/21 15:50
@Author : Tux
@Description :
*/

package service

import (
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

	"go-admin/global"
)

// PodRanking 首页 pod 排名
func PodRanking() (podRankingData map[string][]interface{}, err error) {

	namespaceList, err := global.K8sClient.CoreV1().Namespaces().List(metav1.ListOptions{})
	if err != nil {
		return nil, err
	}

	podRankingData = make(map[string][]interface{})
	for _, namespace := range namespaceList.Items {
		podRankingData["namespaces"] = append(podRankingData["namespaces"], namespace.Name)
		podList, err := global.K8sClient.CoreV1().Pods(namespace.Name).List(metav1.ListOptions{})
		if err != nil {
			return nil, err
		}
		podRankingData["pods"] = append(podRankingData["pods"], len(podList.Items))
	}
	return podRankingData, nil
}

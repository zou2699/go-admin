/*
@Time : 2020/10/21 16:43
@Author : Tux
@Description :
*/

package cache

import (
	"time"

	"github.com/allegro/bigcache"

	"go-admin/global"
)

func InitCache() {
	config := bigcache.Config{
		Shards: 1024,
		// LifeWindow:  2 * time.Second,
		CleanWindow: 120 * time.Second,
	}
	cache, err := bigcache.NewBigCache(config)
	if err != nil {
		panic(err)
	}
	global.Cache = cache
}

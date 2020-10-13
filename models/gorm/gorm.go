package gorm

import (
	"github.com/jinzhu/gorm"

	"go-admin/models/system"
)

func AutoMigrate(db *gorm.DB) error {
	db.SingularTable(true)
	return db.AutoMigrate(
		new(system.CasbinRule),
		new(system.SysDept),
		new(system.SysConfig),
		new(system.Menu),
		new(system.LoginLog),
		new(system.SysOperLog),
		new(system.RoleMenu),
		new(system.SysRoleDept),
		new(system.SysUser),
		new(system.SysRole),
		new(system.Post),
		new(system.SysConfig),
		new(system.SysSetting),

		new(system.DictData),
		new(system.DictType),
	).Error
}

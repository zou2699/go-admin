/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : go_admin_dev

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 03/09/2020 14:31:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_tables
-- ----------------------------
DROP TABLE IF EXISTS `sys_tables`;
CREATE TABLE `sys_tables`
(
    `table_id`              int       NOT NULL AUTO_INCREMENT,
    `table_name`            varchar(255)   DEFAULT NULL,
    `table_comment`         varchar(255)   DEFAULT NULL,
    `class_name`            varchar(255)   DEFAULT NULL,
    `tpl_category`          varchar(255)   DEFAULT NULL,
    `package_name`          varchar(255)   DEFAULT NULL,
    `module_name`           varchar(255)   DEFAULT NULL,
    `business_name`         varchar(255)   DEFAULT NULL,
    `function_name`         varchar(255)   DEFAULT NULL,
    `function_author`       varchar(255)   DEFAULT NULL,
    `pk_column`             varchar(255)   DEFAULT NULL,
    `pk_go_field`           varchar(255)   DEFAULT NULL,
    `pk_json_field`         varchar(255)   DEFAULT NULL,
    `options`               varchar(255)   DEFAULT NULL,
    `tree_code`             varchar(255)   DEFAULT NULL,
    `tree_parent_code`      varchar(255)   DEFAULT NULL,
    `tree_name`             varchar(255)   DEFAULT NULL,
    `tree`                  tinyint(1)     DEFAULT NULL,
    `crud`                  tinyint(1)     DEFAULT NULL,
    `remark`                varchar(255)   DEFAULT NULL,
    `is_logical_delete`     varchar(1)     DEFAULT NULL,
    `logical_delete`        tinyint(1)     DEFAULT NULL,
    `logical_delete_column` varchar(128)   DEFAULT NULL,
    `create_by`             varchar(128)   DEFAULT NULL,
    `update_by`             varchar(128)   DEFAULT NULL,
    `created_at`            timestamp NULL DEFAULT NULL,
    `updated_at`            timestamp NULL DEFAULT NULL,
    `deleted_at`            timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`table_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;

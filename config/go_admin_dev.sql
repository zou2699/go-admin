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

 Date: 21/09/2020 10:16:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int NOT NULL AUTO_INCREMENT COMMENT '编码',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `author` varchar(128) DEFAULT NULL COMMENT '作者',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `status` int DEFAULT NULL COMMENT '状态',
  `publish_at` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `idx_article_deleted_at` (`deleted_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章';

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES (1, 'test 1111', 'zouhl', 'nidhfidndlskfhiojoewqjroiqwe', 1, '2020-09-03 14:55:00', '2020-09-03 14:55:21', '2020-09-14 14:28:08', NULL, '1', '1');
INSERT INTO `article` VALUES (2, '5', 'qwer', 'qwer', 2, '2020-09-03 16:16:35', '2020-09-03 16:16:43', '2020-09-03 16:16:43', NULL, '1', '');
INSERT INTO `article` VALUES (3, '54322', 'wo ', '3123123', 5, '2020-09-03 16:27:01', '2020-09-03 16:27:06', '2020-09-03 16:27:06', '2020-09-04 09:29:10', '3', '');
INSERT INTO `article` VALUES (4, 'dev1', 'dev', 'dev', 12, '2020-09-15 00:00:00', '2020-09-03 16:36:51', '2020-09-04 17:06:47', NULL, '4', '4');
INSERT INTO `article` VALUES (5, '312', '3123', '3121qq', 2, '2020-09-04 10:49:27', '2020-09-04 10:49:31', '2020-09-04 10:56:23', NULL, '1', '1');
INSERT INTO `article` VALUES (6, '21`2`12', '21`2', '2`12', 123, '2020-09-04 17:03:27', '2020-09-04 17:03:38', '2020-09-04 17:03:38', NULL, '4', '');
COMMIT;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule` (
  `p_type` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
BEGIN;
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menulist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUserList', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/profile', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolelist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configList', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menurole', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/deptList', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/datalist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/typelist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/postlist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menuids', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/operloglist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/getinfo', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/deptTree', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/logout', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/syssettingList', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/syssetting/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/syssetting', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/syssetting', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/syssetting/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/articleList', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/article/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/article', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/article', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/article/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/api/v1/nodes', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/api/v1/nodes/:name', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/api/v1/namespaces', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/api/v1/namespaces/:name', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments/:deploymentName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments/:deploymentName', 'PATCH', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/api/v1/namespaces/:namespaceName/services', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/api/v1/namespaces/:namespaceName/services/:serviceName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/gateways', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/gateways/:gatewayName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/virtualservices', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/virtualservices/:virtualServiceName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/serviceentries', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/serviceentries/:serviceEntryName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/destinationrules', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/destinationrules/:destinationRuleName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/api/v1/namespaces/:namespaceName/services/:serviceName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments/:deploymentName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/gateways/:gatewayName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/virtualservices/:virtualServiceName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/serviceentries/:serviceEntryName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/destinationrules/:destinationRuleName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/namespaces/:namespaceName/kind/:kind', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/k8s-api/api/v1/namespaces/:namespaceName/events', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser/', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/profile', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menurole', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menuids', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/getinfo', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/deptTree', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/logout', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/articleList', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/article/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/article', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/article', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/article/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/api/v1/nodes', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/api/v1/nodes/:name', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/api/v1/namespaces', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/api/v1/namespaces/:name', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments/:deploymentName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments/:deploymentName', 'PATCH', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/api/v1/namespaces/:namespaceName/services', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/api/v1/namespaces/:namespaceName/services/:serviceName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/gateways', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/gateways/:gatewayName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/virtualservices', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/virtualservices/:virtualServiceName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/serviceentries', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/serviceentries/:serviceEntryName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/destinationrules', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/destinationrules/:destinationRuleName', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/api/v1/namespaces/:namespaceName/services/:serviceName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments/:deploymentName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/gateways/:gatewayName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/virtualservices/:virtualServiceName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/serviceentries/:serviceEntryName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/destinationrules/:destinationRuleName', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/namespaces/:namespaceName/kind/:kind', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/k8s-api/api/v1/namespaces/:namespaceName/events', 'GET', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_columns
-- ----------------------------
DROP TABLE IF EXISTS `sys_columns`;
CREATE TABLE `sys_columns` (
  `column_id` int NOT NULL AUTO_INCREMENT,
  `table_id` int DEFAULT NULL,
  `column_name` varchar(128) DEFAULT NULL,
  `column_comment` varchar(128) DEFAULT NULL,
  `column_type` varchar(128) DEFAULT NULL,
  `go_type` varchar(128) DEFAULT NULL,
  `go_field` varchar(128) DEFAULT NULL,
  `json_field` varchar(128) DEFAULT NULL,
  `is_pk` varchar(4) DEFAULT NULL,
  `is_increment` varchar(4) DEFAULT NULL,
  `is_required` varchar(4) DEFAULT NULL,
  `is_insert` varchar(4) DEFAULT NULL,
  `is_edit` varchar(4) DEFAULT NULL,
  `is_list` varchar(4) DEFAULT NULL,
  `is_query` varchar(4) DEFAULT NULL,
  `query_type` varchar(128) DEFAULT NULL,
  `html_type` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `list` varchar(1) DEFAULT NULL,
  `pk` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `super_column` tinyint(1) DEFAULT NULL,
  `usable_column` tinyint(1) DEFAULT NULL,
  `increment` tinyint(1) DEFAULT NULL,
  `insert` tinyint(1) DEFAULT NULL,
  `edit` tinyint(1) DEFAULT NULL,
  `query` tinyint(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_By` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_columns
-- ----------------------------
BEGIN;
INSERT INTO `sys_columns` VALUES (1, 1, 'article_id', '编码', 'int', 'int', 'ArticleId', 'articleId', '1', '', '1', '1', '', '1', '1', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
INSERT INTO `sys_columns` VALUES (2, 1, 'author', '作者', 'varchar(128)', 'string', 'Author', 'author', '0', '', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
INSERT INTO `sys_columns` VALUES (3, 1, 'content', '内容', 'varchar(255)', 'string', 'Content', 'content', '0', '', '0', '1', '1', '', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
INSERT INTO `sys_columns` VALUES (4, 1, 'create_by', '', 'varchar(128)', 'string', 'CreateBy', 'createBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
INSERT INTO `sys_columns` VALUES (5, 1, 'created_at', '', 'timestamp', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
INSERT INTO `sys_columns` VALUES (6, 1, 'deleted_at', '', 'timestamp', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
INSERT INTO `sys_columns` VALUES (7, 1, 'publish_at', '发布时间', 'timestamp', 'time.Time', 'PublishAt', 'publishAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
INSERT INTO `sys_columns` VALUES (8, 1, 'status', '状态', 'int', 'string', 'Status', 'status', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
INSERT INTO `sys_columns` VALUES (9, 1, 'title', '标题', 'varchar(128)', 'string', 'Title', 'title', '0', '', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
INSERT INTO `sys_columns` VALUES (10, 1, 'update_by', '', 'varchar(128)', 'string', 'UpdateBy', 'updateBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
INSERT INTO `sys_columns` VALUES (11, 1, 'updated_at', '', 'timestamp', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT,
  `config_name` varchar(128) DEFAULT NULL,
  `config_key` varchar(128) DEFAULT NULL,
  `config_value` varchar(255) DEFAULT NULL,
  `config_type` varchar(64) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys_index_skinName', 'skin-blue', 'Y', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow', '1', '1', '2020-02-29 10:37:48', '2020-04-08 13:03:21', NULL);
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', '初始化密码 123456', '1', '1', '2020-02-29 10:38:23', '2020-03-11 00:35:28', NULL);
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys_index_sideTheme', 'theme-dark', 'Y', '深色主题theme-dark，浅色主题theme-light', '1', '1', '2020-02-29 10:39:01', '2020-09-04 10:35:58', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `dept_path` varchar(255) DEFAULT NULL,
  `dept_name` varchar(128) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `leader` varchar(128) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (1, 0, '/0/1', '阿里巴巴', 0, 'aituo', '13782218188', 'atuo@aituo.com', '0', '1', '1', '2020-02-27 15:30:19', '2020-09-04 16:07:45', NULL);
INSERT INTO `sys_dept` VALUES (7, 1, '/0/1/7', '研发部', 1, '', '', '', '0', '1', '1', '2020-03-08 23:10:59', '2020-04-08 13:00:03', NULL);
INSERT INTO `sys_dept` VALUES (8, 1, '/0/1/8', '运维部', 0, '', '', '', '0', '1', NULL, '2020-03-08 23:11:08', '2020-03-10 16:50:27', NULL);
INSERT INTO `sys_dept` VALUES (9, 1, '/0/1/9', '客服部', 0, '', '', '', '0', '1', NULL, '2020-03-08 23:11:15', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dept` VALUES (10, 1, '/0/1/10', '人力资源', 3, '张三', '', '', '1', '1', '1', '2020-04-07 23:48:38', '2020-04-07 23:48:46', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` int NOT NULL AUTO_INCREMENT,
  `dict_sort` int DEFAULT NULL,
  `dict_label` varchar(128) DEFAULT NULL,
  `dict_value` varchar(255) DEFAULT NULL,
  `dict_type` varchar(64) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `list_class` varchar(128) DEFAULT NULL,
  `is_default` varchar(8) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `default` varchar(8) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 0, '正常', '0', 'sys_normal_disable', '', '', '', '0', '', '1', '', '系统正常', '2020-02-28 20:55:34', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (2, 0, '停用', '1', 'sys_normal_disable', '', '', '', '0', '', '1', '', '系统停用', '2020-02-28 21:10:41', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (3, 0, '男', '0', 'sys_user_sex', '', '', '', '0', '', '1', '', '性别男', '2020-02-28 21:37:28', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (4, 0, '女', '1', 'sys_user_sex', '', '', '', '0', '', '1', '', '性别女', '2020-02-28 21:37:40', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (5, 0, '未知', '2', 'sys_user_sex', '', '', '', '0', '', '1', '', '性别未知', '2020-02-28 21:38:05', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (6, 0, '显示', '0', 'sys_show_hide', '', '', '', '0', '', '1', '', '显示菜单', '2020-02-28 21:38:36', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (7, 0, '隐藏', '1', 'sys_show_hide', '', '', '', '0', '', '1', '', '隐藏菜单', '2020-02-28 21:38:50', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (8, 0, '是', 'Y', 'sys_yes_no', '', '', '', '0', '', '1', '', '系统默认是', '2020-02-28 21:39:40', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (9, 0, '否', 'N', 'sys_yes_no', '', '', '', '0', '', '1', '', '系统默认否', '2020-02-28 21:40:06', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (10, 0, '正常', '2', 'sys_job_status', '', '', '', '0', '', '1', '', '正常状态', '2020-02-28 21:41:02', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (11, 0, '停用', '1', 'sys_job_status', '', '', '', '0', '', '1', '', '停用状态', '2020-02-28 21:41:15', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (12, 0, '默认', 'DEFAULT', 'sys_job_group', '', '', '', '0', '', '1', '', '默认分组', '2020-02-28 21:41:48', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (13, 0, '系统', 'SYSTEM', 'sys_job_group', '', '', '', '0', '', '1', '', '系统分组', '2020-02-28 21:42:02', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (14, 0, '通知', '1', 'sys_notice_type', '', '', '', '0', '', '1', '', '通知', '2020-02-28 21:42:43', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (15, 0, '公告', '2', 'sys_notice_type', '', '', '', '0', '', '1', '', '公告', '2020-02-28 21:42:53', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (16, 0, '正常', '0', 'sys_common_status', '', '', '', '0', '', '1', '', '正常状态', '2020-02-28 21:43:21', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (17, 0, '关闭', '1', 'sys_common_status', '', '', '', '0', '', '1', '', '关闭状态', '2020-02-28 21:43:31', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (18, 0, '新增', '1', 'sys_oper_type', '', '', '', '0', '', '1', '', '新增操作', '2020-02-28 21:44:14', '2020-02-28 22:00:22', NULL);
INSERT INTO `sys_dict_data` VALUES (19, 0, '修改', '2', 'sys_oper_type', '', '', '', '0', '', '1', '', '修改操作', '2020-02-28 21:44:34', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (20, 0, '删除', '3', 'sys_oper_type', '', '', '', '0', '', '1', '', '删除操作', '2020-02-28 21:44:52', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (21, 0, '授权', '4', 'sys_oper_type', '', '', '', '0', '', '1', '', '授权操作', '2020-02-28 21:45:18', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (22, 0, '导出', '5', 'sys_oper_type', '', '', '', '0', '', '1', '', '导出操作', '2020-02-28 21:45:44', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (23, 0, '导入', '6', 'sys_oper_type', '', '', '', '0', '', '1', '', '导入操作', '2020-02-28 21:46:02', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (24, 0, '强退', '7', 'sys_oper_type', '', '', '', '0', '', '1', '', '强退操作', '2020-02-28 21:46:25', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (25, 0, '生成代码', '8', 'sys_oper_type', '', '', '', '0', '', '1', '', '生成操作', '2020-02-28 21:46:53', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (26, 0, '清空数据', '9', 'sys_oper_type', '', '', '', '0', '', '1', '', '清空操作', '2020-02-28 21:47:15', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (27, 0, '成功', '0', 'sys_notice_status', '', '', '', '0', '', '1', '', '成功状态', '2020-02-28 22:03:24', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (28, 0, '失败', '1', 'sys_notice_status', '', '', '', '0', '', '1', '', '失败状态', '2020-02-28 22:03:39', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (29, 0, '登录', '10', 'sys_oper_type', '', '', '', '0', '', '1', '1', '登录操作', '2020-03-15 18:35:23', '2020-03-15 18:39:30', NULL);
INSERT INTO `sys_dict_data` VALUES (30, 0, '退出', '11', 'sys_oper_type', '', '', '', '0', '', '1', '', '', '2020-03-15 18:35:39', '2020-03-15 18:35:39', NULL);
INSERT INTO `sys_dict_data` VALUES (31, 0, '获取验证码', '12', 'sys_oper_type', '', '', '', '0', '', '1', '', '获取验证码', '2020-03-15 18:38:42', '2020-03-15 18:35:39', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` int NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `create_by` varchar(11) DEFAULT NULL,
  `update_by` varchar(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` VALUES (1, '系统开关', 'sys_normal_disable', '0', '1', '1', '系统开关列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (2, '用户性别', 'sys_user_sex', '0', '1', '', '用户性别列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (3, '菜单状态', 'sys_show_hide', '0', '1', '', '菜单状态列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (4, '系统是否', 'sys_yes_no', '0', '1', '', '系统是否列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (5, '任务状态', 'sys_job_status', '1', '1', '1', '任务状态列表', '2020-04-11 15:52:48', '2020-09-04 10:33:53', NULL);
INSERT INTO `sys_dict_type` VALUES (6, '任务分组', 'sys_job_group', '1', '1', '1', '任务分组列表', '2020-04-11 15:52:48', '2020-09-04 10:33:56', NULL);
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', '1', '', '通知类型列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (8, '系统状态', 'sys_common_status', '0', '1', '', '登录状态列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', '1', '', '操作类型列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (10, '通知状态', 'sys_notice_status', '0', '1', '', '通知状态列表', '2020-04-11 15:52:48', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `job_group` varchar(255) DEFAULT NULL,
  `job_type` int DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `invoke_target` varchar(255) DEFAULT NULL,
  `misfire_policy` int DEFAULT NULL,
  `concurrent` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `entry_id` int DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` VALUES (1, '接口测试', 'DEFAULT', 1, '0/5 * * * * ?', 'http://localhost:8000', 1, 1, 2, 1, '', '', '2020-08-03 14:54:03', '2020-09-03 14:54:14', '2020-09-03 15:06:27');
INSERT INTO `sys_job` VALUES (2, '函数测试', 'DEFAULT', 2, '0/5 * * * * ?', 'ExamplesOne', 1, 1, 2, 2, '', '', '2020-08-11 21:41:23', '2020-09-03 14:54:14', '2020-09-03 15:06:23');
COMMIT;

-- ----------------------------
-- Table structure for sys_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginlog`;
CREATE TABLE `sys_loginlog` (
  `info_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `ipaddr` varchar(255) DEFAULT NULL,
  `login_location` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_loginlog
-- ----------------------------
BEGIN;
INSERT INTO `sys_loginlog` VALUES (1, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 09:33:39', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '退出成功', '2020-09-04 09:33:39', '2020-09-04 09:33:39', NULL);
INSERT INTO `sys_loginlog` VALUES (2, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 10:35:27', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '退出成功', '2020-09-04 10:35:27', '2020-09-04 10:35:27', NULL);
INSERT INTO `sys_loginlog` VALUES (3, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 13:46:03', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '退出成功', '2020-09-04 13:46:03', '2020-09-04 13:46:03', NULL);
INSERT INTO `sys_loginlog` VALUES (4, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 14:14:56', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-04 14:14:56', '2020-09-04 14:14:56', NULL);
INSERT INTO `sys_loginlog` VALUES (5, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 14:34:38', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-04 14:34:38', '2020-09-04 14:34:38', NULL);
INSERT INTO `sys_loginlog` VALUES (6, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 14:43:55', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-04 14:43:55', '2020-09-04 14:43:55', NULL);
INSERT INTO `sys_loginlog` VALUES (7, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 16:01:43', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '退出成功', '2020-09-04 16:01:43', '2020-09-04 16:01:43', NULL);
INSERT INTO `sys_loginlog` VALUES (8, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 16:01:49', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-04 16:01:49', '2020-09-04 16:01:49', NULL);
INSERT INTO `sys_loginlog` VALUES (9, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 16:06:37', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '退出成功', '2020-09-04 16:06:37', '2020-09-04 16:06:37', NULL);
INSERT INTO `sys_loginlog` VALUES (10, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 16:06:44', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-04 16:06:44', '2020-09-04 16:06:44', NULL);
INSERT INTO `sys_loginlog` VALUES (11, 'dev', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 17:01:42', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-04 17:01:42', '2020-09-04 17:01:42', NULL);
INSERT INTO `sys_loginlog` VALUES (12, 'dev', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 17:06:55', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '退出成功', '2020-09-04 17:06:55', '2020-09-04 17:06:55', NULL);
INSERT INTO `sys_loginlog` VALUES (13, 'dev', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-04 17:07:05', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-04 17:07:05', '2020-09-04 17:07:05', NULL);
INSERT INTO `sys_loginlog` VALUES (14, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-07 11:08:17', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-07 11:08:17', '2020-09-07 11:08:17', NULL);
INSERT INTO `sys_loginlog` VALUES (15, '', '1', '127.0.0.1', '内部IP', 'PostmanRuntime 7.25.0', '', '', '2020-09-07 11:10:21', '0', '0', 'PostmanRuntime/7.25.0', '数据解析失败', '2020-09-07 11:10:21', '2020-09-07 11:10:21', NULL);
INSERT INTO `sys_loginlog` VALUES (16, 'admin', '0', '127.0.0.1', '内部IP', 'PostmanRuntime 7.25.0', '', '', '2020-09-07 11:10:53', '0', '0', 'PostmanRuntime/7.25.0', '登录成功', '2020-09-07 11:10:53', '2020-09-07 11:10:53', NULL);
INSERT INTO `sys_loginlog` VALUES (17, 'admin', '0', '127.0.0.1', '内部IP', 'PostmanRuntime 7.25.0', '', '', '2020-09-07 11:11:41', '0', '0', 'PostmanRuntime/7.25.0', '登录成功', '2020-09-07 11:11:41', '2020-09-07 11:11:41', NULL);
INSERT INTO `sys_loginlog` VALUES (18, 'admin', '0', '127.0.0.1', '内部IP', 'PostmanRuntime 7.25.0', '', '', '2020-09-07 11:13:28', '0', '0', 'PostmanRuntime/7.25.0', '登录成功', '2020-09-07 11:13:28', '2020-09-07 11:13:28', NULL);
INSERT INTO `sys_loginlog` VALUES (19, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-07 14:13:11', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-07 14:13:11', '2020-09-07 14:13:11', NULL);
INSERT INTO `sys_loginlog` VALUES (20, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-08 12:54:57', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-08 12:54:57', '2020-09-08 12:54:57', NULL);
INSERT INTO `sys_loginlog` VALUES (21, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-08 12:55:27', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '退出成功', '2020-09-08 12:55:27', '2020-09-08 12:55:27', NULL);
INSERT INTO `sys_loginlog` VALUES (22, 'dev', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-08 12:55:36', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-08 12:55:36', '2020-09-08 12:55:36', NULL);
INSERT INTO `sys_loginlog` VALUES (23, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-08 12:58:59', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-08 12:58:59', '2020-09-08 12:58:59', NULL);
INSERT INTO `sys_loginlog` VALUES (24, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-08 12:59:08', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-08 12:59:08', '2020-09-08 12:59:08', NULL);
INSERT INTO `sys_loginlog` VALUES (25, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-09 09:10:11', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-09 09:10:11', '2020-09-09 09:10:11', NULL);
INSERT INTO `sys_loginlog` VALUES (26, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 84.0.4147.135', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-09 09:28:22', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '登录成功', '2020-09-09 09:28:22', '2020-09-09 09:28:22', NULL);
INSERT INTO `sys_loginlog` VALUES (27, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-09 09:45:49', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-09 09:45:49', '2020-09-09 09:45:49', NULL);
INSERT INTO `sys_loginlog` VALUES (28, 'admin', '0', '192.168.1.134', '局域网-', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-09 11:28:23', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-09 11:28:23', '2020-09-09 11:28:23', NULL);
INSERT INTO `sys_loginlog` VALUES (29, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-09 17:12:49', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-09 17:12:49', '2020-09-09 17:12:49', NULL);
INSERT INTO `sys_loginlog` VALUES (30, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-10 09:17:49', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-10 09:17:49', '2020-09-10 09:17:49', NULL);
INSERT INTO `sys_loginlog` VALUES (31, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-10 15:04:51', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-10 15:04:51', '2020-09-10 15:04:51', NULL);
INSERT INTO `sys_loginlog` VALUES (32, 'admin', '0', '127.0.0.1', '内部IP', 'Safari 13.1.2', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-10 15:35:04', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Safari/605.1.15', '登录成功', '2020-09-10 15:35:04', '2020-09-10 15:35:04', NULL);
INSERT INTO `sys_loginlog` VALUES (33, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 10:28:27', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-11 10:28:27', '2020-09-11 10:28:27', NULL);
INSERT INTO `sys_loginlog` VALUES (34, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 10:29:45', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-11 10:29:45', '2020-09-11 10:29:45', NULL);
INSERT INTO `sys_loginlog` VALUES (35, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 10:41:44', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-11 10:41:44', '2020-09-11 10:41:44', NULL);
INSERT INTO `sys_loginlog` VALUES (36, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 16:17:25', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '退出成功', '2020-09-11 16:17:25', '2020-09-11 16:17:25', NULL);
INSERT INTO `sys_loginlog` VALUES (37, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 16:17:34', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-11 16:17:34', '2020-09-11 16:17:34', NULL);
INSERT INTO `sys_loginlog` VALUES (38, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 16:21:56', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '退出成功', '2020-09-11 16:21:56', '2020-09-11 16:21:56', NULL);
INSERT INTO `sys_loginlog` VALUES (39, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 16:22:22', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-11 16:22:22', '2020-09-11 16:22:22', NULL);
INSERT INTO `sys_loginlog` VALUES (40, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 16:37:55', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '退出成功', '2020-09-11 16:37:55', '2020-09-11 16:37:55', NULL);
INSERT INTO `sys_loginlog` VALUES (41, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 16:38:05', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-11 16:38:05', '2020-09-11 16:38:05', NULL);
INSERT INTO `sys_loginlog` VALUES (42, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 16:49:18', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '退出成功', '2020-09-11 16:49:18', '2020-09-11 16:49:18', NULL);
INSERT INTO `sys_loginlog` VALUES (43, 'dev', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 16:56:35', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-11 16:56:35', '2020-09-11 16:56:35', NULL);
INSERT INTO `sys_loginlog` VALUES (44, 'admin', '0', '192.168.1.134', '未知位置', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 17:02:28', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '退出成功', '2020-09-11 17:02:28', '2020-09-11 17:02:28', NULL);
INSERT INTO `sys_loginlog` VALUES (45, '', '1', '192.168.1.134', '未知位置', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 17:02:38', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录失败', '2020-09-11 17:02:38', '2020-09-11 17:02:38', NULL);
INSERT INTO `sys_loginlog` VALUES (46, 'admin', '0', '192.168.1.134', '未知位置', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 17:02:49', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-11 17:02:49', '2020-09-11 17:02:49', NULL);
INSERT INTO `sys_loginlog` VALUES (47, 'admin', '0', '192.168.1.134', '未知位置', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 17:02:58', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '退出成功', '2020-09-11 17:02:58', '2020-09-11 17:02:58', NULL);
INSERT INTO `sys_loginlog` VALUES (48, '', '1', '192.168.1.134', '未知位置', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 17:03:13', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录失败', '2020-09-11 17:03:13', '2020-09-11 17:03:13', NULL);
INSERT INTO `sys_loginlog` VALUES (49, 'admin', '0', '192.168.1.134', '未知位置', 'Chrome 85.0.4183.83', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-11 17:03:21', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '登录成功', '2020-09-11 17:03:21', '2020-09-11 17:03:21', NULL);
INSERT INTO `sys_loginlog` VALUES (50, '', '1', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-14 13:39:19', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录失败', '2020-09-14 13:39:19', '2020-09-14 13:39:19', NULL);
INSERT INTO `sys_loginlog` VALUES (51, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-14 13:39:26', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-14 13:39:26', '2020-09-14 13:39:26', NULL);
INSERT INTO `sys_loginlog` VALUES (52, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-14 13:48:08', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '退出成功', '2020-09-14 13:48:08', '2020-09-14 13:48:08', NULL);
INSERT INTO `sys_loginlog` VALUES (53, '', '1', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-14 13:48:15', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录失败', '2020-09-14 13:48:15', '2020-09-14 13:48:15', NULL);
INSERT INTO `sys_loginlog` VALUES (54, '', '1', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-14 13:56:51', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录失败', '2020-09-14 13:56:51', '2020-09-14 13:56:51', NULL);
INSERT INTO `sys_loginlog` VALUES (55, '', '1', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-14 13:57:00', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录失败', '2020-09-14 13:57:00', '2020-09-14 13:57:00', NULL);
INSERT INTO `sys_loginlog` VALUES (56, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-14 13:57:07', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-14 13:57:07', '2020-09-14 13:57:07', NULL);
INSERT INTO `sys_loginlog` VALUES (57, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-15 14:20:57', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '退出成功', '2020-09-15 14:20:57', '2020-09-15 14:20:57', NULL);
INSERT INTO `sys_loginlog` VALUES (58, '', '1', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-15 14:21:05', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录失败', '2020-09-15 14:21:05', '2020-09-15 14:21:05', NULL);
INSERT INTO `sys_loginlog` VALUES (59, '', '1', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-16 09:25:14', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录失败', '2020-09-16 09:25:14', '2020-09-16 09:25:14', NULL);
INSERT INTO `sys_loginlog` VALUES (60, '', '1', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-16 09:26:36', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录失败', '2020-09-16 09:26:36', '2020-09-16 09:26:36', NULL);
INSERT INTO `sys_loginlog` VALUES (61, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-16 09:26:44', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-16 09:26:44', '2020-09-16 09:26:44', NULL);
INSERT INTO `sys_loginlog` VALUES (62, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-16 09:27:11', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '退出成功', '2020-09-16 09:27:11', '2020-09-16 09:27:11', NULL);
INSERT INTO `sys_loginlog` VALUES (63, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-16 09:27:17', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-16 09:27:17', '2020-09-16 09:27:17', NULL);
INSERT INTO `sys_loginlog` VALUES (64, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-18 11:07:19', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-18 11:07:19', '2020-09-18 11:07:19', NULL);
INSERT INTO `sys_loginlog` VALUES (65, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-18 16:54:25', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-18 16:54:25', '2020-09-18 16:54:25', NULL);
INSERT INTO `sys_loginlog` VALUES (66, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-18 16:57:03', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '退出成功', '2020-09-18 16:57:03', '2020-09-18 16:57:03', NULL);
INSERT INTO `sys_loginlog` VALUES (67, 'dev', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-18 16:57:13', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-18 16:57:13', '2020-09-18 16:57:13', NULL);
INSERT INTO `sys_loginlog` VALUES (68, 'dev', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-18 16:58:24', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '退出成功', '2020-09-18 16:58:24', '2020-09-18 16:58:24', NULL);
INSERT INTO `sys_loginlog` VALUES (69, 'dev', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-18 16:58:36', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-18 16:58:36', '2020-09-18 16:58:36', NULL);
INSERT INTO `sys_loginlog` VALUES (70, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-21 09:36:06', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-21 09:36:06', '2020-09-21 09:36:06', NULL);
INSERT INTO `sys_loginlog` VALUES (71, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-21 09:37:54', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-21 09:37:54', '2020-09-21 09:37:54', NULL);
INSERT INTO `sys_loginlog` VALUES (72, 'admin', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-21 09:38:07', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '退出成功', '2020-09-21 09:38:07', '2020-09-21 09:38:07', NULL);
INSERT INTO `sys_loginlog` VALUES (73, 'dev', '0', '127.0.0.1', '内部IP', 'Chrome 85.0.4183.102', 'Intel Mac OS X 10_15_6', 'Macintosh', '2020-09-21 09:38:17', '0', '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '登录成功', '2020-09-21 09:38:17', '2020-09-21 09:38:17', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `paths` varchar(128) DEFAULT NULL,
  `menu_type` varchar(1) DEFAULT NULL,
  `action` varchar(16) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `no_cache` tinyint(1) DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `visible` varchar(1) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `is_frame` varchar(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (2, 'Upms', '系统管理', 'example', '/upms', '/0/2', 'M', '无', '', 0, 1, '', 'Layout', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (3, 'Sysuser', '用户管理', 'user', 'sysuser', '/0/2/3', 'C', '无', 'system:sysuser:list', 2, NULL, NULL, '/sysuser/index', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 11:10:42', NULL);
INSERT INTO `sys_menu` VALUES (43, NULL, '新增用户', NULL, '/api/v1/sysuser', '/0/2/3/43', 'F', 'POST', 'system:sysuser:add', 3, NULL, NULL, NULL, 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (44, NULL, '查询用户', NULL, '/api/v1/sysuser', '/0/2/3/44', 'F', 'GET', 'system:sysuser:query', 3, NULL, NULL, NULL, 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (45, NULL, '修改用户', NULL, '/api/v1/sysuser/', '/0/2/3/45', 'F', 'PUT', 'system:sysuser:edit', 3, NULL, NULL, NULL, 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (46, NULL, '删除用户', NULL, '/api/v1/sysuser/', '/0/2/3/46', 'F', 'DELETE', 'system:sysuser:remove', 3, NULL, NULL, NULL, 0, '0', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 15:32:45', NULL);
INSERT INTO `sys_menu` VALUES (51, 'Menu', '菜单管理', 'tree-table', 'menu', '/0/2/51', 'C', '无', 'system:sysmenu:list', 2, 1, '', '/menu/index', 3, '0', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 11:16:30', NULL);
INSERT INTO `sys_menu` VALUES (52, 'Role', '角色管理', 'peoples', 'role', '/0/2/52', 'C', '无', 'system:sysrole:list', 2, 1, '', '/role/index', 2, '0', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 11:16:19', NULL);
INSERT INTO `sys_menu` VALUES (56, 'Dept', '部门管理', 'tree', 'dept', '/0/2/56', 'C', '无', 'system:sysdept:list', 2, 0, '', '/dept/index', 4, '0', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 11:16:47', NULL);
INSERT INTO `sys_menu` VALUES (57, 'post', '岗位管理', 'pass', 'post', '/0/2/57', 'C', '无', 'system:syspost:list', 2, 0, '', '/post/index', 5, '0', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 11:16:53', NULL);
INSERT INTO `sys_menu` VALUES (58, 'Dict', '字典管理', 'education', 'dict', '/0/2/58', 'C', '无', 'system:sysdicttype:list', 2, 0, '', '/dict/index', 6, '0', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 11:17:04', NULL);
INSERT INTO `sys_menu` VALUES (59, 'DictData', '字典数据', 'education', 'dict/data/:dictId', '/0/2/59', 'C', '无', 'system:sysdictdata:list', 2, 0, '', '/dict/data', 100, '1', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 11:17:25', NULL);
INSERT INTO `sys_menu` VALUES (60, 'Tools', '系统工具', 'component', '/tools', '/0/60', 'M', '无', '', 0, 0, '', 'Layout', 3, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (61, 'Swagger', '系统接口', 'guide', 'swagger', '/0/60/61', 'C', '无', '', 60, 0, '', '/tools/swagger/index', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (62, 'Config', '参数设置', 'list', '/config', '/0/2/62', 'C', '无', 'system:sysconfig:list', 2, 0, '', '/config/index', 7, '0', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 11:17:16', NULL);
INSERT INTO `sys_menu` VALUES (63, '', '接口权限', 'bug', '', '/0/63', 'M', '', '', 0, 0, '', '', 99, '1', '1', '1', '0', '2020-04-11 15:52:48', '2020-09-03 15:59:10', NULL);
INSERT INTO `sys_menu` VALUES (64, '', '用户管理', 'user', '', '/0/63/64', 'M', '', '', 63, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (66, '', '菜单管理', 'tree-table', '', '/0/63/66', 'C', '', '', 63, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (67, '', '菜单列表', 'tree-table', '/api/v1/menulist', '/0/63/66/67', 'A', 'GET', '', 66, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (68, '', '新建菜单', 'tree', '/api/v1/menu', '/0/63/66/68', 'A', 'POST', '', 66, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (69, '', '字典', 'dict', '', '/0/63/69', 'M', '', '', 63, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (70, '', '类型', 'dict', '', '/0/63/69/70', 'C', '', '', 69, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (71, '', '字典类型获取', 'tree', '/api/v1/dict/databytype/', '/0/63/256/71', 'A', 'GET', '', 256, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (72, '', '修改菜单', 'bug', '/api/v1/menu', '/0/63/66/72', 'A', 'PUT', '', 66, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (73, '', '删除菜单', 'bug', '/api/v1/menu/:id', '/0/63/66/73', 'A', 'DELETE', '', 66, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (74, NULL, '管理员列表', 'bug', '/api/v1/sysUserList', '/0/63/64/74', 'A', 'GET', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (75, NULL, '根据id获取管理员', 'bug', '/api/v1/sysUser/:id', '/0/63/64/75', 'A', 'GET', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (76, NULL, '获取管理员', 'bug', '/api/v1/sysUser/', '/0/63/256/76', 'A', 'GET', NULL, 256, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', '2020-07-18 14:30:28', NULL);
INSERT INTO `sys_menu` VALUES (77, NULL, '创建管理员', 'bug', '/api/v1/sysUser', '/0/63/64/77', 'A', 'POST', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (78, NULL, '修改管理员', 'bug', '/api/v1/sysUser', '/0/63/64/78', 'A', 'PUT', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (79, NULL, '删除管理员', 'bug', '/api/v1/sysUser/:id', '/0/63/64/79', 'A', 'DELETE', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (80, NULL, '当前用户个人信息', 'bug', '/api/v1/user/profile', '/0/63/256/267/80', 'A', 'GET', NULL, 267, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', '2020-05-03 20:50:40', NULL);
INSERT INTO `sys_menu` VALUES (81, NULL, '角色列表', 'bug', '/api/v1/rolelist', '/0/63/201/81', 'A', 'GET', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (82, NULL, '获取角色信息', 'bug', '/api/v1/role/:id', '/0/63/201/82', 'A', 'GET', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (83, NULL, '创建角色', 'bug', '/api/v1/role', '/0/63/201/83', 'A', 'POST', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (84, NULL, '修改角色', 'bug', '/api/v1/role', '/0/63/201/84', 'A', 'PUT', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (85, NULL, '删除角色', 'bug', '/api/v1/role/:id', '/0/63/201/85', 'A', 'DELETE', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (86, NULL, '参数列表', 'bug', '/api/v1/configList', '/0/63/202/86', 'A', 'GET', NULL, 202, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (87, NULL, '根据id获取参数', 'bug', '/api/v1/config/:id', '/0/63/202/87', 'A', 'GET', NULL, 202, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (89, NULL, '创建参数', 'bug', '/api/v1/config', '/0/63/202/89', 'A', 'POST', NULL, 202, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (90, NULL, '修改参数', 'bug', '/api/v1/config', '/0/63/202/90', 'A', 'PUT', NULL, 202, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (91, NULL, '删除参数', 'bug', '/api/v1/config/:id', '/0/63/202/91', 'A', 'DELETE', NULL, 202, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (92, NULL, '获取角色菜单', 'bug', '/api/v1/menurole', '/0/63/256/92', 'A', 'GET', NULL, 256, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', '2020-07-10 20:47:39', NULL);
INSERT INTO `sys_menu` VALUES (93, NULL, '根据角色id获取角色', 'bug', '/api/v1/roleMenuTreeselect/:id', '/0/63/256/93', 'A', 'GET', NULL, 256, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', '2020-07-10 20:47:52', NULL);
INSERT INTO `sys_menu` VALUES (94, NULL, '获取菜单树', 'bug', '/api/v1/menuTreeselect', '/0/63/256/94', 'A', 'GET', NULL, 256, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', '2020-05-03 20:52:11', NULL);
INSERT INTO `sys_menu` VALUES (95, NULL, '获取角色菜单', 'bug', '/api/v1/rolemenu', '/0/63/205/95', 'A', 'GET', NULL, 205, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (96, NULL, '创建角色菜单', 'bug', '/api/v1/rolemenu', '/0/63/205/96', 'A', 'POST', NULL, 205, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (97, NULL, '删除用户菜单数据', 'bug', '/api/v1/rolemenu/:id', '/0/63/205/97', 'A', 'DELETE', NULL, 205, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (103, NULL, '部门菜单列表', 'bug', '/api/v1/deptList', '/0/63/203/103', 'A', 'GET', NULL, 203, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (104, NULL, '根据id获取部门信息', 'bug', '/api/v1/dept/:id', '/0/63/203/104', 'A', 'GET', NULL, 203, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (105, NULL, '创建部门', 'bug', '/api/v1/dept', '/0/63/203/105', 'A', 'POST', NULL, 203, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (106, NULL, '修改部门', 'bug', '/api/v1/dept', '/0/63/203/106', 'A', 'PUT', NULL, 203, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (107, NULL, '删除部门', 'bug', '/api/v1/dept/:id', '/0/63/203/107', 'A', 'DELETE', NULL, 203, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (108, NULL, '字典数据列表', 'bug', '/api/v1/dict/datalist', '/0/63/69/206/108', 'A', 'GET', NULL, 206, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (109, NULL, '通过编码获取字典数据', 'bug', '/api/v1/dict/data/:id', '/0/63/69/206/109', 'A', 'GET', NULL, 206, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (110, NULL, '通过字典类型获取字典数据', 'bug', '/api/v1/dict/databytype/:id', '/0/63/256/110', 'A', 'GET', NULL, 256, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (111, NULL, '创建字典数据', 'bug', '/api/v1/dict/data', '/0/63/69/206/111', 'A', 'POST', NULL, 206, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (112, NULL, '修改字典数据', 'bug', '/api/v1/dict/data/', '/0/63/69/206/112', 'A', 'PUT', NULL, 206, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (113, NULL, '删除字典数据', 'bug', '/api/v1/dict/data/:id', '/0/63/69/206/113', 'A', 'DELETE', NULL, 206, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (114, NULL, '字典类型列表', 'bug', '/api/v1/dict/typelist', '/0/63/69/70/114', 'A', 'GET', NULL, 70, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (115, NULL, '通过id获取字典类型', 'bug', '/api/v1/dict/type/:id', '/0/63/69/70/115', 'A', 'GET', NULL, 70, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (116, NULL, '创建字典类型', 'bug', '/api/v1/dict/type', '/0/63/69/70/116', 'A', 'POST', NULL, 70, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (117, NULL, '修改字典类型', 'bug', '/api/v1/dict/type', '/0/63/69/70/117', 'A', 'PUT', NULL, 70, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (118, NULL, '删除字典类型', 'bug', '/api/v1/dict/type/:id', '/0/63/69/70/118', 'A', 'DELETE', NULL, 70, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (119, NULL, '获取岗位列表', 'bug', '/api/v1/postlist', '/0/63/204/119', 'A', 'GET', NULL, 204, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (120, NULL, '通过id获取岗位信息', 'bug', '/api/v1/post/:id', '/0/63/204/120', 'A', 'GET', NULL, 204, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (121, NULL, '创建岗位', 'bug', '/api/v1/post', '/0/63/204/121', 'A', 'POST', NULL, 204, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (122, NULL, '修改岗位', 'bug', '/api/v1/post', '/0/63/204/122', 'A', 'PUT', NULL, 204, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (123, NULL, '删除岗位', 'bug', '/api/v1/post/:id', '/0/63/204/123', 'A', 'DELETE', NULL, 204, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (138, NULL, '获取根据id菜单信息', 'bug', '/api/v1/menu/:id', '/0/63/66/138', 'A', 'GET', NULL, 66, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (142, NULL, '获取角色对应的菜单id数组', 'bug', '/api/v1/menuids', '/0/63/256/142', 'A', 'GET', NULL, 256, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (201, '', '角色管理', 'peoples', '', '/0/63/201', 'C', 'GET', '', 63, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (202, '', '参数设置', 'list', '', '/0/63/202', 'C', 'DELETE', '', 63, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (203, '', '部门管理', 'tree', '', '/0/63/203', 'C', 'POST', '', 63, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (204, '', '岗位管理', 'pass', '', '/0/63/204', 'C', '', '', 63, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (205, '', '角色菜单管理', 'nested', '', '/0/63/205', 'C', '', '', 63, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (206, '', '数据', '', '', '/0/63/69/206', 'C', 'PUT', '', 69, 0, '', '', 2, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (211, 'Log', '日志管理', 'log', '/log', '/0/2/211', 'M', '', '', 2, 0, '', '/log/index', 8, '0', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 11:15:32', NULL);
INSERT INTO `sys_menu` VALUES (212, 'LoginLog', '登录日志', 'logininfor', '/loginlog', '/0/2/211/212', 'C', '', 'system:sysloginlog:list', 211, 0, '', '/loginlog/index', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (213, NULL, '获取登录日志', 'bug', '/api/v1/loginloglist', '/0/63/214/213', 'A', 'GET', NULL, 214, NULL, NULL, NULL, 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (214, '', '日志管理', 'log', '', '/0/63/214', 'M', 'GET', '', 63, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (215, '', '删除日志', 'bug', '/api/v1/loginlog/:id', '/0/63/214/215', 'A', 'DELETE', '', 214, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (216, 'OperLog', '操作日志', 'skill', '/operlog', '/0/2/211/216', 'C', '', 'system:sysoperlog:list', 211, 0, '', '/operlog/index', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (217, '', '获取操作日志', 'bug', '/api/v1/operloglist', '/0/63/214/217', 'A', 'GET', '', 214, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (220, '', '新增菜单', '', '', '/0/2/51/220', 'F', '', 'system:sysmenu:add', 51, 0, '', '', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (221, '', '修改菜单', 'edit', '', '/0/2/51/221', 'F', '', 'system:sysmenu:edit', 51, 0, '', '', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (222, '', '查询菜单', 'search', '', '/0/2/51/222', 'F', '', 'system:sysmenu:query', 51, 0, '', '', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (223, '', '删除菜单', '', '', '/0/2/51/223', 'F', '', 'system:sysmenu:remove', 51, 0, '', '', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (224, '', '新增角色', '', '', '/0/2/52/224', 'F', '', 'system:sysrole:add', 52, 0, '', '', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (225, '', '查询角色', '', '', '/0/2/52/225', 'F', '', 'system:sysrole:query', 52, 0, '', '', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (226, '', '修改角色', '', '', '/0/2/52/226', 'F', '', 'system:sysrole:edit', 52, 0, '', '', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (227, '', '删除角色', '', '', '/0/2/52/227', 'F', '', 'system:sysrole:remove', 52, 0, '', '', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (228, '', '查询部门', '', '', '/0/2/56/228', 'F', '', 'system:sysdept:query', 56, 0, '', '', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (229, '', '新增部门', '', '', '/0/2/56/229', 'F', '', 'system:sysdept:add', 56, 0, '', '', 1, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (230, '', '修改部门', '', '', '/0/2/56/230', 'F', '', 'system:sysdept:edit', 56, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (231, '', '删除部门', '', '', '/0/2/56/231', 'F', '', 'system:sysdept:remove', 56, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (232, '', '查询岗位', '', '', '/0/2/57/232', 'F', '', 'system:syspost:query', 57, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (233, '', '新增岗位', '', '', '/0/2/57/233', 'F', '', 'system:syspost:add', 57, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (234, '', '修改岗位', '', '', '/0/2/57/234', 'F', '', 'system:syspost:edit', 57, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (235, '', '删除岗位', '', '', '/0/2/57/235', 'F', '', 'system:syspost:remove', 57, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (236, '', '字典查询', '', '', '/0/2/58/236', 'F', '', 'system:sysdicttype:query', 58, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (237, '', '新增类型', '', '', '/0/2/58/237', 'F', '', 'system:sysdicttype:add', 58, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (238, '', '修改类型', '', '', '/0/2/58/238', 'F', '', 'system:sysdicttype:edit', 58, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (239, '', '删除类型', '', '', '/0/2/58/239', 'F', '', 'system:sysdicttype:remove', 58, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (240, '', '查询数据', '', '', '/0/2/59/240', 'F', '', 'system:sysdictdata:query', 59, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (241, '', '新增数据', '', '', '/0/2/59/241', 'F', '', 'system:sysdictdata:add', 59, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (242, '', '修改数据', '', '', '/0/2/59/242', 'F', '', 'system:sysdictdata:edit', 59, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (243, '', '删除数据', '', '', '/0/2/59/243', 'F', '', 'system:sysdictdata:remove', 59, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (244, '', '查询参数', '', '', '/0/2/62/244', 'F', '', 'system:sysconfig:query', 62, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (245, '', '新增参数', '', '', '/0/2/62/245', 'F', '', 'system:sysconfig:add', 62, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (246, '', '修改参数', '', '', '/0/2/62/246', 'F', '', 'system:sysconfig:edit', 62, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (247, '', '删除参数', '', '', '/0/2/62/247', 'F', '', 'system:sysconfig:remove', 62, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (248, '', '查询登录日志', '', '', '/0/2/211/212/248', 'F', '', 'system:sysloginlog:query', 212, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (249, '', '删除登录日志', '', '', '/0/2/211/212/249', 'F', '', 'system:sysloginlog:remove', 212, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (250, '', '查询操作日志', '', '', '/0/2/211/216/250', 'F', '', 'system:sysoperlog:query', 216, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (251, '', '删除操作日志', '', '', '/0/2/211/216/251', 'F', '', 'system:sysoperlog:remove', 216, 0, '', '', 0, '0', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (252, '', '获取登录用户信息', '', '/api/v1/getinfo', '/0/63/256/252', 'A', 'GET', '', 256, 0, '', '', 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (253, '', '角色数据权限', '', '/api/v1/roledatascope', '/0/63/256/253', 'A', 'PUT', '', 256, 0, '', '', 0, '1', '1', '1', '0', '2020-04-11 15:52:48', '2020-07-10 20:47:58', NULL);
INSERT INTO `sys_menu` VALUES (254, '', '部门树接口【数据权限】', '', '/api/v1/roleDeptTreeselect/:id', '/0/63/256/254', 'A', 'GET', '', 256, 0, '', '', 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (255, '', '部门树【用户列表】', '', '/api/v1/deptTree', '/0/63/256/255', 'A', 'GET', '', 256, 0, '', '', 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (256, '', '必开接口', '', '', '/0/63/256', 'M', 'GET', '', 63, 0, '', '', 0, '1', '1', '', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (257, '', '通过key获取参数', 'bug', '/api/v1/configKey/:id', '/0/63/256/257', 'A', 'GET', '', 256, 0, '', '', 1, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (258, '', '退出登录', '', '/api/v1/logout', '/0/63/256/258', 'A', 'POST', '', 256, 0, '', '', 0, '1', '1', '1', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (259, '', '头像上传', '', '/api/v1/user/avatar', '/0/63/256/267/259', 'A', 'POST', '', 267, 0, '', '', 0, '1', '1', '1', '0', '2020-04-11 15:52:48', '2020-05-03 20:50:05', NULL);
INSERT INTO `sys_menu` VALUES (260, '', '修改密码', '', '/api/v1/user/pwd', '/0/63/256/260', 'A', 'PUT', '', 256, 0, '', '', 0, '1', '1', '', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (261, 'Gen', '代码生成', 'code', 'gen', '/0/60/261', 'C', '', '', 60, 0, '', '/tools/gen/index', 2, '0', '1', '1', '0', '2020-04-11 15:52:48', '2020-04-12 11:18:12', NULL);
INSERT INTO `sys_menu` VALUES (262, 'EditTable', '代码生成修改', 'build', 'editTable', '/0/60/262', 'C', '', '', 60, 0, '', '/tools/gen/editTable', 100, '1', '1', '1', '0', '2020-04-11 15:52:48', '2020-05-03 20:38:36', NULL);
INSERT INTO `sys_menu` VALUES (263, '', '字典类型下拉框【生成功能】', '', '/api/v1/dict/typeoptionselect', '/0/63/256/263', 'A', 'GET', '', 256, 0, '', '', 0, '1', '1', '', '0', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (264, 'Build', '表单构建', 'build', 'build', '/0/60/264', 'C', '', '', 60, 0, '', '/tools/build/index', 1, '0', '1', '1', '1', '2020-04-11 15:52:48', '2020-07-18 13:51:47', NULL);
INSERT INTO `sys_menu` VALUES (267, '', '个人中心', '', '', '/0/63/256/267', 'M', '', '', 256, 0, '', '', 0, '1', '1', '', '1', '2020-05-03 20:49:39', '2020-05-03 20:49:39', NULL);
INSERT INTO `sys_menu` VALUES (269, 'Server', '服务监控', 'druid', 'system/monitor', '/0/60/269', 'C', '', 'monitor:server:list', 60, 0, '', '/system/monitor', 0, '0', '1', '1', '1', '2020-04-14 00:28:19', '2020-08-09 02:07:53', NULL);
INSERT INTO `sys_menu` VALUES (471, 'job_log', '日志', 'bug', 'job_log', '/0/459/471', 'C', '', '', 459, 0, '', '/sysjob/log', 0, '1', '1', '1', '1', '2020-08-05 21:24:46', '2020-08-06 00:02:20', NULL);
INSERT INTO `sys_menu` VALUES (473, 'sysSetting', '系统配置', 'form', 'syssettings', '/0/60/473', 'C', '无', 'syssetting:syssetting:list', 60, 0, '', '/system/settings', 0, '0', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 02:17:10', NULL);
INSERT INTO `sys_menu` VALUES (474, 'sys_setting', '分页获取SysSetting', 'pass', 'sys_setting', '/0/60/473/474', 'F', '无', 'syssetting:syssetting:query', 473, 0, '', '', 0, '0', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 01:05:22', NULL);
INSERT INTO `sys_menu` VALUES (475, 'sys_setting', '创建SysSetting', 'pass', 'sys_setting', '/0/60/473/475', 'F', '无', 'syssetting:syssetting:add', 473, 0, '', '', 0, '0', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 01:05:22', NULL);
INSERT INTO `sys_menu` VALUES (476, 'sys_setting', '修改SysSetting', 'pass', 'sys_setting', '/0/60/473/476', 'F', '无', 'syssetting:syssetting:edit', 473, 0, '', '', 0, '0', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 01:05:22', NULL);
INSERT INTO `sys_menu` VALUES (477, 'sys_setting', '删除SysSetting', 'pass', 'sys_setting', '/0/60/473/477', 'F', '无', 'syssetting:syssetting:remove', 473, 0, '', '', 0, '0', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 01:05:22', NULL);
INSERT INTO `sys_menu` VALUES (478, 'sys_setting', 'SysSetting', 'bug', 'sys_setting', '/0/63/478', 'M', '无', '', 63, 0, '', '', 0, '1', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 01:05:22', NULL);
INSERT INTO `sys_menu` VALUES (479, 'sys_setting', '分页获取SysSetting', 'bug', '/api/v1/syssettingList', '/0/63/478/479', 'A', 'GET', '', 478, 0, '', '', 0, '1', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 01:05:22', NULL);
INSERT INTO `sys_menu` VALUES (480, 'sys_setting', '根据id获取SysSetting', 'bug', '/api/v1/syssetting/:id', '/0/63/478/480', 'A', 'GET', '', 478, 0, '', '', 0, '1', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 01:05:22', NULL);
INSERT INTO `sys_menu` VALUES (481, 'sys_setting', '创建SysSetting', 'bug', '/api/v1/syssetting', '/0/63/478/481', 'A', 'POST', '', 478, 0, '', '', 0, '1', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 01:05:22', NULL);
INSERT INTO `sys_menu` VALUES (482, 'sys_setting', '修改SysSetting', 'bug', '/api/v1/syssetting', '/0/63/478/482', 'A', 'PUT', '', 478, 0, '', '', 0, '1', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 01:05:22', NULL);
INSERT INTO `sys_menu` VALUES (483, 'sys_setting', '删除SysSetting', 'bug', '/api/v1/syssetting/:id', '/0/63/478/483', 'A', 'DELETE', '', 478, 0, '', '', 0, '1', '1', '1', '0', '2020-08-09 01:05:22', '2020-08-09 01:05:22', NULL);
INSERT INTO `sys_menu` VALUES (485, 'content', '内容管理', 'pass', '/content', '/0/485', 'M', '无', '', 0, 0, '', 'Layout', 7, '0', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-08 08:47:34', NULL);
INSERT INTO `sys_menu` VALUES (486, 'article', '文章', 'pass', 'article', '/0/485/486', 'C', '无', 'article:article:list', 485, 0, '', '/article/index', 0, '0', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-08 08:48:46', NULL);
INSERT INTO `sys_menu` VALUES (487, 'article', '分页获取文章', 'pass', 'article', '/0/485/486/487', 'F', '无', 'article:article:query', 486, 0, '', '', 0, '0', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-03 14:52:02', NULL);
INSERT INTO `sys_menu` VALUES (488, 'article', '创建文章', 'pass', 'article', '/0/485/486/488', 'F', '无', 'article:article:add', 486, 0, '', '', 0, '0', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-03 14:52:02', NULL);
INSERT INTO `sys_menu` VALUES (489, 'article', '修改文章', 'pass', 'article', '/0/485/486/489', 'F', '无', 'article:article:edit', 486, 0, '', '', 0, '0', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-03 14:52:02', NULL);
INSERT INTO `sys_menu` VALUES (490, 'article', '删除文章', 'pass', 'article', '/0/485/486/490', 'F', '无', 'article:article:remove', 486, 0, '', '', 0, '0', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-03 14:52:02', NULL);
INSERT INTO `sys_menu` VALUES (491, '', '文章', 'bug', '', '/0/63/491', 'M', '无', '', 63, 0, '', '', 0, '1', '1', '1', '1', '2020-09-03 14:52:02', '2020-09-08 09:00:57', NULL);
INSERT INTO `sys_menu` VALUES (492, 'article', '分页获取文章', 'bug', '/api/v1/articleList', '/0/63/491/492', 'A', 'GET', '', 491, 0, '', '', 0, '1', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-03 14:52:02', NULL);
INSERT INTO `sys_menu` VALUES (493, 'article', '根据id获取文章', 'bug', '/api/v1/article/:id', '/0/63/491/493', 'A', 'GET', '', 491, 0, '', '', 0, '1', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-03 14:52:02', NULL);
INSERT INTO `sys_menu` VALUES (494, 'article', '创建文章', 'bug', '/api/v1/article', '/0/63/491/494', 'A', 'POST', '', 491, 0, '', '', 0, '1', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-03 14:52:02', NULL);
INSERT INTO `sys_menu` VALUES (495, 'article', '修改文章', 'bug', '/api/v1/article', '/0/63/491/495', 'A', 'PUT', '', 491, 0, '', '', 0, '1', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-03 14:52:02', NULL);
INSERT INTO `sys_menu` VALUES (496, 'article', '删除文章', 'bug', '/api/v1/article/:id', '/0/63/491/496', 'A', 'DELETE', '', 491, 0, '', '', 0, '1', '1', '1', '0', '2020-09-03 14:52:02', '2020-09-03 14:52:02', NULL);
INSERT INTO `sys_menu` VALUES (501, 'kubernetes', 'k8s管理', 'guide', '/kubernetes', '/0/501', 'M', '', '', 0, 0, '', 'Layout', 8, '0', '1', '', '1', '2020-09-07 14:27:34', '2020-09-07 14:27:34', NULL);
INSERT INTO `sys_menu` VALUES (502, 'node', 'node', 'server', 'node', '/0/501/502', 'C', '', 'node:node:list', 501, 0, '', '/kubernetes/node/index', 1, '0', '1', '1', '1', '2020-09-07 14:29:04', '2020-09-21 09:43:22', NULL);
INSERT INTO `sys_menu` VALUES (506, '', 'kubernetes', 'server', '', '/0/63/506', 'M', '', '', 63, 0, '', '', 101, '1', '1', '', '1', '2020-09-08 09:05:06', '2020-09-08 09:05:06', NULL);
INSERT INTO `sys_menu` VALUES (507, '', 'node', 'tree', '', '/0/63/506/507', 'M', '', '', 506, 0, '', '', 0, '1', '1', '', '1', '2020-09-08 09:05:55', '2020-09-08 09:05:55', NULL);
INSERT INTO `sys_menu` VALUES (508, '/k8s-api/api/v1/nodes', '获取node列表', '', '/k8s-api/api/v1/nodes', '/0/63/506/507/508', 'A', 'GET', '', 507, 0, '', '', 0, '1', '1', '', '1', '2020-09-08 09:06:47', '2020-09-08 09:06:47', NULL);
INSERT INTO `sys_menu` VALUES (509, '', '获取node信息', '', '/k8s-api/api/v1/nodes/:name', '/0/63/506/507/509', 'A', 'GET', '', 507, 0, '', '', 1, '1', '1', '1', '1', '2020-09-08 09:19:24', '2020-09-08 12:59:36', NULL);
INSERT INTO `sys_menu` VALUES (510, '', 'namespace', 'tree', '', '/0/63/506/510', 'M', '', '', 506, 0, '', '', 1, '1', '1', '1', '1', '2020-09-08 14:03:02', '2020-09-08 14:03:10', NULL);
INSERT INTO `sys_menu` VALUES (511, '', '获取namespace列表', '', '/k8s-api/api/v1/namespaces', '/0/63/506/510/511', 'A', 'GET', '', 510, 0, '', '', 0, '1', '1', '1', '1', '2020-09-08 14:03:35', '2020-09-08 14:03:45', NULL);
INSERT INTO `sys_menu` VALUES (512, 'namespace', 'namespace', 'list', 'namespace', '/0/501/512', 'C', '', 'namespace:namespace:list', 501, 0, '', '/kubernetes/namespace/index', 2, '0', '1', '1', '1', '2020-09-08 14:06:02', '2020-09-08 14:08:28', NULL);
INSERT INTO `sys_menu` VALUES (513, '', '获取namespace', '', '/k8s-api/api/v1/namespaces/:name', '/0/63/506/510/513', 'A', 'GET', '', 510, 0, '', '', 0, '1', '1', '', '1', '2020-09-08 14:35:54', '2020-09-08 14:35:54', NULL);
INSERT INTO `sys_menu` VALUES (514, 'deployment', 'deployment', 'cascader', 'deployment', '/0/501/514', 'C', '', 'deployment:deployment:list', 501, 0, '', '/kubernetes/deployment/index', 3, '0', '1', '1', '1', '2020-09-08 14:55:19', '2020-09-08 14:55:34', NULL);
INSERT INTO `sys_menu` VALUES (515, '', 'deployment', 'tree-table', '', '/0/63/506/515', 'M', '', '', 506, 0, '', '', 3, '1', '1', '1', '1', '2020-09-08 15:37:13', '2020-09-08 15:37:19', NULL);
INSERT INTO `sys_menu` VALUES (516, '', '获取列表', '', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments', '/0/63/506/515/516', 'A', 'GET', '', 515, 0, '', '', 0, '1', '1', '1', '1', '2020-09-08 15:38:31', '2020-09-08 15:38:42', NULL);
INSERT INTO `sys_menu` VALUES (517, '', '获取详细信息', '', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments/:deploymentName', '/0/63/506/515/517', 'A', 'GET', '', 515, 0, '', '', 1, '1', '1', '1', '1', '2020-09-08 15:39:08', '2020-09-08 17:03:01', NULL);
INSERT INTO `sys_menu` VALUES (518, '', '重启', '', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments/:deploymentName', '/0/63/506/515/518', 'A', 'PATCH', '', 515, 0, '', '', 3, '1', '1', '', '1', '2020-09-08 17:02:53', '2020-09-08 17:02:53', NULL);
INSERT INTO `sys_menu` VALUES (519, 'deploymentInfo', 'deploymentInfo', 'eye', 'deployment/:namespace/:name', '/0/501/519', 'C', '', 'deployment:deployment:info', 501, 0, '', '/kubernetes/deployment/info', 4, '1', '1', '1', '0', '2020-09-09 15:26:03', '2020-09-10 11:20:56', NULL);
INSERT INTO `sys_menu` VALUES (520, '', 'service', '', '', '/0/63/506/520', 'M', '', '', 506, 0, '', '', 4, '1', '1', '1', '1', '2020-09-10 10:18:15', '2020-09-10 10:18:20', NULL);
INSERT INTO `sys_menu` VALUES (521, '', '获取列表', '', '/k8s-api/api/v1/namespaces/:namespaceName/services', '/0/63/506/520/521', 'A', 'GET', '', 520, 0, '', '', 0, '1', '1', '', '1', '2020-09-10 10:19:09', '2020-09-10 10:19:09', NULL);
INSERT INTO `sys_menu` VALUES (522, '', '获取详细信息', '', '/k8s-api/api/v1/namespaces/:namespaceName/services/:serviceName', '/0/63/506/520/522', 'A', 'GET', '', 520, 0, '', '', 0, '1', '1', '', '1', '2020-09-10 10:19:41', '2020-09-10 10:19:41', NULL);
INSERT INTO `sys_menu` VALUES (523, 'service', 'service', 'date-range', 'service', '/0/501/523', 'C', '', 'service:service:list', 501, 0, '', '/kubernetes/service/index', 5, '0', '1', '1', '1', '2020-09-10 11:20:22', '2020-09-11 15:42:28', NULL);
INSERT INTO `sys_menu` VALUES (527, '', 'istio', '', '', '/0/63/506/527', 'M', '', '', 506, 0, '', '', 5, '1', '1', '1', '1', '2020-09-11 10:50:16', '2020-09-11 10:50:25', NULL);
INSERT INTO `sys_menu` VALUES (528, '', '获取gw列表', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/gateways', '/0/63/506/527/528', 'A', 'GET', '', 527, 0, '', '', 1, '1', '1', '1', '1', '2020-09-11 10:50:57', '2020-09-11 10:51:42', NULL);
INSERT INTO `sys_menu` VALUES (529, '', '获取gw', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/gateways/:gatewayName', '/0/63/506/527/529', 'A', 'GET', '', 527, 0, '', '', 2, '1', '1', '1', '1', '2020-09-11 10:51:33', '2020-09-11 10:57:28', NULL);
INSERT INTO `sys_menu` VALUES (530, '', '获取vs列表', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/virtualservices', '/0/63/506/527/530', 'A', 'GET', '', 527, 0, '', '', 3, '1', '1', '1', '1', '2020-09-11 10:50:57', '2020-09-11 10:51:42', NULL);
INSERT INTO `sys_menu` VALUES (531, '', '获取vs', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/virtualservices/:virtualServiceName', '/0/63/506/527/531', 'A', 'GET', '', 527, 0, '', '', 4, '1', '1', '1', '1', '2020-09-11 10:50:57', '2020-09-11 10:51:42', NULL);
INSERT INTO `sys_menu` VALUES (532, '', '获取se列表', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/serviceentries', '/0/63/506/527/532', 'A', 'GET', '', 527, 0, '', '', 5, '1', '1', '1', '1', '2020-09-11 10:50:57', '2020-09-11 10:51:42', NULL);
INSERT INTO `sys_menu` VALUES (533, '', '获取se', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/serviceentries/:serviceEntryName', '/0/63/506/527/533', 'A', 'GET', '', 527, 0, '', '', 6, '1', '1', '1', '1', '2020-09-11 10:50:57', '2020-09-11 10:51:42', NULL);
INSERT INTO `sys_menu` VALUES (534, '', '获取dr列表', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/destinationrules', '/0/63/506/527/534', 'A', 'GET', '', 527, 0, '', '', 7, '1', '1', '1', '1', '2020-09-11 10:50:57', '2020-09-11 10:51:42', NULL);
INSERT INTO `sys_menu` VALUES (535, '', '获取dr', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/destinationrules/:destinationRuleName', '/0/63/506/527/535', 'A', 'GET', '', 527, 0, '', '', 8, '1', '1', '1', '1', '2020-09-11 10:50:57', '2020-09-11 10:51:42', NULL);
INSERT INTO `sys_menu` VALUES (536, 'gateway', 'gateway', 'dict', 'gateway', '/0/501/536', 'C', '', 'gateway: gateway:list', 501, 0, '', '/kubernetes/gateway/index', 6, '0', '1', '1', '1', '2020-09-10 11:20:22', '2020-09-11 15:42:38', NULL);
INSERT INTO `sys_menu` VALUES (537, 'virtualService', 'virtualService', 'druid', 'virtualservice', '/0/501/537', 'C', '', 'virtualservice: virtualservice:list', 501, 0, '', '/kubernetes/virtualservice/index', 6, '0', '1', '1', '1', '2020-09-10 11:20:22', '2020-09-11 15:42:48', NULL);
INSERT INTO `sys_menu` VALUES (538, 'serviceEntry', 'serviceentry', 'lock', 'serviceentry', '/0/501/538', 'C', '', 'serviceentry: serviceentry:list', 501, 0, '', '/kubernetes/serviceentry/index', 6, '0', '1', '1', '1', '2020-09-10 11:20:22', '2020-09-11 15:43:11', NULL);
INSERT INTO `sys_menu` VALUES (539, 'destinationRule', 'destinationRule', 'component', 'destinationrule', '/0/501/539', 'C', '', 'destinationrule: destinationrule:list', 501, 0, '', '/kubernetes/destinationrule/index', 6, '0', '1', '1', '1', '2020-09-10 11:20:22', '2020-09-11 15:43:20', NULL);
INSERT INTO `sys_menu` VALUES (540, '', '修改svc', '', '/k8s-api/api/v1/namespaces/:namespaceName/services/:serviceName', '/0/63/506/520/540', 'A', 'PUT', '', 520, 0, '', '', 0, '1', '1', '', '1', '2020-09-14 17:00:25', '2020-09-14 17:00:25', NULL);
INSERT INTO `sys_menu` VALUES (541, '', '修改dp', '', '/k8s-api/apis/apps/v1/namespaces/:namespaceName/deployments/:deploymentName', '/0/63/506/515/541', 'A', 'PUT', '', 515, 0, '', '', 4, '1', '1', '', '1', '2020-09-15 09:36:42', '2020-09-15 09:36:42', NULL);
INSERT INTO `sys_menu` VALUES (542, '', '修改gw', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/gateways/:gatewayName', '/0/63/506/527/542', 'A', 'PUT', '', 527, 0, '', '', 9, '1', '1', '1', '1', '2020-09-15 10:06:47', '2020-09-15 10:07:52', NULL);
INSERT INTO `sys_menu` VALUES (543, '', '修改vs', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/virtualservices/:virtualServiceName', '/0/63/506/527/543', 'A', 'PUT', '', 527, 0, '', '', 10, '1', '1', '1', '1', '2020-09-15 10:06:47', '2020-09-15 10:07:52', NULL);
INSERT INTO `sys_menu` VALUES (544, '', '修改se', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/serviceentries/:serviceEntryName', '/0/63/506/527/544', 'A', 'PUT', '', 527, 0, '', '', 11, '1', '1', '1', '1', '2020-09-15 10:06:47', '2020-09-15 10:07:52', NULL);
INSERT INTO `sys_menu` VALUES (545, '', '修改dr', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/:namespaceName/destinationrules/:destinationRuleName', '/0/63/506/527/545', 'A', 'PUT', '', 527, 0, '', '', 12, '1', '1', '1', '1', '2020-09-15 10:06:47', '2020-09-15 10:07:52', NULL);
INSERT INTO `sys_menu` VALUES (546, 'createResource', 'createResource', 'upload', 'createResource', '/0/501/546', 'C', '', 'createresource:createresource:create', 501, 0, '', '/kubernetes/createresource/index', 9, '0', '1', '1', '1', '2020-09-16 09:31:25', '2020-09-16 14:57:08', NULL);
INSERT INTO `sys_menu` VALUES (547, '', 'createresource', '', '/k8s-api/namespaces/:namespaceName/kind/:kind', '/0/63/506/547', 'A', 'POST', '', 506, 0, '', '', 10, '1', '1', '1', '1', '2020-09-16 11:08:35', '2020-09-16 14:00:30', NULL);
INSERT INTO `sys_menu` VALUES (548, 'event', 'event', 'monitor', 'event', '/0/501/548', 'C', '', 'evnet:event:list', 501, 0, '', '/kubernetes/event/index', 8, '0', '1', '1', '1', '2020-09-16 14:56:35', '2020-09-18 14:25:07', NULL);
INSERT INTO `sys_menu` VALUES (549, '', 'event', '', '', '/0/63/506/549', 'M', '', '', 506, 0, '', '', 6, '1', '1', '', '1', '2020-09-16 15:14:37', '2020-09-16 15:14:37', NULL);
INSERT INTO `sys_menu` VALUES (550, '', '获取event列表', '', '/k8s-api/api/v1/namespaces/:namespaceName/events', '/0/63/506/549/550', 'A', 'GET', '', 549, 0, '', '', 0, '1', '1', '', '1', '2020-09-16 15:15:02', '2020-09-16 15:15:02', NULL);
INSERT INTO `sys_menu` VALUES (551, '', '详细信息', '', '', '/0/501/502/551', 'F', '', 'node:node:detail', 502, 0, '', '', 0, '0', '1', '1', '1', '2020-09-18 16:56:22', '2020-09-21 09:49:08', NULL);
INSERT INTO `sys_menu` VALUES (552, '', '获取列表', '', '', '/0/501/502/552', 'F', '', 'node:node:query', 502, 0, '', '', 0, '0', '1', '1', '1', '2020-09-21 09:41:20', '2020-09-21 09:44:50', NULL);
INSERT INTO `sys_menu` VALUES (553, '', '获取列表', '', '', '/0/501/512/553', 'F', '', 'namespace:namespace:query', 512, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 09:47:55', '2020-09-21 09:47:55', NULL);
INSERT INTO `sys_menu` VALUES (554, '', '详细信息', '', '', '/0/501/512/554', 'F', '', 'namespace:namespace:detail', 512, 0, '', '', 0, '0', '1', '1', '1', '2020-09-21 09:48:15', '2020-09-21 09:49:18', NULL);
INSERT INTO `sys_menu` VALUES (555, '', '获取列表', '', '', '/0/501/514/555', 'F', '', 'deployment:deployment:query', 514, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 09:52:39', '2020-09-21 09:52:39', NULL);
INSERT INTO `sys_menu` VALUES (556, '', 'view', '', '', '/0/501/514/556', 'F', '', 'deployment:deployment:detail', 514, 0, '', '', 0, '0', '1', '1', '1', '2020-09-21 09:53:03', '2020-09-21 09:56:05', NULL);
INSERT INTO `sys_menu` VALUES (557, '', 'json', '', '', '/0/501/514/557', 'F', '', 'deployment:deployment:json', 514, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 09:53:23', '2020-09-21 09:53:23', NULL);
INSERT INTO `sys_menu` VALUES (558, '', '重启', '', '', '/0/501/514/558', 'F', '', 'deployment:deployment:restart', 514, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 09:53:38', '2020-09-21 09:53:38', NULL);
INSERT INTO `sys_menu` VALUES (559, '', '修改', '', '', '/0/501/514/559', 'F', '', 'deployment:deployment:edit', 514, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 09:55:12', '2020-09-21 09:55:12', NULL);
INSERT INTO `sys_menu` VALUES (560, '', '获取列表', '', '', '/0/501/523/560', 'F', '', 'service:service:query', 523, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:01:25', '2020-09-21 10:01:25', NULL);
INSERT INTO `sys_menu` VALUES (561, '', 'json', '', '', '/0/501/523/561', 'F', '', 'service:service:json', 523, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:01:39', '2020-09-21 10:01:39', NULL);
INSERT INTO `sys_menu` VALUES (562, '', '提交修改', '', '', '/0/501/523/562', 'F', '', 'service:service:edit', 523, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:01:54', '2020-09-21 10:01:54', NULL);
INSERT INTO `sys_menu` VALUES (563, '', '获取列表', '', '', '/0/501/536/563', 'F', '', 'gateway:gateway:query', 536, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:03:51', '2020-09-21 10:03:51', NULL);
INSERT INTO `sys_menu` VALUES (564, '', 'json', '', '', '/0/501/536/564', 'F', '', 'gateway:gateway:json', 536, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:04:05', '2020-09-21 10:04:05', NULL);
INSERT INTO `sys_menu` VALUES (565, '', '提交修改', '', '', '/0/501/536/565', 'F', '', 'gateway:gateway:edit', 536, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:04:18', '2020-09-21 10:04:18', NULL);
INSERT INTO `sys_menu` VALUES (566, '', '获取列表', '', '', '/0/501/537/566', 'F', '', 'virtualService:virtualService:query', 537, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:06:03', '2020-09-21 10:06:03', NULL);
INSERT INTO `sys_menu` VALUES (567, '', 'json', '', '', '/0/501/537/567', 'F', '', 'virtualService:virtualService:json', 537, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:06:13', '2020-09-21 10:06:13', NULL);
INSERT INTO `sys_menu` VALUES (568, '', '提交修改', '', '', '/0/501/537/568', 'F', '', 'virtualService:virtualService:edit', 537, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:06:27', '2020-09-21 10:06:27', NULL);
INSERT INTO `sys_menu` VALUES (569, '', '获取列表', '', '', '/0/501/538/569', 'F', '', 'serviceEntry:serviceEntry:query', 538, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:07:40', '2020-09-21 10:07:40', NULL);
INSERT INTO `sys_menu` VALUES (570, '', 'json', '', '', '/0/501/538/570', 'F', '', 'serviceEntry:serviceEntry:json', 538, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:07:50', '2020-09-21 10:07:50', NULL);
INSERT INTO `sys_menu` VALUES (571, '', '提交修改', '', '', '/0/501/538/571', 'F', '', 'serviceEntry:serviceEntry:edit', 538, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:08:05', '2020-09-21 10:08:05', NULL);
INSERT INTO `sys_menu` VALUES (572, '', '获取列表', '', '', '/0/501/539/572', 'F', '', 'destinationRule:destinationRule:query', 539, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:09:22', '2020-09-21 10:09:22', NULL);
INSERT INTO `sys_menu` VALUES (573, '', 'json', '', '', '/0/501/539/573', 'F', '', 'destinationRule:destinationRule:json', 539, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:09:32', '2020-09-21 10:09:32', NULL);
INSERT INTO `sys_menu` VALUES (574, '', '提交修改', '', '', '/0/501/539/574', 'F', '', 'destinationRule:destinationRule:edit', 539, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:09:42', '2020-09-21 10:09:42', NULL);
INSERT INTO `sys_menu` VALUES (575, '', '获取列表', '', '', '/0/501/548/575', 'F', '', 'evnet:event:query', 548, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:10:38', '2020-09-21 10:10:38', NULL);
INSERT INTO `sys_menu` VALUES (576, '', '创建', '', '', '/0/501/546/576', 'F', '', 'createResource:createResource:create', 546, 0, '', '', 0, '0', '1', '', '1', '2020-09-21 10:13:03', '2020-09-21 10:13:03', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_operlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_operlog`;
CREATE TABLE `sys_operlog` (
  `oper_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `business_type` varchar(128) DEFAULT NULL,
  `business_types` varchar(128) DEFAULT NULL,
  `method` varchar(128) DEFAULT NULL,
  `request_method` varchar(128) DEFAULT NULL,
  `operator_type` varchar(128) DEFAULT NULL,
  `oper_name` varchar(128) DEFAULT NULL,
  `dept_name` varchar(128) DEFAULT NULL,
  `oper_url` varchar(255) DEFAULT NULL,
  `oper_ip` varchar(128) DEFAULT NULL,
  `oper_location` varchar(128) DEFAULT NULL,
  `oper_param` varchar(255) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `oper_time` timestamp NULL DEFAULT NULL,
  `json_result` varchar(255) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `latency_time` varchar(128) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_operlog
-- ----------------------------
BEGIN;
INSERT INTO `sys_operlog` VALUES (1, '修改文章', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/article', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 10:56:23', '', '0', '0', '', '5.715226ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 10:56:23', '2020-09-04 10:56:23', NULL);
INSERT INTO `sys_operlog` VALUES (2, '用户登录', '10', '', 'POST', 'POST', '', '-', '', '/login', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 14:14:56', '', '0', '0', '', '73.671527ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 14:14:56', '2020-09-04 14:14:56', NULL);
INSERT INTO `sys_operlog` VALUES (3, '用户登录', '10', '', 'POST', 'POST', '', '-', '', '/login', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 14:34:38', '', '0', '0', '', '75.484171ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 14:34:38', '2020-09-04 14:34:38', NULL);
INSERT INTO `sys_operlog` VALUES (4, '用户登录', '10', '', 'POST', 'POST', '', '-', '', '/login', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 14:43:55', '', '0', '0', '', '75.02207ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 14:43:55', '2020-09-04 14:43:55', NULL);
INSERT INTO `sys_operlog` VALUES (5, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 14:44:25', '', '0', '0', '', '20.71241ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 14:44:25', '2020-09-04 14:44:25', NULL);
INSERT INTO `sys_operlog` VALUES (6, '退出登录', '11', '', 'POST', 'POST', '', 'admin', '', '/api/v1/logout', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:01:43', '', '0', '0', '', '7.347971ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:01:43', '2020-09-04 16:01:43', NULL);
INSERT INTO `sys_operlog` VALUES (7, '用户登录', '10', '', 'POST', 'POST', '', '-', '', '/login', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:01:49', '', '0', '0', '', '67.691914ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:01:49', '2020-09-04 16:01:49', NULL);
INSERT INTO `sys_operlog` VALUES (8, '修改部门', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/dept', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:07:45', '', '0', '0', '', '9.899612ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:07:45', '2020-09-04 16:07:45', NULL);
INSERT INTO `sys_operlog` VALUES (9, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/operlog/8,7,6,5,4,3,2,1', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:13:00', '', '0', '0', '', '2.666951ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:13:00', '2020-09-04 16:13:00', NULL);
INSERT INTO `sys_operlog` VALUES (10, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/operlog/9,8,7,6,5,4,3,2,1', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:14:34', '', '0', '0', '', '6.476941ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:14:34', '2020-09-04 16:14:34', NULL);
INSERT INTO `sys_operlog` VALUES (11, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/operlog/10,9,8,7,6,5,4,3,2,1', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:15:05', '', '0', '0', '', '7.851393ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:15:05', '2020-09-04 16:15:05', NULL);
INSERT INTO `sys_operlog` VALUES (12, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/operlog/11,10,9,8,7,6,5,4,3,2', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:17:05', '', '0', '0', '', '4.821555ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:19:00', '2020-09-04 16:19:00', NULL);
INSERT INTO `sys_operlog` VALUES (13, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/operlog/11,10,9,8,7,6,5,4,3,2', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:19:56', '', '0', '0', '', '5.5903ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:19:57', '2020-09-04 16:19:57', NULL);
INSERT INTO `sys_operlog` VALUES (14, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/operlog/13,12,11,10,9,8,7,6,5,4', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:20:15', '', '0', '0', '', '8.668442ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:20:15', '2020-09-04 16:20:15', NULL);
INSERT INTO `sys_operlog` VALUES (15, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/operlog/14,13,12,11,10,9,8,7,6,5', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:27:53', '', '0', '0', '', '7.177097ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:27:53', '2020-09-04 16:27:53', NULL);
INSERT INTO `sys_operlog` VALUES (16, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/operlog/15,14,13,12,11,10,9,8,7,6', '127.0.0.1', '内部IP', 'null', '1', '2020-09-04 16:29:48', '', '0', '0', '', '7.220082ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:29:52', '2020-09-04 16:29:52', NULL);
INSERT INTO `sys_operlog` VALUES (17, '修改文章', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/article', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 16:32:45', '', '0', '0', '', '9.829143ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:34:31', '2020-09-04 16:34:31', NULL);
INSERT INTO `sys_operlog` VALUES (18, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/operlog/17,16,15,14,13,12,11,10,9,8', '127.0.0.1', '内部IP', 'null', '1', '2020-09-04 16:35:27', '', '0', '0', '', '6.015343ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 16:37:33', '2020-09-04 16:37:33', NULL);
INSERT INTO `sys_operlog` VALUES (19, '修改管理员', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/sysUser', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 17:01:16', '', '0', '0', '', '17.880363ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 17:01:16', '2020-09-04 17:01:16', NULL);
INSERT INTO `sys_operlog` VALUES (20, '修改管理员', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/sysUser', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 17:02:49', '', '0', '0', '', '10.231955ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 17:02:49', '2020-09-04 17:02:49', NULL);
INSERT INTO `sys_operlog` VALUES (21, '修改管理员', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/sysUser', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 17:03:06', '', '0', '0', '', '8.783999ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 17:03:07', '2020-09-04 17:03:07', NULL);
INSERT INTO `sys_operlog` VALUES (22, '创建文章', '1', '', 'POST', 'POST', '', 'dev', '', '/api/v1/article', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 17:03:30', '', '0', '0', '', '6.376451ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 17:03:30', '2020-09-04 17:03:30', NULL);
INSERT INTO `sys_operlog` VALUES (23, '创建文章', '1', '', 'POST', 'POST', '', 'dev', '', '/api/v1/article', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 17:03:38', '', '0', '0', '', '5.012593ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 17:03:38', '2020-09-04 17:03:38', NULL);
INSERT INTO `sys_operlog` VALUES (24, '修改管理员', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/sysUser', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 17:06:23', '', '0', '0', '', '11.727014ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 17:06:23', '2020-09-04 17:06:23', NULL);
INSERT INTO `sys_operlog` VALUES (25, '修改文章', '2', '', 'PUT', 'PUT', '', 'dev', '', '/api/v1/article', '127.0.0.1', '内部IP', 'null', '0', '2020-09-04 17:06:47', '', '0', '0', '', '6.70037ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-04 17:06:47', '2020-09-04 17:06:47', NULL);
INSERT INTO `sys_operlog` VALUES (26, '', '1', '', 'POST', 'POST', '', '', '', '/logout', '127.0.0.1', '内部IP', 'null', '1', '2020-09-07 11:13:48', '', '0', '0', '', '73.809µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 11:13:48', '2020-09-07 11:13:48', NULL);
INSERT INTO `sys_operlog` VALUES (27, '', '1', '', 'POST', 'POST', '', '', '', '/logout', '127.0.0.1', '内部IP', 'null', '1', '2020-09-07 11:13:51', '', '0', '0', '', '66.774µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 11:13:51', '2020-09-07 11:13:51', NULL);
INSERT INTO `sys_operlog` VALUES (28, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:14:04', '', '0', '0', '', '9.077205ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:14:04', '2020-09-07 14:14:04', NULL);
INSERT INTO `sys_operlog` VALUES (29, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:14:38', '', '0', '0', '', '10.244364ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:14:38', '2020-09-07 14:14:38', NULL);
INSERT INTO `sys_operlog` VALUES (30, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:16:19', '', '0', '0', '', '11.385072ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:16:19', '2020-09-07 14:16:19', NULL);
INSERT INTO `sys_operlog` VALUES (31, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/menu/498', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:17:23', '', '0', '0', '', '7.748612ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:17:23', '2020-09-07 14:17:23', NULL);
INSERT INTO `sys_operlog` VALUES (32, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:27:34', '', '0', '0', '', '9.29473ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:27:34', '2020-09-07 14:27:34', NULL);
INSERT INTO `sys_operlog` VALUES (33, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:29:04', '', '0', '0', '', '9.168576ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:29:04', '2020-09-07 14:29:04', NULL);
INSERT INTO `sys_operlog` VALUES (34, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:29:25', '', '0', '0', '', '30.157719ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:29:25', '2020-09-07 14:29:25', NULL);
INSERT INTO `sys_operlog` VALUES (35, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:31:23', '', '0', '0', '', '12.315455ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:31:23', '2020-09-07 14:31:23', NULL);
INSERT INTO `sys_operlog` VALUES (36, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:32:20', '', '0', '0', '', '9.463877ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:32:20', '2020-09-07 14:32:20', NULL);
INSERT INTO `sys_operlog` VALUES (37, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:32:34', '', '0', '0', '', '9.123888ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:32:34', '2020-09-07 14:32:34', NULL);
INSERT INTO `sys_operlog` VALUES (38, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:34:37', '', '0', '0', '', '6.405344ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:34:37', '2020-09-07 14:34:37', NULL);
INSERT INTO `sys_operlog` VALUES (39, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:34:47', '', '0', '0', '', '5.066769ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:34:47', '2020-09-07 14:34:47', NULL);
INSERT INTO `sys_operlog` VALUES (40, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:34:54', '', '0', '0', '', '6.067776ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:34:54', '2020-09-07 14:34:54', NULL);
INSERT INTO `sys_operlog` VALUES (41, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:35:16', '', '0', '0', '', '10.231463ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:35:16', '2020-09-07 14:35:16', NULL);
INSERT INTO `sys_operlog` VALUES (42, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/menu/504', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:35:19', '', '0', '0', '', '4.868286ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:35:19', '2020-09-07 14:35:19', NULL);
INSERT INTO `sys_operlog` VALUES (43, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:36:04', '', '0', '0', '', '8.828534ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:36:04', '2020-09-07 14:36:04', NULL);
INSERT INTO `sys_operlog` VALUES (44, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-07 14:37:31', '', '0', '0', '', '7.803783ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 14:37:31', '2020-09-07 14:37:31', NULL);
INSERT INTO `sys_operlog` VALUES (45, '', '3', '', 'DELETE', 'DELETE', '', '', '', '/api/v1/article/', '127.0.0.1', '内部IP', 'null', '1', '2020-09-07 16:12:15', '', '0', '0', '', '99.222µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-07 16:12:15', '2020-09-07 16:12:15', NULL);
INSERT INTO `sys_operlog` VALUES (46, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 08:47:34', '', '0', '0', '', '10.164743ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 08:47:34', '2020-09-08 08:47:34', NULL);
INSERT INTO `sys_operlog` VALUES (47, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 08:48:46', '', '0', '0', '', '6.628919ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 08:48:46', '2020-09-08 08:48:46', NULL);
INSERT INTO `sys_operlog` VALUES (48, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 08:56:18', '', '0', '0', '', '6.005829ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 08:56:18', '2020-09-08 08:56:18', NULL);
INSERT INTO `sys_operlog` VALUES (49, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 08:58:32', '', '0', '0', '', '5.630839ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 08:58:32', '2020-09-08 08:58:32', NULL);
INSERT INTO `sys_operlog` VALUES (50, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 08:59:10', '', '0', '0', '', '5.664567ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 08:59:10', '2020-09-08 08:59:10', NULL);
INSERT INTO `sys_operlog` VALUES (51, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 08:59:27', '', '0', '0', '', '5.694201ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 08:59:27', '2020-09-08 08:59:27', NULL);
INSERT INTO `sys_operlog` VALUES (52, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:00:38', '', '0', '0', '', '8.958291ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:00:38', '2020-09-08 09:00:38', NULL);
INSERT INTO `sys_operlog` VALUES (53, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:00:57', '', '0', '0', '', '11.487637ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:00:57', '2020-09-08 09:00:57', NULL);
INSERT INTO `sys_operlog` VALUES (54, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:05:06', '', '0', '0', '', '7.197445ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:05:06', '2020-09-08 09:05:06', NULL);
INSERT INTO `sys_operlog` VALUES (55, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:05:55', '', '0', '0', '', '7.666209ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:05:55', '2020-09-08 09:05:55', NULL);
INSERT INTO `sys_operlog` VALUES (56, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:06:47', '', '0', '0', '', '6.16813ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:06:47', '2020-09-08 09:06:47', NULL);
INSERT INTO `sys_operlog` VALUES (57, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/menu/505', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:07:34', '', '0', '0', '', '4.076575ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:07:34', '2020-09-08 09:07:34', NULL);
INSERT INTO `sys_operlog` VALUES (58, '', '3', '', 'DELETE', 'DELETE', '', 'admin', '', '/api/v1/menu/503', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:07:38', '', '0', '0', '', '3.478213ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:07:38', '2020-09-08 09:07:38', NULL);
INSERT INTO `sys_operlog` VALUES (59, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:08:02', '', '0', '0', '', '21.201288ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:08:02', '2020-09-08 09:08:02', NULL);
INSERT INTO `sys_operlog` VALUES (60, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:19:24', '', '0', '0', '', '7.784985ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:19:24', '2020-09-08 09:19:24', NULL);
INSERT INTO `sys_operlog` VALUES (61, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:19:29', '', '0', '0', '', '37.788354ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:19:29', '2020-09-08 09:19:29', NULL);
INSERT INTO `sys_operlog` VALUES (62, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 09:19:39', '', '0', '0', '', '21.599077ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 09:19:39', '2020-09-08 09:19:39', NULL);
INSERT INTO `sys_operlog` VALUES (63, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 12:56:46', '', '0', '0', '', '21.652085ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 12:56:46', '2020-09-08 12:56:46', NULL);
INSERT INTO `sys_operlog` VALUES (64, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 12:59:36', '', '0', '0', '', '8.12464ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 12:59:36', '2020-09-08 12:59:36', NULL);
INSERT INTO `sys_operlog` VALUES (65, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:03:02', '', '0', '0', '', '17.000927ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:03:02', '2020-09-08 14:03:02', NULL);
INSERT INTO `sys_operlog` VALUES (66, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:03:10', '', '0', '0', '', '11.147858ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:03:10', '2020-09-08 14:03:10', NULL);
INSERT INTO `sys_operlog` VALUES (67, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:03:35', '', '0', '0', '', '8.353839ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:03:35', '2020-09-08 14:03:35', NULL);
INSERT INTO `sys_operlog` VALUES (68, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:03:45', '', '0', '0', '', '13.314785ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:03:45', '2020-09-08 14:03:45', NULL);
INSERT INTO `sys_operlog` VALUES (69, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:04:03', '', '0', '0', '', '34.280825ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:04:03', '2020-09-08 14:04:03', NULL);
INSERT INTO `sys_operlog` VALUES (70, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:06:02', '', '0', '0', '', '10.978184ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:06:02', '2020-09-08 14:06:02', NULL);
INSERT INTO `sys_operlog` VALUES (71, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:06:22', '', '0', '0', '', '30.29953ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:06:22', '2020-09-08 14:06:22', NULL);
INSERT INTO `sys_operlog` VALUES (72, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:08:20', '', '0', '0', '', '18.458542ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:08:20', '2020-09-08 14:08:20', NULL);
INSERT INTO `sys_operlog` VALUES (73, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:08:28', '', '0', '0', '', '8.608863ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:08:28', '2020-09-08 14:08:28', NULL);
INSERT INTO `sys_operlog` VALUES (74, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:35:54', '', '0', '0', '', '11.070433ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:35:54', '2020-09-08 14:35:54', NULL);
INSERT INTO `sys_operlog` VALUES (75, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:36:06', '', '0', '0', '', '26.854093ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:36:06', '2020-09-08 14:36:06', NULL);
INSERT INTO `sys_operlog` VALUES (76, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:55:19', '', '0', '0', '', '11.967318ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:55:19', '2020-09-08 14:55:19', NULL);
INSERT INTO `sys_operlog` VALUES (77, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:55:34', '', '0', '0', '', '18.961329ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:55:34', '2020-09-08 14:55:34', NULL);
INSERT INTO `sys_operlog` VALUES (78, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 14:55:48', '', '0', '0', '', '28.672385ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 14:55:48', '2020-09-08 14:55:48', NULL);
INSERT INTO `sys_operlog` VALUES (79, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 15:37:13', '', '0', '0', '', '16.26386ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 15:37:13', '2020-09-08 15:37:13', NULL);
INSERT INTO `sys_operlog` VALUES (80, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 15:37:19', '', '0', '0', '', '10.283617ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 15:37:19', '2020-09-08 15:37:19', NULL);
INSERT INTO `sys_operlog` VALUES (81, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 15:38:31', '', '0', '0', '', '7.143037ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 15:38:31', '2020-09-08 15:38:31', NULL);
INSERT INTO `sys_operlog` VALUES (82, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 15:38:42', '', '0', '0', '', '10.406635ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 15:38:42', '2020-09-08 15:38:42', NULL);
INSERT INTO `sys_operlog` VALUES (83, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 15:39:08', '', '0', '0', '', '8.246052ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 15:39:08', '2020-09-08 15:39:08', NULL);
INSERT INTO `sys_operlog` VALUES (84, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 15:39:22', '', '0', '0', '', '29.526023ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 15:39:22', '2020-09-08 15:39:22', NULL);
INSERT INTO `sys_operlog` VALUES (85, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 17:02:53', '', '0', '0', '', '13.747905ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 17:02:53', '2020-09-08 17:02:53', NULL);
INSERT INTO `sys_operlog` VALUES (86, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 17:03:01', '', '0', '0', '', '9.110795ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 17:03:01', '2020-09-08 17:03:01', NULL);
INSERT INTO `sys_operlog` VALUES (87, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 17:04:15', '', '0', '0', '', '30.122584ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 17:04:15', '2020-09-08 17:04:15', NULL);
INSERT INTO `sys_operlog` VALUES (88, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 17:04:41', '', '0', '0', '', '73.742557ms', 'PostmanRuntime/7.25.0', '2020-09-08 17:04:41', '2020-09-08 17:04:41', NULL);
INSERT INTO `sys_operlog` VALUES (89, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 17:14:33', '', '0', '0', '', '33.8597ms', 'PostmanRuntime/7.25.0', '2020-09-08 17:14:33', '2020-09-08 17:14:33', NULL);
INSERT INTO `sys_operlog` VALUES (90, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 17:25:33', '', '0', '0', '', '31.802955ms', 'PostmanRuntime/7.25.0', '2020-09-08 17:25:33', '2020-09-08 17:25:33', NULL);
INSERT INTO `sys_operlog` VALUES (91, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 17:32:37', '', '0', '0', '', '48.499993ms', 'PostmanRuntime/7.25.0', '2020-09-08 17:32:37', '2020-09-08 17:32:37', NULL);
INSERT INTO `sys_operlog` VALUES (92, '', '3', '', 'DELETE', 'DELETE', '', '', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '1', '2020-09-08 17:43:26', '', '0', '0', '', '93.384µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 17:43:26', '2020-09-08 17:43:26', NULL);
INSERT INTO `sys_operlog` VALUES (93, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 17:44:45', '', '0', '0', '', '26.519765ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 17:44:45', '2020-09-08 17:44:45', NULL);
INSERT INTO `sys_operlog` VALUES (94, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 17:45:36', '', '0', '0', '', '27.692107ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 17:45:36', '2020-09-08 17:45:36', NULL);
INSERT INTO `sys_operlog` VALUES (95, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-08 17:45:48', '', '0', '0', '', '22.017708ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-08 17:45:48', '2020-09-08 17:45:48', NULL);
INSERT INTO `sys_operlog` VALUES (96, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 09:10:34', '', '0', '0', '', '27.304254ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-09 09:10:34', '2020-09-09 09:10:34', NULL);
INSERT INTO `sys_operlog` VALUES (97, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 09:10:41', '', '0', '0', '', '15.74389ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-09 09:10:41', '2020-09-09 09:10:41', NULL);
INSERT INTO `sys_operlog` VALUES (98, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 09:12:36', '', '0', '0', '', '25.423163ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-09 09:12:36', '2020-09-09 09:12:36', NULL);
INSERT INTO `sys_operlog` VALUES (99, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 09:23:31', '', '0', '0', '', '20.133903ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-09 09:23:31', '2020-09-09 09:23:31', NULL);
INSERT INTO `sys_operlog` VALUES (100, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/demo/deployments/example-foo', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 09:26:10', '', '0', '0', '', '127.660432ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-09 09:26:10', '2020-09-09 09:26:10', NULL);
INSERT INTO `sys_operlog` VALUES (101, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 09:28:30', '', '0', '0', '', '3.047255ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-09 09:28:30', '2020-09-09 09:28:30', NULL);
INSERT INTO `sys_operlog` VALUES (102, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 09:28:37', '', '0', '0', '', '3.721689ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-09 09:28:37', '2020-09-09 09:28:37', NULL);
INSERT INTO `sys_operlog` VALUES (103, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 09:32:00', '', '0', '0', '', '59.789319ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-09 09:32:00', '2020-09-09 09:32:00', NULL);
INSERT INTO `sys_operlog` VALUES (104, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 09:32:18', '', '0', '0', '', '24.190018ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-09 09:32:18', '2020-09-09 09:32:18', NULL);
INSERT INTO `sys_operlog` VALUES (105, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 09:36:46', '', '0', '0', '', '22.76269ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', '2020-09-09 09:36:46', '2020-09-09 09:36:46', NULL);
INSERT INTO `sys_operlog` VALUES (106, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 14:40:28', '', '0', '0', '', '77.082038ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 14:40:28', '2020-09-09 14:40:28', NULL);
INSERT INTO `sys_operlog` VALUES (107, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:09:56', '', '0', '0', '', '17.723728ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:09:56', '2020-09-09 15:09:56', NULL);
INSERT INTO `sys_operlog` VALUES (108, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:26:03', '', '0', '0', '', '11.267945ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:26:03', '2020-09-09 15:26:03', NULL);
INSERT INTO `sys_operlog` VALUES (109, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:26:28', '', '0', '0', '', '32.818812ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:26:28', '2020-09-09 15:26:28', NULL);
INSERT INTO `sys_operlog` VALUES (110, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:27:18', '', '0', '0', '', '7.738205ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:27:18', '2020-09-09 15:27:18', NULL);
INSERT INTO `sys_operlog` VALUES (111, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:31:47', '', '0', '0', '', '11.185669ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:31:47', '2020-09-09 15:31:47', NULL);
INSERT INTO `sys_operlog` VALUES (112, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:32:46', '', '0', '0', '', '9.257601ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:32:46', '2020-09-09 15:32:46', NULL);
INSERT INTO `sys_operlog` VALUES (113, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:33:43', '', '0', '0', '', '9.096037ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:33:43', '2020-09-09 15:33:43', NULL);
INSERT INTO `sys_operlog` VALUES (114, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:38:45', '', '0', '0', '', '11.815604ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:38:45', '2020-09-09 15:38:45', NULL);
INSERT INTO `sys_operlog` VALUES (115, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:40:45', '', '0', '0', '', '8.228051ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:40:45', '2020-09-09 15:40:45', NULL);
INSERT INTO `sys_operlog` VALUES (116, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:41:00', '', '0', '0', '', '20.966019ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:41:00', '2020-09-09 15:41:00', NULL);
INSERT INTO `sys_operlog` VALUES (117, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:44:53', '', '0', '0', '', '8.374988ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:44:53', '2020-09-09 15:44:53', NULL);
INSERT INTO `sys_operlog` VALUES (118, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:45:03', '', '0', '0', '', '6.81878ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:45:03', '2020-09-09 15:45:03', NULL);
INSERT INTO `sys_operlog` VALUES (119, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:45:10', '', '0', '0', '', '14.57943ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:45:10', '2020-09-09 15:45:10', NULL);
INSERT INTO `sys_operlog` VALUES (120, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:45:45', '', '0', '0', '', '7.174353ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:45:45', '2020-09-09 15:45:45', NULL);
INSERT INTO `sys_operlog` VALUES (121, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:48:16', '', '0', '0', '', '7.14194ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:48:16', '2020-09-09 15:48:16', NULL);
INSERT INTO `sys_operlog` VALUES (122, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:48:44', '', '0', '0', '', '8.014622ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:48:44', '2020-09-09 15:48:44', NULL);
INSERT INTO `sys_operlog` VALUES (123, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:49:38', '', '0', '0', '', '5.39376ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:49:38', '2020-09-09 15:49:38', NULL);
INSERT INTO `sys_operlog` VALUES (124, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:51:27', '', '0', '0', '', '10.164926ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:51:27', '2020-09-09 15:51:27', NULL);
INSERT INTO `sys_operlog` VALUES (125, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:51:38', '', '0', '0', '', '8.47954ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:51:38', '2020-09-09 15:51:38', NULL);
INSERT INTO `sys_operlog` VALUES (126, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:52:34', '', '0', '0', '', '6.76666ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:52:34', '2020-09-09 15:52:34', NULL);
INSERT INTO `sys_operlog` VALUES (127, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:53:19', '', '0', '0', '', '8.115604ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:53:19', '2020-09-09 15:53:19', NULL);
INSERT INTO `sys_operlog` VALUES (128, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:54:43', '', '0', '0', '', '7.294711ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:54:43', '2020-09-09 15:54:43', NULL);
INSERT INTO `sys_operlog` VALUES (129, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:55:18', '', '0', '0', '', '11.211933ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:55:18', '2020-09-09 15:55:18', NULL);
INSERT INTO `sys_operlog` VALUES (130, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:55:39', '', '0', '0', '', '9.609625ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:55:39', '2020-09-09 15:55:39', NULL);
INSERT INTO `sys_operlog` VALUES (131, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:55:54', '', '0', '0', '', '6.60739ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:55:54', '2020-09-09 15:55:54', NULL);
INSERT INTO `sys_operlog` VALUES (132, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 15:57:22', '', '0', '0', '', '7.475714ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 15:57:22', '2020-09-09 15:57:22', NULL);
INSERT INTO `sys_operlog` VALUES (133, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 16:10:46', '', '0', '0', '', '5.976133ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 16:10:46', '2020-09-09 16:10:46', NULL);
INSERT INTO `sys_operlog` VALUES (134, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-09 17:22:32', '', '0', '0', '', '38.836733ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-09 17:22:32', '2020-09-09 17:22:32', NULL);
INSERT INTO `sys_operlog` VALUES (135, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 10:18:15', '', '0', '0', '', '10.32878ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 10:18:15', '2020-09-10 10:18:15', NULL);
INSERT INTO `sys_operlog` VALUES (136, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 10:18:20', '', '0', '0', '', '8.794906ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 10:18:20', '2020-09-10 10:18:20', NULL);
INSERT INTO `sys_operlog` VALUES (137, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 10:19:09', '', '0', '0', '', '9.870498ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 10:19:09', '2020-09-10 10:19:09', NULL);
INSERT INTO `sys_operlog` VALUES (138, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 10:19:41', '', '0', '0', '', '20.459819ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 10:19:41', '2020-09-10 10:19:41', NULL);
INSERT INTO `sys_operlog` VALUES (139, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 10:19:50', '', '0', '0', '', '31.768104ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 10:19:50', '2020-09-10 10:19:50', NULL);
INSERT INTO `sys_operlog` VALUES (140, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 11:20:22', '', '0', '0', '', '19.051012ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 11:20:22', '2020-09-10 11:20:22', NULL);
INSERT INTO `sys_operlog` VALUES (141, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 11:20:40', '', '0', '0', '', '21.423776ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 11:20:40', '2020-09-10 11:20:40', NULL);
INSERT INTO `sys_operlog` VALUES (142, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 11:20:48', '', '0', '0', '', '16.132738ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 11:20:48', '2020-09-10 11:20:48', NULL);
INSERT INTO `sys_operlog` VALUES (143, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 11:20:56', '', '0', '0', '', '27.458675ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 11:20:56', '2020-09-10 11:20:56', NULL);
INSERT INTO `sys_operlog` VALUES (144, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 11:21:01', '', '0', '0', '', '13.415184ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 11:21:01', '2020-09-10 11:21:01', NULL);
INSERT INTO `sys_operlog` VALUES (145, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 11:21:11', '', '0', '0', '', '45.642345ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 11:21:11', '2020-09-10 11:21:11', NULL);
INSERT INTO `sys_operlog` VALUES (146, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-10 17:46:06', '', '0', '0', '', '25.358023ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-10 17:46:06', '2020-09-10 17:46:06', NULL);
INSERT INTO `sys_operlog` VALUES (147, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:23:52', '', '0', '0', '', '20.905176ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:23:52', '2020-09-11 10:23:52', NULL);
INSERT INTO `sys_operlog` VALUES (148, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:24:52', '', '0', '0', '', '11.895769ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:24:52', '2020-09-11 10:24:52', NULL);
INSERT INTO `sys_operlog` VALUES (149, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:25:23', '', '0', '0', '', '9.35625ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:25:23', '2020-09-11 10:25:23', NULL);
INSERT INTO `sys_operlog` VALUES (150, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:25:29', '', '0', '0', '', '10.40555ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:25:29', '2020-09-11 10:25:29', NULL);
INSERT INTO `sys_operlog` VALUES (151, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:25:35', '', '0', '0', '', '10.068242ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:25:35', '2020-09-11 10:25:35', NULL);
INSERT INTO `sys_operlog` VALUES (152, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:25:42', '', '0', '0', '', '39.564244ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:25:42', '2020-09-11 10:25:42', NULL);
INSERT INTO `sys_operlog` VALUES (153, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '1', '2020-09-11 10:25:45', '', '0', '0', '', '2.197049ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:25:45', '2020-09-11 10:25:45', NULL);
INSERT INTO `sys_operlog` VALUES (154, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:50:16', '', '0', '0', '', '7.358883ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:50:16', '2020-09-11 10:50:16', NULL);
INSERT INTO `sys_operlog` VALUES (155, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:50:25', '', '0', '0', '', '6.44196ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:50:25', '2020-09-11 10:50:25', NULL);
INSERT INTO `sys_operlog` VALUES (156, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:50:57', '', '0', '0', '', '7.227938ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:50:57', '2020-09-11 10:50:57', NULL);
INSERT INTO `sys_operlog` VALUES (157, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:51:33', '', '0', '0', '', '4.889381ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:51:33', '2020-09-11 10:51:33', NULL);
INSERT INTO `sys_operlog` VALUES (158, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:51:42', '', '0', '0', '', '5.460131ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:51:42', '2020-09-11 10:51:42', NULL);
INSERT INTO `sys_operlog` VALUES (159, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:51:51', '', '0', '0', '', '8.341802ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:51:51', '2020-09-11 10:51:51', NULL);
INSERT INTO `sys_operlog` VALUES (160, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:52:36', '', '0', '0', '', '19.8442ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:52:36', '2020-09-11 10:52:36', NULL);
INSERT INTO `sys_operlog` VALUES (161, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:57:28', '', '0', '0', '', '8.252886ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:57:28', '2020-09-11 10:57:28', NULL);
INSERT INTO `sys_operlog` VALUES (162, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 10:57:35', '', '0', '0', '', '22.276887ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:57:35', '2020-09-11 10:57:35', NULL);
INSERT INTO `sys_operlog` VALUES (163, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '1', '2020-09-11 10:57:37', '', '0', '0', '', '716.805µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 10:57:37', '2020-09-11 10:57:37', NULL);
INSERT INTO `sys_operlog` VALUES (164, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '1', '2020-09-11 11:03:45', '', '0', '0', '', '826.847µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:03:45', '2020-09-11 11:03:45', NULL);
INSERT INTO `sys_operlog` VALUES (165, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:03:58', '', '0', '0', '', '17.512117ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:03:58', '2020-09-11 11:03:58', NULL);
INSERT INTO `sys_operlog` VALUES (166, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '1', '2020-09-11 11:03:59', '', '0', '0', '', '1.469236ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:03:59', '2020-09-11 11:03:59', NULL);
INSERT INTO `sys_operlog` VALUES (167, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '1', '2020-09-11 11:04:00', '', '0', '0', '', '828.583µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:04:00', '2020-09-11 11:04:00', NULL);
INSERT INTO `sys_operlog` VALUES (168, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '1', '2020-09-11 11:04:06', '', '0', '0', '', '660.109µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:04:06', '2020-09-11 11:04:06', NULL);
INSERT INTO `sys_operlog` VALUES (169, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:06:38', '', '0', '0', '', '25.55906ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:06:38', '2020-09-11 11:06:38', NULL);
INSERT INTO `sys_operlog` VALUES (170, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '1', '2020-09-11 11:06:39', '', '0', '0', '', '1.693254ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:06:39', '2020-09-11 11:06:39', NULL);
INSERT INTO `sys_operlog` VALUES (171, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '1', '2020-09-11 11:06:41', '', '0', '0', '', '1.532424ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:06:41', '2020-09-11 11:06:41', NULL);
INSERT INTO `sys_operlog` VALUES (172, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '1', '2020-09-11 11:17:13', '', '0', '0', '', '1.137554ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:17:13', '2020-09-11 11:17:13', NULL);
INSERT INTO `sys_operlog` VALUES (173, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:17:53', '', '0', '0', '', '7.502866ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:17:53', '2020-09-11 11:17:53', NULL);
INSERT INTO `sys_operlog` VALUES (174, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:23:30', '', '0', '0', '', '23.523246ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:23:30', '2020-09-11 11:23:30', NULL);
INSERT INTO `sys_operlog` VALUES (175, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:23:32', '', '0', '0', '', '20.854956ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:23:32', '2020-09-11 11:23:32', NULL);
INSERT INTO `sys_operlog` VALUES (176, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:23:33', '', '0', '0', '', '21.364295ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:23:33', '2020-09-11 11:23:33', NULL);
INSERT INTO `sys_operlog` VALUES (177, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:23:33', '', '0', '0', '', '20.145611ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:23:33', '2020-09-11 11:23:33', NULL);
INSERT INTO `sys_operlog` VALUES (178, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:23:46', '', '0', '0', '', '22.995933ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:23:46', '2020-09-11 11:23:46', NULL);
INSERT INTO `sys_operlog` VALUES (179, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:24:05', '', '0', '0', '', '22.504259ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:24:05', '2020-09-11 11:24:05', NULL);
INSERT INTO `sys_operlog` VALUES (180, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:26:32', '', '0', '0', '', '28.202117ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:26:32', '2020-09-11 11:26:32', NULL);
INSERT INTO `sys_operlog` VALUES (181, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:28:28', '', '0', '0', '', '1m7.879995351s', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:28:28', '2020-09-11 11:28:28', NULL);
INSERT INTO `sys_operlog` VALUES (182, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:29:47', '', '0', '0', '', '4.47216238s', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:29:47', '2020-09-11 11:29:47', NULL);
INSERT INTO `sys_operlog` VALUES (183, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:31:05', '', '0', '0', '', '53.907119ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:31:05', '2020-09-11 11:31:05', NULL);
INSERT INTO `sys_operlog` VALUES (184, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:33:34', '', '0', '0', '', '3.125194223s', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:33:34', '2020-09-11 11:33:34', NULL);
INSERT INTO `sys_operlog` VALUES (185, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:34:28', '', '0', '0', '', '3.03250355s', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:34:28', '2020-09-11 11:34:28', NULL);
INSERT INTO `sys_operlog` VALUES (186, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:35:16', '', '0', '0', '', '63.566551ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:35:16', '2020-09-11 11:35:16', NULL);
INSERT INTO `sys_operlog` VALUES (187, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:36:05', '', '0', '0', '', '47.245782ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:36:05', '2020-09-11 11:36:05', NULL);
INSERT INTO `sys_operlog` VALUES (188, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:36:56', '', '0', '0', '', '38.786797ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:36:56', '2020-09-11 11:36:56', NULL);
INSERT INTO `sys_operlog` VALUES (189, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:38:02', '', '0', '0', '', '43.331726ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:38:02', '2020-09-11 11:38:02', NULL);
INSERT INTO `sys_operlog` VALUES (190, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:38:36', '', '0', '0', '', '35.924561ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:38:36', '2020-09-11 11:38:36', NULL);
INSERT INTO `sys_operlog` VALUES (191, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:40:51', '', '0', '0', '', '27.511775789s', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:40:51', '2020-09-11 11:40:51', NULL);
INSERT INTO `sys_operlog` VALUES (192, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:43:31', '', '0', '0', '', '46.507671ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:43:31', '2020-09-11 11:43:31', NULL);
INSERT INTO `sys_operlog` VALUES (193, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:43:41', '', '0', '0', '', '38.3903ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:43:41', '2020-09-11 11:43:41', NULL);
INSERT INTO `sys_operlog` VALUES (194, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:45:20', '', '0', '0', '', '134.123425ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:45:20', '2020-09-11 11:45:20', NULL);
INSERT INTO `sys_operlog` VALUES (195, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:46:06', '', '0', '0', '', '14.300285939s', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:46:06', '2020-09-11 11:46:06', NULL);
INSERT INTO `sys_operlog` VALUES (196, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:46:21', '', '0', '0', '', '4.370667822s', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:46:21', '2020-09-11 11:46:21', NULL);
INSERT INTO `sys_operlog` VALUES (197, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:46:29', '', '0', '0', '', '2.455372825s', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:46:29', '2020-09-11 11:46:29', NULL);
INSERT INTO `sys_operlog` VALUES (198, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 11:51:40', '', '0', '0', '', '2.857501392s', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 11:51:40', '2020-09-11 11:51:40', NULL);
INSERT INTO `sys_operlog` VALUES (199, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:09:50', '', '0', '0', '', '54.061615ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:09:50', '2020-09-11 12:09:50', NULL);
INSERT INTO `sys_operlog` VALUES (200, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:16:50', '', '0', '0', '', '38.844187ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:16:50', '2020-09-11 12:16:50', NULL);
INSERT INTO `sys_operlog` VALUES (201, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:19:21', '', '0', '0', '', '43.025759ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:19:21', '2020-09-11 12:19:21', NULL);
INSERT INTO `sys_operlog` VALUES (202, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:19:21', '', '0', '0', '', '37.298227ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:19:21', '2020-09-11 12:19:21', NULL);
INSERT INTO `sys_operlog` VALUES (203, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:19:26', '', '0', '0', '', '41.478146ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:19:26', '2020-09-11 12:19:26', NULL);
INSERT INTO `sys_operlog` VALUES (204, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:19:28', '', '0', '0', '', '62.637227ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:19:28', '2020-09-11 12:19:28', NULL);
INSERT INTO `sys_operlog` VALUES (205, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:19:28', '', '0', '0', '', '31.869363ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:19:28', '2020-09-11 12:19:28', NULL);
INSERT INTO `sys_operlog` VALUES (206, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:20:02', '', '0', '0', '', '80.475854ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:20:02', '2020-09-11 12:20:02', NULL);
INSERT INTO `sys_operlog` VALUES (207, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:21:17', '', '0', '0', '', '54.252228ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:21:17', '2020-09-11 12:21:17', NULL);
INSERT INTO `sys_operlog` VALUES (208, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:22:10', '', '0', '0', '', '56.318573ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:22:10', '2020-09-11 12:22:10', NULL);
INSERT INTO `sys_operlog` VALUES (209, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:24:03', '', '0', '0', '', '47.065495ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:24:03', '2020-09-11 12:24:03', NULL);
INSERT INTO `sys_operlog` VALUES (210, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:24:43', '', '0', '0', '', '59.609224ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:24:43', '2020-09-11 12:24:43', NULL);
INSERT INTO `sys_operlog` VALUES (211, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:30:29', '', '0', '0', '', '40.931798ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:30:29', '2020-09-11 12:30:29', NULL);
INSERT INTO `sys_operlog` VALUES (212, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 12:51:52', '', '0', '0', '', '22.41354ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 12:51:52', '2020-09-11 12:51:52', NULL);
INSERT INTO `sys_operlog` VALUES (213, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 13:55:39', '', '0', '0', '', '34.215789ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 13:55:39', '2020-09-11 13:55:39', NULL);
INSERT INTO `sys_operlog` VALUES (214, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 14:15:29', '', '0', '0', '', '31.870476ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 14:15:29', '2020-09-11 14:15:29', NULL);
INSERT INTO `sys_operlog` VALUES (215, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 14:21:25', '', '0', '0', '', '35.450072ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 14:21:25', '2020-09-11 14:21:25', NULL);
INSERT INTO `sys_operlog` VALUES (216, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 14:25:16', '', '0', '0', '', '29.456354ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 14:25:16', '2020-09-11 14:25:16', NULL);
INSERT INTO `sys_operlog` VALUES (217, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 14:59:02', '', '0', '0', '', '69.341697ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 14:59:02', '2020-09-11 14:59:02', NULL);
INSERT INTO `sys_operlog` VALUES (218, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 15:42:28', '', '0', '0', '', '12.475488ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 15:42:28', '2020-09-11 15:42:28', NULL);
INSERT INTO `sys_operlog` VALUES (219, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 15:42:38', '', '0', '0', '', '9.411814ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 15:42:38', '2020-09-11 15:42:38', NULL);
INSERT INTO `sys_operlog` VALUES (220, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 15:42:48', '', '0', '0', '', '11.974717ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 15:42:48', '2020-09-11 15:42:48', NULL);
INSERT INTO `sys_operlog` VALUES (221, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 15:43:11', '', '0', '0', '', '11.080894ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 15:43:11', '2020-09-11 15:43:11', NULL);
INSERT INTO `sys_operlog` VALUES (222, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 15:43:20', '', '0', '0', '', '11.704945ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 15:43:20', '2020-09-11 15:43:20', NULL);
INSERT INTO `sys_operlog` VALUES (223, '修改管理员', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/sysUser', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 16:47:54', '', '0', '0', '', '13.278037ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 16:47:54', '2020-09-11 16:47:54', NULL);
INSERT INTO `sys_operlog` VALUES (224, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 16:48:51', '', '0', '0', '', '23.544097ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 16:48:51', '2020-09-11 16:48:51', NULL);
INSERT INTO `sys_operlog` VALUES (225, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-11 16:57:49', '', '0', '0', '', '40.828556ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 16:57:49', '2020-09-11 16:57:49', NULL);
INSERT INTO `sys_operlog` VALUES (226, '修改密码', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/user/pwd', '192.168.1.134', '未知位置', 'null', '0', '2020-09-11 17:02:25', '', '0', '0', '', '171.891234ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '2020-09-11 17:02:25', '2020-09-11 17:02:25', NULL);
INSERT INTO `sys_operlog` VALUES (227, '修改文章', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/article', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 14:28:08', '', '0', '0', '', '9.138688ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 14:28:08', '2020-09-14 14:28:08', NULL);
INSERT INTO `sys_operlog` VALUES (228, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '1', '2020-09-14 16:59:05', '', '0', '0', '', '8.784582ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 16:59:05', '2020-09-14 16:59:05', NULL);
INSERT INTO `sys_operlog` VALUES (229, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '1', '2020-09-14 16:59:13', '', '0', '0', '', '11.74724ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 16:59:13', '2020-09-14 16:59:13', NULL);
INSERT INTO `sys_operlog` VALUES (230, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:00:25', '', '0', '0', '', '18.038494ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:00:25', '2020-09-14 17:00:25', NULL);
INSERT INTO `sys_operlog` VALUES (231, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:00:34', '', '0', '0', '', '50.018489ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:00:34', '2020-09-14 17:00:34', NULL);
INSERT INTO `sys_operlog` VALUES (232, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:00:43', '', '0', '0', '', '32.578368ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:00:43', '2020-09-14 17:00:43', NULL);
INSERT INTO `sys_operlog` VALUES (233, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:01:29', '', '0', '0', '', '29.694014ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:01:29', '2020-09-14 17:01:29', NULL);
INSERT INTO `sys_operlog` VALUES (234, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:05:14', '', '0', '0', '', '26.459631ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:05:14', '2020-09-14 17:05:14', NULL);
INSERT INTO `sys_operlog` VALUES (235, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:18:32', '', '0', '0', '', '11.540496ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:18:32', '2020-09-14 17:18:32', NULL);
INSERT INTO `sys_operlog` VALUES (236, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:21:47', '', '0', '0', '', '11.453173ms', 'PostmanRuntime/7.26.5', '2020-09-14 17:21:47', '2020-09-14 17:21:47', NULL);
INSERT INTO `sys_operlog` VALUES (237, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:27:43', '', '0', '0', '', '29.571545ms', 'PostmanRuntime/7.26.5', '2020-09-14 17:27:43', '2020-09-14 17:27:43', NULL);
INSERT INTO `sys_operlog` VALUES (238, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:27:57', '', '0', '0', '', '34.614202ms', 'PostmanRuntime/7.26.5', '2020-09-14 17:27:57', '2020-09-14 17:27:57', NULL);
INSERT INTO `sys_operlog` VALUES (239, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:28:27', '', '0', '0', '', '21.468794ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:28:27', '2020-09-14 17:28:27', NULL);
INSERT INTO `sys_operlog` VALUES (240, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:29:06', '', '0', '0', '', '20.280308ms', 'PostmanRuntime/7.26.5', '2020-09-14 17:29:06', '2020-09-14 17:29:06', NULL);
INSERT INTO `sys_operlog` VALUES (241, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:29:33', '', '0', '0', '', '32.754474ms', 'PostmanRuntime/7.26.5', '2020-09-14 17:29:33', '2020-09-14 17:29:33', NULL);
INSERT INTO `sys_operlog` VALUES (242, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:29:53', '', '0', '0', '', '22.488726ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:29:53', '2020-09-14 17:29:53', NULL);
INSERT INTO `sys_operlog` VALUES (243, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:30:41', '', '0', '0', '', '49.37092ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:30:41', '2020-09-14 17:30:41', NULL);
INSERT INTO `sys_operlog` VALUES (244, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:30:48', '', '0', '0', '', '24.34274ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:30:48', '2020-09-14 17:30:48', NULL);
INSERT INTO `sys_operlog` VALUES (245, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:30:56', '', '0', '0', '', '23.898604ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:30:56', '2020-09-14 17:30:56', NULL);
INSERT INTO `sys_operlog` VALUES (246, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:31:11', '', '0', '0', '', '23.635149ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:31:11', '2020-09-14 17:31:11', NULL);
INSERT INTO `sys_operlog` VALUES (247, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:31:20', '', '0', '0', '', '25.119996ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:31:20', '2020-09-14 17:31:20', NULL);
INSERT INTO `sys_operlog` VALUES (248, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:33:47', '', '0', '0', '', '22.766494ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:33:47', '2020-09-14 17:33:47', NULL);
INSERT INTO `sys_operlog` VALUES (249, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:34:28', '', '0', '0', '', '27.117055ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:34:28', '2020-09-14 17:34:28', NULL);
INSERT INTO `sys_operlog` VALUES (250, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:34:34', '', '0', '0', '', '18.383728ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:34:34', '2020-09-14 17:34:34', NULL);
INSERT INTO `sys_operlog` VALUES (251, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:40:50', '', '0', '0', '', '26.742644ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:40:50', '2020-09-14 17:40:50', NULL);
INSERT INTO `sys_operlog` VALUES (252, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:42:08', '', '0', '0', '', '41.064107ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:42:08', '2020-09-14 17:42:08', NULL);
INSERT INTO `sys_operlog` VALUES (253, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:42:30', '', '0', '0', '', '63.850027ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:42:30', '2020-09-14 17:42:30', NULL);
INSERT INTO `sys_operlog` VALUES (254, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:43:36', '', '0', '0', '', '42.443749ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:43:36', '2020-09-14 17:43:36', NULL);
INSERT INTO `sys_operlog` VALUES (255, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-14 17:44:01', '', '0', '0', '', '28.415919ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-14 17:44:01', '2020-09-14 17:44:01', NULL);
INSERT INTO `sys_operlog` VALUES (256, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/api/v1/namespaces/default/services/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:18:57', '', '0', '0', '', '3.359238ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:18:57', '2020-09-15 09:18:57', NULL);
INSERT INTO `sys_operlog` VALUES (257, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:36:42', '', '0', '0', '', '8.45241ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:36:42', '2020-09-15 09:36:42', NULL);
INSERT INTO `sys_operlog` VALUES (258, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:40:59', '', '0', '0', '', '21.595734ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:40:59', '2020-09-15 09:40:59', NULL);
INSERT INTO `sys_operlog` VALUES (259, '', '2', '', 'PUT', 'PUT', '', '', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '1', '2020-09-15 09:42:45', '', '0', '0', '', '41.226µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:42:45', '2020-09-15 09:42:45', NULL);
INSERT INTO `sys_operlog` VALUES (260, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:43:18', '', '0', '0', '', '40.986485ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:43:18', '2020-09-15 09:43:18', NULL);
INSERT INTO `sys_operlog` VALUES (261, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:43:38', '', '0', '0', '', '25.704532ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:43:38', '2020-09-15 09:43:38', NULL);
INSERT INTO `sys_operlog` VALUES (262, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:43:50', '', '0', '0', '', '24.625549ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:43:50', '2020-09-15 09:43:50', NULL);
INSERT INTO `sys_operlog` VALUES (263, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:44:38', '', '0', '0', '', '26.518819ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:44:38', '2020-09-15 09:44:38', NULL);
INSERT INTO `sys_operlog` VALUES (264, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:44:40', '', '0', '0', '', '21.068105ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:44:40', '2020-09-15 09:44:40', NULL);
INSERT INTO `sys_operlog` VALUES (265, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:45:37', '', '0', '0', '', '17.587362ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:45:37', '2020-09-15 09:45:37', NULL);
INSERT INTO `sys_operlog` VALUES (266, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:45:43', '', '0', '0', '', '21.46588ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:45:43', '2020-09-15 09:45:43', NULL);
INSERT INTO `sys_operlog` VALUES (267, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:48:25', '', '0', '0', '', '43.950425ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:48:25', '2020-09-15 09:48:25', NULL);
INSERT INTO `sys_operlog` VALUES (268, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:48:29', '', '0', '0', '', '26.698134ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:48:29', '2020-09-15 09:48:29', NULL);
INSERT INTO `sys_operlog` VALUES (269, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:53:08', '', '0', '0', '', '149.005777ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:53:08', '2020-09-15 09:53:08', NULL);
INSERT INTO `sys_operlog` VALUES (270, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:53:12', '', '0', '0', '', '17.52698ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:53:12', '2020-09-15 09:53:12', NULL);
INSERT INTO `sys_operlog` VALUES (271, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:53:26', '', '0', '0', '', '27.188188ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:53:26', '2020-09-15 09:53:26', NULL);
INSERT INTO `sys_operlog` VALUES (272, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:53:58', '', '0', '0', '', '22.224251ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:53:58', '2020-09-15 09:53:58', NULL);
INSERT INTO `sys_operlog` VALUES (273, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:54:46', '', '0', '0', '', '21.970265ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:54:46', '2020-09-15 09:54:46', NULL);
INSERT INTO `sys_operlog` VALUES (274, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:54:48', '', '0', '0', '', '18.267109ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:54:48', '2020-09-15 09:54:48', NULL);
INSERT INTO `sys_operlog` VALUES (275, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 09:56:11', '', '0', '0', '', '23.542105ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 09:56:11', '2020-09-15 09:56:11', NULL);
INSERT INTO `sys_operlog` VALUES (276, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:06:47', '', '0', '0', '', '10.038205ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:06:47', '2020-09-15 10:06:47', NULL);
INSERT INTO `sys_operlog` VALUES (277, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:07:13', '', '0', '0', '', '12.387678ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:07:13', '2020-09-15 10:07:13', NULL);
INSERT INTO `sys_operlog` VALUES (278, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:07:24', '', '0', '0', '', '10.71555ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:07:24', '2020-09-15 10:07:24', NULL);
INSERT INTO `sys_operlog` VALUES (279, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:07:52', '', '0', '0', '', '9.456613ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:07:52', '2020-09-15 10:07:52', NULL);
INSERT INTO `sys_operlog` VALUES (280, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:11:08', '', '0', '0', '', '21.862073ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:11:08', '2020-09-15 10:11:08', NULL);
INSERT INTO `sys_operlog` VALUES (281, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/demo/gateways/demo-istio-gw', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:18:10', '', '0', '0', '', '79.503548ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:18:10', '2020-09-15 10:18:10', NULL);
INSERT INTO `sys_operlog` VALUES (282, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/demo/gateways/demo-istio-gw', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:18:18', '', '0', '0', '', '32.969535ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:18:18', '2020-09-15 10:18:18', NULL);
INSERT INTO `sys_operlog` VALUES (283, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/demo/gateways/demo-istio-gw', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:18:21', '', '0', '0', '', '34.730908ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:18:21', '2020-09-15 10:18:21', NULL);
INSERT INTO `sys_operlog` VALUES (284, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/demo/virtualservices/demo-istio', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:23:43', '', '0', '0', '', '26.095097ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:23:43', '2020-09-15 10:23:43', NULL);
INSERT INTO `sys_operlog` VALUES (285, '', '2', '', 'PUT', 'PUT', '', '', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces//serviceentries/', '127.0.0.1', '内部IP', 'null', '1', '2020-09-15 10:26:36', '', '0', '0', '', '34.378µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:26:36', '2020-09-15 10:26:36', NULL);
INSERT INTO `sys_operlog` VALUES (286, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/ecommerce-cloud/serviceentries/jwell-index-external', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:28:24', '', '0', '0', '', '23.284663ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:28:24', '2020-09-15 10:28:24', NULL);
INSERT INTO `sys_operlog` VALUES (287, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/ecommerce-cloud/serviceentries/jwell-index-external', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:28:32', '', '0', '0', '', '41.241613ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:28:32', '2020-09-15 10:28:32', NULL);
INSERT INTO `sys_operlog` VALUES (288, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/ecommerce-cloud/destinationrules/ecommerce-cloud-sso-service-dr', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:35:06', '', '0', '0', '', '33.17419ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:35:06', '2020-09-15 10:35:06', NULL);
INSERT INTO `sys_operlog` VALUES (289, '', '2', '', 'PUT', 'PUT', '', 'admin', '', '/k8s-api/apis/networking.istio.io/v1alpha3/namespaces/ecommerce-cloud/destinationrules/ecommerce-cloud-sso-service-dr', '127.0.0.1', '内部IP', 'null', '0', '2020-09-15 10:35:14', '', '0', '0', '', '27.072203ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-15 10:35:14', '2020-09-15 10:35:14', NULL);
INSERT INTO `sys_operlog` VALUES (290, '修改密码', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/user/pwd', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 09:27:01', '', '0', '0', '', '173.586201ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 09:27:01', '2020-09-16 09:27:01', NULL);
INSERT INTO `sys_operlog` VALUES (291, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 09:31:25', '', '0', '0', '', '16.758847ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 09:31:25', '2020-09-16 09:31:25', NULL);
INSERT INTO `sys_operlog` VALUES (292, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 09:31:34', '', '0', '0', '', '34.397641ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 09:31:34', '2020-09-16 09:31:34', NULL);
INSERT INTO `sys_operlog` VALUES (293, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 09:32:04', '', '0', '0', '', '14.663328ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 09:32:04', '2020-09-16 09:32:04', NULL);
INSERT INTO `sys_operlog` VALUES (294, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:08:35', '', '0', '0', '', '13.735362ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:08:35', '2020-09-16 11:08:35', NULL);
INSERT INTO `sys_operlog` VALUES (295, '', '2', '', 'PUT', 'PUT', '', '', '', '/k8s-api/namespaces/default/kind/service', '127.0.0.1', '内部IP', 'null', '1', '2020-09-16 11:09:16', '', '0', '0', '', '80.879µs', 'PostmanRuntime/7.26.5', '2020-09-16 11:09:16', '2020-09-16 11:09:16', NULL);
INSERT INTO `sys_operlog` VALUES (296, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/service', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:09:22', '', '0', '0', '', '77.368µs', 'PostmanRuntime/7.26.5', '2020-09-16 11:09:22', '2020-09-16 11:09:22', NULL);
INSERT INTO `sys_operlog` VALUES (297, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/service', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:11:42', '', '0', '0', '', '127.183µs', 'PostmanRuntime/7.26.5', '2020-09-16 11:11:42', '2020-09-16 11:11:42', NULL);
INSERT INTO `sys_operlog` VALUES (298, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/service', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:12:21', '', '0', '0', '', '982.867µs', 'PostmanRuntime/7.26.5', '2020-09-16 11:12:21', '2020-09-16 11:12:21', NULL);
INSERT INTO `sys_operlog` VALUES (299, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/service', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:13:50', '', '0', '0', '', '623.911µs', 'PostmanRuntime/7.26.5', '2020-09-16 11:13:50', '2020-09-16 11:13:50', NULL);
INSERT INTO `sys_operlog` VALUES (300, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:15:16', '', '0', '0', '', '17.186317ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:15:16', '2020-09-16 11:15:16', NULL);
INSERT INTO `sys_operlog` VALUES (301, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '1', '2020-09-16 11:23:37', '', '0', '0', '', '57.59µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:23:37', '2020-09-16 11:23:37', NULL);
INSERT INTO `sys_operlog` VALUES (302, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '1', '2020-09-16 11:23:49', '', '0', '0', '', '263.961µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:23:49', '2020-09-16 11:23:49', NULL);
INSERT INTO `sys_operlog` VALUES (303, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:25:42', '', '0', '0', '', '549.766µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:25:42', '2020-09-16 11:25:42', NULL);
INSERT INTO `sys_operlog` VALUES (304, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/serviceEntry/typ/', '127.0.0.1', '内部IP', 'null', '1', '2020-09-16 11:26:43', '', '0', '0', '', '53.782µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:26:43', '2020-09-16 11:26:43', NULL);
INSERT INTO `sys_operlog` VALUES (305, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/serviceEntry/typ/json', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:27:10', '', '0', '0', '', '607.19µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:27:10', '2020-09-16 11:27:10', NULL);
INSERT INTO `sys_operlog` VALUES (306, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:34:44', '', '0', '0', '', '234.548µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:34:44', '2020-09-16 11:34:44', NULL);
INSERT INTO `sys_operlog` VALUES (307, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:34:50', '', '0', '0', '', '139.607µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:34:50', '2020-09-16 11:34:50', NULL);
INSERT INTO `sys_operlog` VALUES (308, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/deployment/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:35:05', '', '0', '0', '', '302.669µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:35:05', '2020-09-16 11:35:05', NULL);
INSERT INTO `sys_operlog` VALUES (309, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:35:16', '', '0', '0', '', '146.051µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:35:16', '2020-09-16 11:35:16', NULL);
INSERT INTO `sys_operlog` VALUES (310, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:41:52', '', '0', '0', '', '408.897µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:41:52', '2020-09-16 11:41:52', NULL);
INSERT INTO `sys_operlog` VALUES (311, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:42:29', '', '0', '0', '', '40.391295ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:42:29', '2020-09-16 11:42:29', NULL);
INSERT INTO `sys_operlog` VALUES (312, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry/typ/json', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:48:24', '', '0', '0', '', '13.512222ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:48:24', '2020-09-16 11:48:24', NULL);
INSERT INTO `sys_operlog` VALUES (313, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry/typ/json', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:48:53', '', '0', '0', '', '18.346537ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:48:53', '2020-09-16 11:48:53', NULL);
INSERT INTO `sys_operlog` VALUES (314, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry/typ/json', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:49:08', '', '0', '0', '', '340.129µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:49:08', '2020-09-16 11:49:08', NULL);
INSERT INTO `sys_operlog` VALUES (315, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry/typ/json', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:49:16', '', '0', '0', '', '190.558µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:49:16', '2020-09-16 11:49:16', NULL);
INSERT INTO `sys_operlog` VALUES (316, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry/typ/json', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:49:36', '', '0', '0', '', '19.742221ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:49:36', '2020-09-16 11:49:36', NULL);
INSERT INTO `sys_operlog` VALUES (317, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:50:25', '', '0', '0', '', '33.510826ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:50:25', '2020-09-16 11:50:25', NULL);
INSERT INTO `sys_operlog` VALUES (318, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 11:50:37', '', '0', '0', '', '12.6977ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 11:50:37', '2020-09-16 11:50:37', NULL);
INSERT INTO `sys_operlog` VALUES (319, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 12:39:55', '', '0', '0', '', '52.535756ms', 'PostmanRuntime/7.26.5', '2020-09-16 12:39:55', '2020-09-16 12:39:55', NULL);
INSERT INTO `sys_operlog` VALUES (320, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/ServiceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 12:40:19', '', '0', '0', '', '221.173µs', 'PostmanRuntime/7.26.5', '2020-09-16 12:40:19', '2020-09-16 12:40:19', NULL);
INSERT INTO `sys_operlog` VALUES (321, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/ServiceEntry/typ/yaml', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 13:49:10', '', '0', '0', '', '211.776µs', 'PostmanRuntime/7.26.5', '2020-09-16 13:49:10', '2020-09-16 13:49:10', NULL);
INSERT INTO `sys_operlog` VALUES (322, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:00:30', '', '0', '0', '', '17.904324ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:00:30', '2020-09-16 14:00:30', NULL);
INSERT INTO `sys_operlog` VALUES (323, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:18:52', '', '0', '0', '', '35.458237ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:18:52', '2020-09-16 14:18:52', NULL);
INSERT INTO `sys_operlog` VALUES (324, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:19:05', '', '0', '0', '', '16.108893ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:19:05', '2020-09-16 14:19:05', NULL);
INSERT INTO `sys_operlog` VALUES (325, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:19:47', '', '0', '0', '', '24.695073ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:19:47', '2020-09-16 14:19:47', NULL);
INSERT INTO `sys_operlog` VALUES (326, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:20:04', '', '0', '0', '', '18.44121ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:20:04', '2020-09-16 14:20:04', NULL);
INSERT INTO `sys_operlog` VALUES (327, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/default/kind/gateway', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:36:50', '', '0', '0', '', '175.364µs', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:36:50', '2020-09-16 14:36:50', NULL);
INSERT INTO `sys_operlog` VALUES (328, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:39:49', '', '0', '0', '', '8.971087ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:39:49', '2020-09-16 14:39:49', NULL);
INSERT INTO `sys_operlog` VALUES (329, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:40:22', '', '0', '0', '', '6.573301ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:40:22', '2020-09-16 14:40:22', NULL);
INSERT INTO `sys_operlog` VALUES (330, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:56:35', '', '0', '0', '', '11.349988ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:56:35', '2020-09-16 14:56:35', NULL);
INSERT INTO `sys_operlog` VALUES (331, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:56:46', '', '0', '0', '', '31.399626ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:56:46', '2020-09-16 14:56:46', NULL);
INSERT INTO `sys_operlog` VALUES (332, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 14:57:08', '', '0', '0', '', '9.465987ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 14:57:08', '2020-09-16 14:57:08', NULL);
INSERT INTO `sys_operlog` VALUES (333, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/namespaces/demo/kind/serviceEntry', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 15:03:10', '', '0', '0', '', '18.748025ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 15:03:10', '2020-09-16 15:03:10', NULL);
INSERT INTO `sys_operlog` VALUES (334, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/api/v1/namespaces//events', '127.0.0.1', '内部IP', 'null', '1', '2020-09-16 15:13:32', '', '0', '0', '', '61.833µs', 'PostmanRuntime/7.26.5', '2020-09-16 15:13:32', '2020-09-16 15:13:32', NULL);
INSERT INTO `sys_operlog` VALUES (335, '', '1', '', 'POST', 'POST', '', '', '', '/k8s-api/api/v1/namespaces/default/events', '127.0.0.1', '内部IP', 'null', '1', '2020-09-16 15:13:37', '', '0', '0', '', '36.981µs', 'PostmanRuntime/7.26.5', '2020-09-16 15:13:37', '2020-09-16 15:13:37', NULL);
INSERT INTO `sys_operlog` VALUES (336, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 15:14:37', '', '0', '0', '', '11.222355ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 15:14:37', '2020-09-16 15:14:37', NULL);
INSERT INTO `sys_operlog` VALUES (337, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 15:15:02', '', '0', '0', '', '7.029964ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 15:15:02', '2020-09-16 15:15:02', NULL);
INSERT INTO `sys_operlog` VALUES (338, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-16 15:15:10', '', '0', '0', '', '30.423827ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-16 15:15:10', '2020-09-16 15:15:10', NULL);
INSERT INTO `sys_operlog` VALUES (339, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/demo/deployments/demo-istio-a', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 11:36:00', '', '0', '0', '', '26.243782ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 11:36:00', '2020-09-18 11:36:00', NULL);
INSERT INTO `sys_operlog` VALUES (340, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/demo/deployments/demo-istio-b', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 11:36:02', '', '0', '0', '', '23.291974ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 11:36:02', '2020-09-18 11:36:02', NULL);
INSERT INTO `sys_operlog` VALUES (341, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/demo/deployments/demo-istio-a', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 11:36:20', '', '0', '0', '', '25.506897ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 11:36:20', '2020-09-18 11:36:20', NULL);
INSERT INTO `sys_operlog` VALUES (342, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/demo/deployments/demo-istio-b', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 11:36:22', '', '0', '0', '', '19.245549ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 11:36:22', '2020-09-18 11:36:22', NULL);
INSERT INTO `sys_operlog` VALUES (343, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/demo/deployments/example-foo', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 11:36:24', '', '0', '0', '', '24.223869ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 11:36:24', '2020-09-18 11:36:24', NULL);
INSERT INTO `sys_operlog` VALUES (344, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/demo/deployments/demo-istio-a', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 11:36:48', '', '0', '0', '', '20.650499ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 11:36:48', '2020-09-18 11:36:48', NULL);
INSERT INTO `sys_operlog` VALUES (345, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/demo/deployments/demo-istio-b', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 11:36:50', '', '0', '0', '', '32.539272ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 11:36:50', '2020-09-18 11:36:50', NULL);
INSERT INTO `sys_operlog` VALUES (346, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 14:25:07', '', '0', '0', '', '9.169631ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 14:25:07', '2020-09-18 14:25:07', NULL);
INSERT INTO `sys_operlog` VALUES (347, '', '', '', 'PATCH', 'PATCH', '', 'admin', '', '/k8s-api/apis/apps/v1/namespaces/default/deployments/demoapp', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 14:50:38', '', '0', '0', '', '36.502057ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 14:50:38', '2020-09-18 14:50:38', NULL);
INSERT INTO `sys_operlog` VALUES (348, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 16:56:22', '', '0', '0', '', '9.689681ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 16:56:22', '2020-09-18 16:56:22', NULL);
INSERT INTO `sys_operlog` VALUES (349, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 16:56:43', '', '0', '0', '', '9.47486ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 16:56:43', '2020-09-18 16:56:43', NULL);
INSERT INTO `sys_operlog` VALUES (350, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 16:57:29', '', '0', '0', '', '16.622819ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 16:57:29', '2020-09-18 16:57:29', NULL);
INSERT INTO `sys_operlog` VALUES (351, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 16:59:19', '', '0', '0', '', '9.146891ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 16:59:19', '2020-09-18 16:59:19', NULL);
INSERT INTO `sys_operlog` VALUES (352, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 17:02:49', '', '0', '0', '', '24.534396ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 17:02:49', '2020-09-18 17:02:49', NULL);
INSERT INTO `sys_operlog` VALUES (353, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-18 17:04:35', '', '0', '0', '', '19.27072ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-18 17:04:35', '2020-09-18 17:04:35', NULL);
INSERT INTO `sys_operlog` VALUES (354, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:38:32', '', '0', '0', '', '13.933116ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:38:32', '2020-09-21 09:38:32', NULL);
INSERT INTO `sys_operlog` VALUES (355, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:41:20', '', '0', '0', '', '6.625038ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:41:20', '2020-09-21 09:41:20', NULL);
INSERT INTO `sys_operlog` VALUES (356, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:42:05', '', '0', '0', '', '8.281194ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:42:05', '2020-09-21 09:42:05', NULL);
INSERT INTO `sys_operlog` VALUES (357, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:42:32', '', '0', '0', '', '12.331602ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:42:32', '2020-09-21 09:42:32', NULL);
INSERT INTO `sys_operlog` VALUES (358, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:42:55', '', '0', '0', '', '12.040066ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:42:55', '2020-09-21 09:42:55', NULL);
INSERT INTO `sys_operlog` VALUES (359, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:43:22', '', '0', '0', '', '8.743781ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:43:22', '2020-09-21 09:43:22', NULL);
INSERT INTO `sys_operlog` VALUES (360, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:43:57', '', '0', '0', '', '15.934569ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:43:57', '2020-09-21 09:43:57', NULL);
INSERT INTO `sys_operlog` VALUES (361, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:44:10', '', '0', '0', '', '12.807692ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:44:10', '2020-09-21 09:44:10', NULL);
INSERT INTO `sys_operlog` VALUES (362, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:44:50', '', '0', '0', '', '12.365335ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:44:50', '2020-09-21 09:44:50', NULL);
INSERT INTO `sys_operlog` VALUES (363, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:45:18', '', '0', '0', '', '16.502072ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:45:18', '2020-09-21 09:45:18', NULL);
INSERT INTO `sys_operlog` VALUES (364, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:47:55', '', '0', '0', '', '8.187251ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:47:55', '2020-09-21 09:47:55', NULL);
INSERT INTO `sys_operlog` VALUES (365, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:48:15', '', '0', '0', '', '15.076238ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:48:15', '2020-09-21 09:48:15', NULL);
INSERT INTO `sys_operlog` VALUES (366, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:48:37', '', '0', '0', '', '12.632428ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:48:37', '2020-09-21 09:48:37', NULL);
INSERT INTO `sys_operlog` VALUES (367, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:49:08', '', '0', '0', '', '10.284727ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:49:08', '2020-09-21 09:49:08', NULL);
INSERT INTO `sys_operlog` VALUES (368, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:49:18', '', '0', '0', '', '9.74063ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:49:18', '2020-09-21 09:49:18', NULL);
INSERT INTO `sys_operlog` VALUES (369, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:52:39', '', '0', '0', '', '8.874861ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:52:39', '2020-09-21 09:52:39', NULL);
INSERT INTO `sys_operlog` VALUES (370, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:53:03', '', '0', '0', '', '9.264179ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:53:03', '2020-09-21 09:53:03', NULL);
INSERT INTO `sys_operlog` VALUES (371, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:53:23', '', '0', '0', '', '11.641706ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:53:23', '2020-09-21 09:53:23', NULL);
INSERT INTO `sys_operlog` VALUES (372, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:53:38', '', '0', '0', '', '11.630281ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:53:38', '2020-09-21 09:53:38', NULL);
INSERT INTO `sys_operlog` VALUES (373, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:53:58', '', '0', '0', '', '13.808842ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:53:58', '2020-09-21 09:53:58', NULL);
INSERT INTO `sys_operlog` VALUES (374, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:55:12', '', '0', '0', '', '8.808812ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:55:12', '2020-09-21 09:55:12', NULL);
INSERT INTO `sys_operlog` VALUES (375, '修改菜单', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:56:05', '', '0', '0', '', '7.953741ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:56:05', '2020-09-21 09:56:05', NULL);
INSERT INTO `sys_operlog` VALUES (376, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:56:50', '', '0', '0', '', '15.75032ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:56:50', '2020-09-21 09:56:50', NULL);
INSERT INTO `sys_operlog` VALUES (377, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:58:06', '', '0', '0', '', '16.732456ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:58:06', '2020-09-21 09:58:06', NULL);
INSERT INTO `sys_operlog` VALUES (378, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:58:25', '', '0', '0', '', '23.22376ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:58:25', '2020-09-21 09:58:25', NULL);
INSERT INTO `sys_operlog` VALUES (379, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 09:59:17', '', '0', '0', '', '15.625479ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 09:59:17', '2020-09-21 09:59:17', NULL);
INSERT INTO `sys_operlog` VALUES (380, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:01:25', '', '0', '0', '', '7.599776ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:01:25', '2020-09-21 10:01:25', NULL);
INSERT INTO `sys_operlog` VALUES (381, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:01:39', '', '0', '0', '', '7.934773ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:01:39', '2020-09-21 10:01:39', NULL);
INSERT INTO `sys_operlog` VALUES (382, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:01:54', '', '0', '0', '', '9.99207ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:01:54', '2020-09-21 10:01:54', NULL);
INSERT INTO `sys_operlog` VALUES (383, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:02:30', '', '0', '0', '', '17.395634ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:02:30', '2020-09-21 10:02:30', NULL);
INSERT INTO `sys_operlog` VALUES (384, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:03:51', '', '0', '0', '', '7.373034ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:03:51', '2020-09-21 10:03:51', NULL);
INSERT INTO `sys_operlog` VALUES (385, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:04:05', '', '0', '0', '', '6.24519ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:04:05', '2020-09-21 10:04:05', NULL);
INSERT INTO `sys_operlog` VALUES (386, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:04:18', '', '0', '0', '', '8.344349ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:04:18', '2020-09-21 10:04:18', NULL);
INSERT INTO `sys_operlog` VALUES (387, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:06:03', '', '0', '0', '', '8.120867ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:06:03', '2020-09-21 10:06:03', NULL);
INSERT INTO `sys_operlog` VALUES (388, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:06:13', '', '0', '0', '', '11.295554ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:06:13', '2020-09-21 10:06:13', NULL);
INSERT INTO `sys_operlog` VALUES (389, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:06:27', '', '0', '0', '', '11.501417ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:06:27', '2020-09-21 10:06:27', NULL);
INSERT INTO `sys_operlog` VALUES (390, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:07:40', '', '0', '0', '', '10.886797ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:07:40', '2020-09-21 10:07:40', NULL);
INSERT INTO `sys_operlog` VALUES (391, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:07:50', '', '0', '0', '', '11.090881ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:07:50', '2020-09-21 10:07:50', NULL);
INSERT INTO `sys_operlog` VALUES (392, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:08:05', '', '0', '0', '', '6.880608ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:08:05', '2020-09-21 10:08:05', NULL);
INSERT INTO `sys_operlog` VALUES (393, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:09:22', '', '0', '0', '', '6.893772ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:09:22', '2020-09-21 10:09:22', NULL);
INSERT INTO `sys_operlog` VALUES (394, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:09:32', '', '0', '0', '', '8.951842ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:09:32', '2020-09-21 10:09:32', NULL);
INSERT INTO `sys_operlog` VALUES (395, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:09:42', '', '0', '0', '', '9.906151ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:09:42', '2020-09-21 10:09:42', NULL);
INSERT INTO `sys_operlog` VALUES (396, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:10:38', '', '0', '0', '', '8.091797ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:10:38', '2020-09-21 10:10:38', NULL);
INSERT INTO `sys_operlog` VALUES (397, '新建菜单', '1', '', 'POST', 'POST', '', 'admin', '', '/api/v1/menu', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:13:03', '', '0', '0', '', '9.463956ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:13:03', '2020-09-21 10:13:03', NULL);
INSERT INTO `sys_operlog` VALUES (398, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:13:30', '', '0', '0', '', '17.307596ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:13:30', '2020-09-21 10:13:30', NULL);
INSERT INTO `sys_operlog` VALUES (399, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:14:02', '', '0', '0', '', '16.973321ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:14:02', '2020-09-21 10:14:02', NULL);
INSERT INTO `sys_operlog` VALUES (400, '修改角色', '2', '', 'PUT', 'PUT', '', 'admin', '', '/api/v1/role', '127.0.0.1', '内部IP', 'null', '0', '2020-09-21 10:14:43', '', '0', '0', '', '20.065765ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '2020-09-21 10:14:43', '2020-09-21 10:14:43', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_name` varchar(128) DEFAULT NULL,
  `post_code` varchar(128) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES (1, '首席执行官', 'CEO', 0, '0', '首席执行官', '1', '2020-03-08 23:11:15', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_post` VALUES (2, '首席技术执行官', 'CTO', 2, '0', '首席技术执行官', '1', '1', '2020-04-11 15:52:48', '2020-05-03 20:58:01', NULL);
INSERT INTO `sys_post` VALUES (3, '首席运营官', 'COO', 3, '0', '测试工程师', '1', '1', '2020-04-11 15:52:48', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(128) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `role_key` varchar(128) DEFAULT NULL,
  `role_sort` int DEFAULT NULL,
  `flag` varchar(128) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `data_scope` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '系统管理员', '0', 'admin', 1, NULL, '1', NULL, NULL, 0, '1', '2020-04-11 15:52:48', '2020-09-16 15:15:10', NULL);
INSERT INTO `sys_role` VALUES (2, '普通角色', '0', 'common', 2, NULL, '1', NULL, NULL, 0, '3', '2020-04-11 15:52:48', '2020-09-21 10:14:43', NULL);
INSERT INTO `sys_role` VALUES (3, '测试角色', '0', 'Tester', 3, '', '1', NULL, NULL, 0, NULL, '2020-04-11 15:52:48', '2020-04-12 14:10:52', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` int DEFAULT NULL,
  `dept_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `role_name` longtext,
  `create_by` longtext,
  `update_by` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (1, 2, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 3, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 43, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 44, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 45, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 46, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 51, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 52, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 56, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 57, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 58, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 59, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 60, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 61, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 62, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 63, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 64, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 66, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 67, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 68, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 69, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 70, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 71, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 72, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 73, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 74, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 75, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 76, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 77, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 78, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 79, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 80, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 81, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 82, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 83, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 84, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 85, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 86, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 87, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 89, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 90, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 91, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 92, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 93, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 94, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 95, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 96, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 97, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 103, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 104, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 105, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 106, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 107, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 108, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 109, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 110, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 111, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 112, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 113, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 114, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 115, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 116, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 117, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 118, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 119, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 120, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 121, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 122, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 123, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 138, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 142, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 201, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 202, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 203, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 204, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 205, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 206, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 211, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 212, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 213, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 214, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 215, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 216, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 217, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 220, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 221, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 222, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 223, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 224, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 225, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 226, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 227, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 228, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 229, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 230, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 231, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 232, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 233, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 234, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 235, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 236, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 237, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 238, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 239, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 240, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 241, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 242, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 243, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 244, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 245, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 246, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 247, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 248, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 249, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 250, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 251, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 252, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 253, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 254, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 255, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 256, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 257, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 258, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 259, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 260, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 261, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 262, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 263, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 264, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 267, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 269, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 473, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 474, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 475, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 476, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 477, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 478, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 479, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 480, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 481, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 482, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 483, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 485, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 486, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 487, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 488, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 489, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 490, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 491, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 492, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 493, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 494, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 495, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 496, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 501, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 502, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 506, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 507, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 508, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 509, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 510, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 511, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 512, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 513, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 514, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 515, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 516, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 517, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 518, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 519, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 520, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 521, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 522, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 523, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 527, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 528, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 529, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 530, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 531, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 532, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 533, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 534, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 535, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 536, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 537, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 538, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 539, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 540, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 541, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 542, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 543, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 544, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 545, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 546, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 547, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 548, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 549, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 550, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 63, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 71, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 76, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 80, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 92, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 93, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 94, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 110, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 142, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 252, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 253, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 254, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 255, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 256, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 257, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 258, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 259, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 260, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 263, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 267, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 485, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 486, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 487, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 491, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 492, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 493, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 494, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 495, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 496, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 501, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 502, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 506, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 507, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 508, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 509, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 510, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 511, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 512, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 513, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 514, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 515, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 516, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 517, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 518, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 519, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 520, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 521, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 522, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 523, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 527, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 528, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 529, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 530, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 531, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 532, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 533, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 534, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 535, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 536, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 537, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 538, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 539, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 540, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 541, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 542, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 543, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 544, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 545, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 547, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 548, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 549, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 550, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 551, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 552, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 553, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 554, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 555, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 556, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 557, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 558, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 560, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 561, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 563, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 564, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 566, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 567, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 569, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 570, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 572, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 573, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 575, 'common', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_setting
-- ----------------------------
DROP TABLE IF EXISTS `sys_setting`;
CREATE TABLE `sys_setting` (
  `settings_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `logo` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_setting
-- ----------------------------
BEGIN;
INSERT INTO `sys_setting` VALUES (1, 'devops 管理系统', 'https://img.zouhl.com/img/2020-09-21-logo.png', '2020-08-05 14:27:34', '2020-08-07 10:13:31', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_tables
-- ----------------------------
DROP TABLE IF EXISTS `sys_tables`;
CREATE TABLE `sys_tables` (
  `table_id` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL,
  `table_comment` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `tpl_category` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `function_author` varchar(255) DEFAULT NULL,
  `pk_column` varchar(255) DEFAULT NULL,
  `pk_go_field` varchar(255) DEFAULT NULL,
  `pk_json_field` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `tree_code` varchar(255) DEFAULT NULL,
  `tree_parent_code` varchar(255) DEFAULT NULL,
  `tree_name` varchar(255) DEFAULT NULL,
  `tree` tinyint(1) DEFAULT NULL,
  `crud` tinyint(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_logical_delete` varchar(1) DEFAULT NULL,
  `logical_delete` tinyint(1) DEFAULT NULL,
  `logical_delete_column` varchar(128) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_tables
-- ----------------------------
BEGIN;
INSERT INTO `sys_tables` VALUES (1, 'article', '文章', 'Article', 'crud', 'article', 'article', 'article', '文章', 'wenjianzhang', 'article_id', 'ArticleId', 'articleId', '', '', '', '', 0, 1, '', '1', 1, 'is_del', '', '', '2020-09-03 14:31:44', '2020-09-03 14:32:49', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(128) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'tux', '13818888888', 1, NULL, '', '0', '1@qq.com', 1, 1, '1', '1', NULL, '0', '2019-11-10 14:05:55', '2020-09-16 09:27:01', NULL, 'admin', '$2a$10$5anmevOTPL2X.BE5QO1CweouBGqNOv7QAJUUlexwP2M7iyGeD1eRS');
INSERT INTO `sys_user` VALUES (2, 'zhangwj', '13211111111', 3, NULL, NULL, '0', 'q@q.com', 8, 2, '1', '1', NULL, '0', '2019-11-12 18:28:27', '2020-03-14 20:08:43', '2020-09-03 15:04:47', 'zhangwj', '$2a$10$CqMwHahA3cNrNv16CoSxmeD4XMPU.BiKHPEAeaG5oXMavOKrjInXi');
INSERT INTO `sys_user` VALUES (3, 'zouhl', '13312312311', 2, '', '', '0', 'zou2699@163.com', 1, 1, '1', '1', '', '0', '2020-09-03 16:01:10', '2020-09-03 16:33:58', NULL, 'zouhl', '$2a$10$vFA57ME3Vkvei0lMyHsyyuufPJta5CvVk.D3JaBwcMOTojA8fEi9e');
INSERT INTO `sys_user` VALUES (4, 'dev', '13345678901', 2, '', '', '0', 'zou2699@163.com', 10, 1, '1', '1', '', '0', '2020-09-03 16:35:57', '2020-09-11 16:47:54', NULL, 'dev', '$2a$10$5jCGr0khr9J4OzQVUxT3n.8nOSgAAYwSc4LysRRfSnICPjhzWHtqW');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

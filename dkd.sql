/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : dkd

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 30/12/2024 11:41:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'tb_node', '点位表', NULL, NULL, 'Node', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'node', '点位管理', 'yk', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40', NULL);
INSERT INTO `gen_table` VALUES (2, 'tb_partner', '合作商表', NULL, NULL, 'Partner', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'partner', '合作商管理', 'yk', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09', NULL);
INSERT INTO `gen_table` VALUES (3, 'tb_region', '区域表', NULL, NULL, 'Region', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'region', '区域管理', 'yk', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:35:44', NULL);
INSERT INTO `gen_table` VALUES (4, 'tb_emp', '工单员工表', NULL, NULL, 'Emp', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'emp', '人员列表', 'yk', '0', '/', '{\"parentMenuId\":2019}', 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01', NULL);
INSERT INTO `gen_table` VALUES (5, 'tb_role', '工单角色表', NULL, NULL, 'Role', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'role', '工单角色', 'yk', '0', '/', '{\"parentMenuId\":2019}', 'admin', '2024-12-18 17:34:18', '', '2024-12-18 17:40:46', NULL);
INSERT INTO `gen_table` VALUES (6, 'tb_vending_machine', '设备表', NULL, NULL, 'VendingMachine', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'vm', '设备管理', 'yk', '0', '/', '{\"parentMenuId\":2026}', 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48', NULL);
INSERT INTO `gen_table` VALUES (7, 'tb_vm_type', '设备类型表', NULL, NULL, 'VmType', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'vmType', '设备类型管理', 'yk', '0', '/', '{\"parentMenuId\":2026}', 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:10:12', NULL);
INSERT INTO `gen_table` VALUES (8, 'tb_channel', '售货机货道表', NULL, NULL, 'Channel', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'channel', '售货机货道', 'yk', '0', '/', '{\"parentMenuId\":2026}', 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24', NULL);
INSERT INTO `gen_table` VALUES (9, 'tb_policy', '策略表', NULL, NULL, 'Policy', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'policy', '策略管理', 'yk', '0', '/', '{\"parentMenuId\":2040}', 'admin', '2024-12-25 16:42:57', '', '2024-12-25 16:44:13', NULL);
INSERT INTO `gen_table` VALUES (10, 'tb_sku', '商品表', NULL, NULL, 'Sku', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'sku', '商品管理', 'yk', '0', '/', '{\"parentMenuId\":2047}', 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52', NULL);
INSERT INTO `gen_table` VALUES (11, 'tb_sku_class', '商品类型表', NULL, NULL, 'SkuClass', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'sku_class', '商品类型', 'yk', '0', '/', '{\"parentMenuId\":2047}', 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:22:45', NULL);
INSERT INTO `gen_table` VALUES (12, 'tb_job', '自动补货任务', NULL, NULL, 'Job', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'job', '自动补货任务', 'yk', '0', '/', '{\"parentMenuId\":2060}', 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:17:18', NULL);
INSERT INTO `gen_table` VALUES (13, 'tb_task', '工单表', NULL, NULL, 'Task', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'task', '工单', 'yk', '0', '/', '{\"parentMenuId\":2060}', 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34', NULL);
INSERT INTO `gen_table` VALUES (14, 'tb_task_details', '工单详情，只有补货工单才有', NULL, NULL, 'TaskDetails', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'task_details', '工单详情', 'ruoyi', '0', '/', '{\"parentMenuId\":2060}', 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:23', NULL);
INSERT INTO `gen_table` VALUES (15, 'tb_task_type', '工单类型', NULL, NULL, 'TaskType', 'crud', 'element-plus', 'com.dkd.manage', 'manage', 'task_type', '工单类型', 'yk', '0', '/', '{\"parentMenuId\":2060}', 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:53', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(0) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', '主键ID', 'int', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (2, 1, 'node_name', '点位名称', 'varchar(255)', 'String', 'nodeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (3, 1, 'address_detail', '详细地址', 'text', 'String', 'addressDetail', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'textarea', '', 3, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (4, 1, 'business_circle_type', '商圈类型, 例如: 1-商业区, 2-居民区, 3-办公区等', 'int', 'Long', 'businessCircleType', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'bussiness_type', 4, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (5, 1, 'region_id', '所属区域ID', 'int', 'Long', 'regionId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (6, 1, 'partner_id', '关联的合作商ID', 'int', 'Long', 'partnerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (7, 1, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (8, 1, 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (9, 1, 'create_by', '创建人', 'varchar(255)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (10, 1, 'update_by', '修改人', 'varchar(255)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (11, 1, 'remark', '备注', 'text', 'String', 'remark', '0', '0', '0', '0', '0', '0', NULL, 'EQ', 'textarea', '', 11, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:41:40');
INSERT INTO `gen_table_column` VALUES (12, 2, 'id', '主键ID', 'int', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (13, 2, 'partner_name', '合作商名称', 'varchar(255)', 'String', 'partnerName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (14, 2, 'contact_person', '联系人姓名', 'varchar(255)', 'String', 'contactPerson', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (15, 2, 'contact_phone', '联系电话', 'varchar(20)', 'String', 'contactPhone', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (16, 2, 'share_ratio', '分成比例', 'int', 'Long', 'shareRatio', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (17, 2, 'account', '登录账号', 'varchar(255)', 'String', 'account', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (18, 2, 'password', '登录密码', 'varchar(255)', 'String', 'password', '0', '0', '1', '1', '1', '0', '0', 'EQ', 'input', '', 7, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (19, 2, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (20, 2, 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (21, 2, 'create_by', '创建人', 'varchar(255)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (22, 2, 'update_by', '修改人', 'varchar(255)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (23, 2, 'remark', '备注', 'text', 'String', 'remark', '0', '0', '0', '0', '0', '0', NULL, 'EQ', 'textarea', '', 12, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:38:09');
INSERT INTO `gen_table_column` VALUES (24, 3, 'id', '主键ID', 'int', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:35:44');
INSERT INTO `gen_table_column` VALUES (25, 3, 'region_name', '区域名称', 'varchar(255)', 'String', 'regionName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:35:44');
INSERT INTO `gen_table_column` VALUES (26, 3, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:35:44');
INSERT INTO `gen_table_column` VALUES (27, 3, 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:35:44');
INSERT INTO `gen_table_column` VALUES (28, 3, 'create_by', '创建人', 'varchar(255)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:35:44');
INSERT INTO `gen_table_column` VALUES (29, 3, 'update_by', '修改人', 'varchar(255)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:35:44');
INSERT INTO `gen_table_column` VALUES (30, 3, 'remark', '备注说明', 'text', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 7, 'admin', '2024-12-15 18:32:36', '', '2024-12-15 18:35:44');
INSERT INTO `gen_table_column` VALUES (31, 4, 'id', '主键', 'int', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (32, 4, 'user_name', '员工名称', 'varchar(50)', 'String', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (33, 4, 'region_id', '所属区域Id', 'int', 'Long', 'regionId', '0', '0', '1', '1', '1', '0', '1', 'EQ', 'input', '', 3, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (34, 4, 'region_name', '区域名称', 'varchar(50)', 'String', 'regionName', '0', '0', '0', '0', '0', '1', '0', 'LIKE', 'input', '', 4, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (35, 4, 'role_id', '角色id', 'int', 'Long', 'roleId', '0', '0', '1', '1', '1', '0', '1', 'EQ', 'input', '', 5, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (36, 4, 'role_code', '角色编号', 'varchar(10)', 'String', 'roleCode', '0', '0', '0', '0', '0', '0', '1', 'EQ', 'input', '', 6, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (37, 4, 'role_name', '角色名称', 'varchar(50)', 'String', 'roleName', '0', '0', '0', '0', '0', '1', '0', 'LIKE', 'input', '', 7, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (38, 4, 'mobile', '联系电话', 'varchar(15)', 'String', 'mobile', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (39, 4, 'image', '员工头像', 'varchar(500)', 'String', 'image', '0', '0', '1', '1', '1', '0', '0', 'EQ', 'imageUpload', '', 9, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (40, 4, 'status', '是否启用', 'tinyint', 'Long', 'status', '0', '0', '1', '1', '1', '0', '1', 'EQ', 'select', 'emp_status', 10, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (41, 4, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (42, 4, 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2024-12-18 17:34:12', '', '2024-12-18 17:40:01');
INSERT INTO `gen_table_column` VALUES (43, 5, 'role_id', NULL, 'int', 'Long', 'roleId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-18 17:34:18', '', '2024-12-18 17:40:46');
INSERT INTO `gen_table_column` VALUES (44, 5, 'role_code', '角色编码\n', 'varchar(50)', 'String', 'roleCode', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-12-18 17:34:18', '', '2024-12-18 17:40:46');
INSERT INTO `gen_table_column` VALUES (45, 5, 'role_name', '角色名称\n', 'varchar(50)', 'String', 'roleName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-12-18 17:34:18', '', '2024-12-18 17:40:46');
INSERT INTO `gen_table_column` VALUES (46, 6, 'id', '主键', 'bigint', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (47, 6, 'inner_code', '设备编号', 'varchar(15)', 'String', 'innerCode', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (48, 6, 'channel_max_capacity', '设备容量', 'int', 'Long', 'channelMaxCapacity', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 3, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (49, 6, 'node_id', '点位Id', 'int', 'Long', 'nodeId', '0', '0', '1', '1', '1', '0', '1', 'EQ', 'input', '', 4, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (50, 6, 'addr', '详细地址', 'varchar(100)', 'String', 'addr', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (51, 6, 'last_supply_time', '上次补货时间', 'datetime', 'Date', 'lastSupplyTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'datetime', '', 6, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (52, 6, 'business_type', '商圈类型', 'int', 'Long', 'businessType', '0', '0', '0', '0', '0', '0', '1', 'EQ', 'select', '', 7, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (53, 6, 'region_id', '区域Id', 'int', 'Long', 'regionId', '0', '0', '0', '0', '0', '0', '1', 'EQ', 'input', '', 8, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (54, 6, 'partner_id', '合作商Id', 'int', 'Long', 'partnerId', '0', '0', '0', '0', '0', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (55, 6, 'vm_type_id', '设备型号', 'int', 'Long', 'vmTypeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (56, 6, 'vm_status', '设备状态，0:未投放;1-运营;3-撤机', 'int', 'Long', 'vmStatus', '0', '0', '0', '0', '0', '1', '1', 'EQ', 'select', 'vm_status', 11, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (57, 6, 'running_status', '运行状态', 'varchar(100)', 'String', 'runningStatus', '0', '0', '0', '0', '0', '0', '1', 'EQ', 'radio', '', 12, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (58, 6, 'longitudes', '经度', 'double', 'Long', 'longitudes', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 13, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (59, 6, 'latitude', '维度', 'double', 'Long', 'latitude', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 14, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (60, 6, 'client_id', '客户端连接Id,做emq认证用', 'varchar(50)', 'String', 'clientId', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 15, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (61, 6, 'policy_id', '策略id', 'bigint', 'Long', 'policyId', '0', '0', '0', '0', '0', '0', '1', 'EQ', 'input', '', 16, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (62, 6, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (63, 6, 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:53:48');
INSERT INTO `gen_table_column` VALUES (64, 7, 'id', '主键', 'int', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:10:12');
INSERT INTO `gen_table_column` VALUES (65, 7, 'name', '型号名称', 'varchar(15)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:10:12');
INSERT INTO `gen_table_column` VALUES (66, 7, 'model', '型号编码', 'varchar(20)', 'String', 'model', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:10:12');
INSERT INTO `gen_table_column` VALUES (67, 7, 'image', '设备图片', 'varchar(500)', 'String', 'image', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'imageUpload', '', 4, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:10:12');
INSERT INTO `gen_table_column` VALUES (68, 7, 'vm_row', '货道行', 'int', 'Long', 'vmRow', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:10:12');
INSERT INTO `gen_table_column` VALUES (69, 7, 'vm_col', '货道列', 'int', 'Long', 'vmCol', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:10:12');
INSERT INTO `gen_table_column` VALUES (70, 7, 'channel_max_capacity', '设备容量', 'int', 'Long', 'channelMaxCapacity', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2024-12-22 11:07:40', '', '2024-12-22 11:10:12');
INSERT INTO `gen_table_column` VALUES (71, 8, 'id', '主键', 'bigint', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, '1', 'EQ', 'input', '', 1, 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24');
INSERT INTO `gen_table_column` VALUES (72, 8, 'channel_code', '货道编号', 'varchar(10)', 'String', 'channelCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24');
INSERT INTO `gen_table_column` VALUES (73, 8, 'sku_id', '商品Id', 'bigint', 'Long', 'skuId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24');
INSERT INTO `gen_table_column` VALUES (74, 8, 'vm_id', '售货机Id', 'bigint', 'Long', 'vmId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24');
INSERT INTO `gen_table_column` VALUES (75, 8, 'inner_code', '售货机软编号', 'varchar(15)', 'String', 'innerCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24');
INSERT INTO `gen_table_column` VALUES (76, 8, 'max_capacity', '货道最大容量', 'int', 'Long', 'maxCapacity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24');
INSERT INTO `gen_table_column` VALUES (77, 8, 'current_capacity', '货道当前容量', 'int', 'Long', 'currentCapacity', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24');
INSERT INTO `gen_table_column` VALUES (78, 8, 'last_supply_time', '上次补货时间', 'datetime', 'Date', 'lastSupplyTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24');
INSERT INTO `gen_table_column` VALUES (79, 8, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, '1', 'EQ', 'datetime', '', 9, 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24');
INSERT INTO `gen_table_column` VALUES (80, 8, 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, '1', 'EQ', 'datetime', '', 10, 'admin', '2024-12-22 11:07:56', '', '2024-12-22 11:54:24');
INSERT INTO `gen_table_column` VALUES (81, 9, 'policy_id', '策略id', 'bigint', 'Long', 'policyId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-25 16:42:57', '', '2024-12-25 16:44:13');
INSERT INTO `gen_table_column` VALUES (82, 9, 'policy_name', '策略名称', 'varchar(30)', 'String', 'policyName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-12-25 16:42:57', '', '2024-12-25 16:44:13');
INSERT INTO `gen_table_column` VALUES (83, 9, 'discount', '策略方案，如：80代表8折', 'int', 'Long', 'discount', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2024-12-25 16:42:57', '', '2024-12-25 16:44:13');
INSERT INTO `gen_table_column` VALUES (84, 9, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, '1', NULL, 'EQ', 'datetime', '', 4, 'admin', '2024-12-25 16:42:57', '', '2024-12-25 16:44:13');
INSERT INTO `gen_table_column` VALUES (85, 9, 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2024-12-25 16:42:57', '', '2024-12-25 16:44:13');
INSERT INTO `gen_table_column` VALUES (86, 10, 'sku_id', '主键', 'bigint', 'Long', 'skuId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52');
INSERT INTO `gen_table_column` VALUES (87, 10, 'sku_name', '商品名称', 'varchar(50)', 'String', 'skuName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52');
INSERT INTO `gen_table_column` VALUES (88, 10, 'sku_image', '商品图片', 'varchar(500)', 'String', 'skuImage', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'imageUpload', '', 3, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52');
INSERT INTO `gen_table_column` VALUES (89, 10, 'brand_Name', '品牌', 'varchar(50)', 'String', 'brandName', '0', '0', '1', '1', '1', '1', '0', 'LIKE', 'input', '', 4, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52');
INSERT INTO `gen_table_column` VALUES (90, 10, 'unit', '规格(净含量)', 'varchar(20)', 'String', 'unit', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52');
INSERT INTO `gen_table_column` VALUES (91, 10, 'price', '商品价格，单位分', 'int', 'Long', 'price', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52');
INSERT INTO `gen_table_column` VALUES (92, 10, 'class_id', '商品类型Id', 'int', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52');
INSERT INTO `gen_table_column` VALUES (93, 10, 'is_discount', '是否打折促销', 'tinyint(1)', 'Integer', 'isDiscount', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 8, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52');
INSERT INTO `gen_table_column` VALUES (94, 10, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, '1', NULL, 'EQ', 'datetime', '', 9, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52');
INSERT INTO `gen_table_column` VALUES (95, 10, 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:24:52');
INSERT INTO `gen_table_column` VALUES (96, 11, 'class_id', '主键', 'int', 'Long', 'classId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:22:45');
INSERT INTO `gen_table_column` VALUES (97, 11, 'class_name', '商品类型', 'varchar(50)', 'String', 'className', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:22:45');
INSERT INTO `gen_table_column` VALUES (98, 11, 'parent_id', '上级id', 'int', 'Long', 'parentId', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 3, 'admin', '2024-12-26 15:21:23', '', '2024-12-26 15:22:45');
INSERT INTO `gen_table_column` VALUES (99, 12, 'id', '主键', 'int', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:17:18');
INSERT INTO `gen_table_column` VALUES (100, 12, 'alert_value', '警戒值百分比', 'int', 'Long', 'alertValue', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:17:18');
INSERT INTO `gen_table_column` VALUES (101, 13, 'task_id', '工单ID', 'bigint', 'Long', 'taskId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (102, 13, 'task_code', '工单编号', 'varchar(40)', 'String', 'taskCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (103, 13, 'task_status', '工单状态', 'int', 'Long', 'taskStatus', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', 'task_status', 3, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (104, 13, 'create_type', '创建类型 0：自动 1：手动', 'int', 'Long', 'createType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'task_create_type', 4, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (105, 13, 'inner_code', '售货机编码', 'varchar(15)', 'String', 'innerCode', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (106, 13, 'user_id', '执行人id', 'int', 'Long', 'userId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (107, 13, 'user_name', '执行人名称', 'varchar(50)', 'String', 'userName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (108, 13, 'region_id', '所属区域Id', 'bigint', 'Long', 'regionId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (109, 13, 'desc', '备注', 'varchar(200)', 'String', 'desc', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (110, 13, 'product_type_id', '工单类型id', 'int', 'Long', 'productTypeId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (111, 13, 'assignor_id', '指派人Id', 'int', 'Long', 'assignorId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (112, 13, 'addr', '地址', 'varchar(200)', 'String', 'addr', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (113, 13, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (114, 13, 'update_time', '更新时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:15:34');
INSERT INTO `gen_table_column` VALUES (115, 14, 'details_id', NULL, 'bigint', 'Long', 'detailsId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:23');
INSERT INTO `gen_table_column` VALUES (116, 14, 'task_id', '工单Id', 'bigint', 'Long', 'taskId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:23');
INSERT INTO `gen_table_column` VALUES (117, 14, 'channel_code', '货道编号', 'varchar(10)', 'String', 'channelCode', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:23');
INSERT INTO `gen_table_column` VALUES (118, 14, 'expect_capacity', '补货期望容量', 'int', 'Long', 'expectCapacity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:23');
INSERT INTO `gen_table_column` VALUES (119, 14, 'sku_id', '商品Id', 'bigint', 'Long', 'skuId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:23');
INSERT INTO `gen_table_column` VALUES (120, 14, 'sku_name', NULL, 'varchar(50)', 'String', 'skuName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:23');
INSERT INTO `gen_table_column` VALUES (121, 14, 'sku_image', NULL, 'varchar(500)', 'String', 'skuImage', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'imageUpload', '', 7, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:23');
INSERT INTO `gen_table_column` VALUES (122, 15, 'type_id', NULL, 'int', 'Long', 'typeId', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:53');
INSERT INTO `gen_table_column` VALUES (123, 15, 'type_name', '类型名称', 'varchar(20)', 'String', 'typeName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:53');
INSERT INTO `gen_table_column` VALUES (124, 15, 'type', '工单类型。1:维修工单;2:运营工单', 'int', 'Long', 'type', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2024-12-29 18:13:56', '', '2024-12-29 18:16:53');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(0) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(0) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(0) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(0) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(0) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(0) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(0) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(0) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(0) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(0) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(0) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(0) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(0) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(0) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(0) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(0) NOT NULL COMMENT '开始时间',
  `end_time` bigint(0) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(0) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-12-15 11:32:44', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-12-15 11:32:44', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-12-15 11:32:44', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-12-15 11:32:44', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-12-15 11:32:44', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-12-15 11:32:44', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '旅游区', '1', 'bussiness_type', NULL, 'default', 'N', '0', 'admin', '2024-12-15 18:31:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '商场写字楼', '2', 'bussiness_type', NULL, 'default', 'N', '0', 'admin', '2024-12-15 18:31:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 3, '学校', '3', 'bussiness_type', NULL, 'default', 'N', '0', 'admin', '2024-12-15 18:32:06', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 4, '交通枢纽', '4', 'bussiness_type', NULL, 'default', 'N', '0', 'admin', '2024-12-15 18:32:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 1, '启用', '1', 'emp_status', NULL, 'default', 'N', '0', 'admin', '2024-12-18 17:33:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 0, '停用', '0', 'emp_status', '2', 'default', 'N', '0', 'admin', '2024-12-18 17:33:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '未投放', '0', 'vm_status', NULL, 'default', 'N', '0', 'admin', '2024-12-22 11:06:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 2, '运营', '1', 'vm_status', '', 'default', 'N', '0', 'admin', '2024-12-22 11:06:38', 'admin', '2024-12-22 11:06:54', NULL);
INSERT INTO `sys_dict_data` VALUES (108, 3, '撤机', '3', 'vm_status', NULL, 'default', 'N', '0', 'admin', '2024-12-22 11:06:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 1, '待办', '1', 'task_status', NULL, 'default', 'N', '0', 'admin', '2024-12-29 18:11:25', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 2, '进行中', '2', 'task_status', NULL, 'default', 'N', '0', 'admin', '2024-12-29 18:11:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 3, '取消', '3', 'task_status', NULL, 'default', 'N', '0', 'admin', '2024-12-29 18:11:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 4, '完成', '4', 'task_status', NULL, 'default', 'N', '0', 'admin', '2024-12-29 18:11:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 1, '自动', '0', 'task_create_type', NULL, 'default', 'N', '0', 'admin', '2024-12-29 18:12:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 2, '手动', '1', 'task_create_type', NULL, 'default', 'N', '0', 'admin', '2024-12-29 18:12:43', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-12-15 11:32:44', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '商圈类型', 'bussiness_type', '0', 'admin', '2024-12-15 18:31:21', '', NULL, '商圈类型');
INSERT INTO `sys_dict_type` VALUES (101, '员工状态', 'emp_status', '0', 'admin', '2024-12-18 17:32:50', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '设备状态', 'vm_status', '0', 'admin', '2024-12-22 11:06:10', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '工单状态', 'task_status', '0', 'admin', '2024-12-29 18:10:57', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '工单创建类型', 'task_create_type', '0', 'admin', '2024-12-29 18:12:21', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-12-15 11:32:45', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-15 11:38:37');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-15 18:30:05');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-15 23:48:51');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-15 23:48:53');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-15 23:48:56');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-16 14:54:20');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-16 16:10:30');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-16 16:42:15');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-16 16:42:35');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-16 17:38:39');
INSERT INTO `sys_logininfor` VALUES (110, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-16 17:38:46');
INSERT INTO `sys_logininfor` VALUES (111, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-16 17:39:07');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-16 17:39:16');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-17 11:50:32');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-17 12:24:48');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-17 14:14:23');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 10:16:38');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 11:53:12');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 14:15:07');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 15:22:59');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 17:28:59');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-19 15:25:35');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 11:22:28');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 16:35:57');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-22 10:45:45');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-22 11:49:19');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-22 15:12:19');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-22 18:26:53');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-22 18:57:21');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-22 22:12:27');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-22 22:12:29');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-22 22:12:31');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-23 11:09:06');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-23 13:45:03');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-23 15:17:38');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-23 18:12:29');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-23 23:14:31');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-24 00:27:56');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-24 00:27:59');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-25 11:40:16');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-25 14:30:58');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-25 16:38:20');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-25 17:40:41');
INSERT INTO `sys_logininfor` VALUES (143, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-25 17:41:10');
INSERT INTO `sys_logininfor` VALUES (144, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-25 17:41:17');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-25 17:41:25');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-26 14:53:46');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-26 21:26:11');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-27 10:15:34');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-27 14:32:46');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-29 17:22:11');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-29 22:14:42');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-30 11:33:17');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(0) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(0) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2060 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 11, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-12-15 11:32:43', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 12, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-12-15 11:32:43', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 13, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-12-15 11:32:43', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 14, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2024-12-15 11:32:43', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-12-15 11:32:43', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-12-15 11:32:43', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-12-15 11:32:43', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-12-15 11:32:43', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-12-15 11:32:43', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-12-15 11:32:43', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-12-15 11:32:43', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-12-15 11:32:43', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-12-15 11:32:43', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-12-15 11:32:43', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-12-15 11:32:43', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-12-15 11:32:43', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-12-15 11:32:43', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-12-15 11:32:43', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-12-15 11:32:43', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-12-15 11:32:43', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-12-15 11:32:43', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-12-15 11:32:43', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-12-15 11:32:43', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-12-15 11:32:43', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-12-15 11:32:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '点位管理', 0, 2, 'node', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '点位管理', 'admin', '2024-12-15 18:30:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '点位管理', 2000, 2, 'node', 'manage/node/index', NULL, 1, 0, 'C', '0', '0', 'manage:node:list', '#', 'admin', '2024-12-15 18:42:44', 'admin', '2024-12-15 18:45:30', '点位管理菜单');
INSERT INTO `sys_menu` VALUES (2002, '点位管理查询', 2001, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:node:query', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '点位管理新增', 2001, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:node:add', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '点位管理修改', 2001, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:node:edit', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '点位管理删除', 2001, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:node:remove', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '点位管理导出', 2001, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:node:export', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '合作商管理', 2000, 3, 'partner', 'manage/partner/index', NULL, 1, 0, 'C', '0', '0', 'manage:partner:list', '#', 'admin', '2024-12-15 18:42:44', 'admin', '2024-12-15 18:45:37', '合作商管理菜单');
INSERT INTO `sys_menu` VALUES (2008, '合作商管理查询', 2007, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:partner:query', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '合作商管理新增', 2007, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:partner:add', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '合作商管理修改', 2007, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:partner:edit', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '合作商管理删除', 2007, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:partner:remove', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '合作商管理导出', 2007, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:partner:export', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '区域管理', 2000, 1, 'region', 'manage/region/index', NULL, 1, 0, 'C', '0', '0', 'manage:region:list', '#', 'admin', '2024-12-15 18:42:44', 'admin', '2024-12-15 18:45:26', '区域管理菜单');
INSERT INTO `sys_menu` VALUES (2014, '区域管理查询', 2013, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:region:query', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '区域管理新增', 2013, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:region:add', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '区域管理修改', 2013, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:region:edit', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '区域管理删除', 2013, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:region:remove', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '区域管理导出', 2013, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:region:export', '#', 'admin', '2024-12-15 18:42:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '人员管理', 0, 4, 'emp', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'peoples', 'admin', '2024-12-18 17:31:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '人员列表', 2019, 1, 'emp', 'manage/emp/index', NULL, 1, 0, 'C', '0', '0', 'manage:emp:list', '#', 'admin', '2024-12-18 17:49:47', '', NULL, '人员列表菜单');
INSERT INTO `sys_menu` VALUES (2021, '人员列表查询', 2020, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:emp:query', '#', 'admin', '2024-12-18 17:49:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '人员列表新增', 2020, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:emp:add', '#', 'admin', '2024-12-18 17:49:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '人员列表修改', 2020, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:emp:edit', '#', 'admin', '2024-12-18 17:49:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '人员列表删除', 2020, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:emp:remove', '#', 'admin', '2024-12-18 17:49:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '人员列表导出', 2020, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:emp:export', '#', 'admin', '2024-12-18 17:49:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '设备管理', 0, 3, 'vm', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '设备管理', 'admin', '2024-12-22 11:05:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '设备管理', 2026, 1, 'vm', 'manage/vm/index', NULL, 1, 0, 'C', '0', '0', 'manage:vm:list', '#', 'admin', '2024-12-22 11:57:15', '', NULL, '设备管理菜单');
INSERT INTO `sys_menu` VALUES (2028, '设备管理查询', 2027, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:vm:query', '#', 'admin', '2024-12-22 11:57:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '设备管理新增', 2027, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:vm:add', '#', 'admin', '2024-12-22 11:57:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '设备管理修改', 2027, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:vm:edit', '#', 'admin', '2024-12-22 11:57:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '设备管理删除', 2027, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:vm:remove', '#', 'admin', '2024-12-22 11:57:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '设备管理导出', 2027, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:vm:export', '#', 'admin', '2024-12-22 11:57:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '设备类型管理', 2026, 3, 'vmType', 'manage/vmType/index', NULL, 1, 0, 'C', '0', '0', 'manage:vmType:list', '#', 'admin', '2024-12-22 11:57:21', 'admin', '2024-12-22 11:59:45', '设备类型管理菜单');
INSERT INTO `sys_menu` VALUES (2034, '设备类型管理查询', 2033, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:vmType:query', '#', 'admin', '2024-12-22 11:57:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '设备类型管理新增', 2033, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:vmType:add', '#', 'admin', '2024-12-22 11:57:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '设备类型管理修改', 2033, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:vmType:edit', '#', 'admin', '2024-12-22 11:57:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '设备类型管理删除', 2033, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:vmType:remove', '#', 'admin', '2024-12-22 11:57:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '设备类型管理导出', 2033, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:vmType:export', '#', 'admin', '2024-12-22 11:57:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '设备状态', 2026, 2, 'vmStatus', 'manage/vmStatus/index', NULL, 1, 0, 'C', '0', '0', 'manage:vm:list', '#', 'admin', '2024-12-23 19:01:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '策略管理', 0, 7, 'policy', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '策略管理', 'admin', '2024-12-25 16:42:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '策略管理', 2040, 1, 'policy', 'manage/policy/index', NULL, 1, 0, 'C', '0', '0', 'manage:policy:list', '#', 'admin', '2024-12-25 16:46:21', '', NULL, '策略管理菜单');
INSERT INTO `sys_menu` VALUES (2042, '策略管理查询', 2041, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:policy:query', '#', 'admin', '2024-12-25 16:46:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '策略管理新增', 2041, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:policy:add', '#', 'admin', '2024-12-25 16:46:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '策略管理修改', 2041, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:policy:edit', '#', 'admin', '2024-12-25 16:46:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '策略管理删除', 2041, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:policy:remove', '#', 'admin', '2024-12-25 16:46:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '策略管理导出', 2041, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:policy:export', '#', 'admin', '2024-12-25 16:46:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '商品管理', 0, 5, 'sku', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '商品管理', 'admin', '2024-12-26 15:21:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '商品类型', 2047, 1, 'sku_class', 'manage/sku_class/index', NULL, 1, 0, 'C', '0', '0', 'manage:sku_class:list', '#', 'admin', '2024-12-26 15:26:08', '', NULL, '商品类型菜单');
INSERT INTO `sys_menu` VALUES (2049, '商品类型查询', 2048, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:sku_class:query', '#', 'admin', '2024-12-26 15:26:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '商品类型新增', 2048, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:sku_class:add', '#', 'admin', '2024-12-26 15:26:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '商品类型修改', 2048, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:sku_class:edit', '#', 'admin', '2024-12-26 15:26:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '商品类型删除', 2048, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:sku_class:remove', '#', 'admin', '2024-12-26 15:26:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '商品类型导出', 2048, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:sku_class:export', '#', 'admin', '2024-12-26 15:26:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '商品管理', 2047, 1, 'sku', 'manage/sku/index', NULL, 1, 0, 'C', '0', '0', 'manage:sku:list', '#', 'admin', '2024-12-26 15:26:15', '', NULL, '商品管理菜单');
INSERT INTO `sys_menu` VALUES (2055, '商品管理查询', 2054, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:sku:query', '#', 'admin', '2024-12-26 15:26:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '商品管理新增', 2054, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:sku:add', '#', 'admin', '2024-12-26 15:26:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '商品管理修改', 2054, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:sku:edit', '#', 'admin', '2024-12-26 15:26:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '商品管理删除', 2054, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:sku:remove', '#', 'admin', '2024-12-26 15:26:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '商品管理导出', 2054, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:sku:export', '#', 'admin', '2024-12-26 15:26:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '工单管理', 0, 1, 'task', NULL, NULL, 1, 0, 'M', '0', '0', NULL, '工单管理', 'admin', '2024-12-29 18:10:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2061, '运营工单', 2060, 1, 'business', 'manage/task/business', NULL, 1, 0, 'C', '0', '0', 'manage:task:list', '#', 'admin', '2024-12-29 18:22:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2062, '运维工单', 2060, 2, 'operation', 'manage/task/operation', NULL, 1, 0, 'C', '0', '0', 'manage:task:list', '#', 'admin', '2024-12-29 18:23:27', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-12-15 11:32:45', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-12-15 11:32:45', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(0) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 382 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.dkd.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"点位管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"点位管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"node\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:30:48', 19);
INSERT INTO `sys_oper_log` VALUES (101, '字典类型', 1, 'com.dkd.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"商圈类型\",\"dictType\":\"bussiness_type\",\"params\":{},\"remark\":\"商圈类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:31:21', 14);
INSERT INTO `sys_oper_log` VALUES (102, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"旅游区\",\"dictSort\":1,\"dictType\":\"bussiness_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:31:38', 11);
INSERT INTO `sys_oper_log` VALUES (103, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"cssClass\":\"\",\"default\":false,\"dictLabel\":\"商场写字楼\",\"dictSort\":2,\"dictType\":\"bussiness_type\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:31:55', 12);
INSERT INTO `sys_oper_log` VALUES (104, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"学校\",\"dictSort\":3,\"dictType\":\"bussiness_type\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:32:06', 12);
INSERT INTO `sys_oper_log` VALUES (105, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"交通枢纽\",\"dictSort\":4,\"dictType\":\"bussiness_type\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:32:16', 8);
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 6, 'com.dkd.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tb_node,tb_partner,tb_region\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:32:36', 131);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"region\",\"className\":\"Region\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RegionName\",\"columnComment\":\"区域名称\",\"columnId\":25,\"columnName\":\"region_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"regionName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":26,\"columnName\":\"create_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"isRequired\":\"0\",\"javaField\":\"createTime\",\"javaType\":\"Date\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UpdateTime\",\"columnComment\":\"修改时间\",\"columnId\":27,\"columnName\":\"update_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"isRequired\":\"0\",\"javaField\":\"updateTime\",\"javaType\":\"Date\",\"list\":false,\"par', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:33:03', 30);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"region\",\"className\":\"Region\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-12-15 18:33:03\",\"usableColumn\":false},{\"capJavaField\":\"RegionName\",\"columnComment\":\"区域名称\",\"columnId\":25,\"columnName\":\"region_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"regionName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-12-15 18:33:03\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":26,\"columnName\":\"create_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"0\",\"isRequired\":\"0\",\"javaField\":\"createTime\",\"javaType\":\"Date\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-12-15 18:33:03\",\"usableColumn\":false},{\"capJavaField\":\"UpdateTime\",\"columnComment\":\"修改时间\",\"columnId\":27,\"columnName\":\"update_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:35:44', 25);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"partner\",\"className\":\"Partner\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":12,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PartnerName\",\"columnComment\":\"合作商名称\",\"columnId\":13,\"columnName\":\"partner_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"partnerName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ContactPerson\",\"columnComment\":\"联系人姓名\",\"columnId\":14,\"columnName\":\"contact_person\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"contactPerson\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ContactPhone\",\"columnComment\":\"联系电话\",\"columnId\":15,\"columnName\":\"contact_phone\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:38:09', 29);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"node\",\"className\":\"Node\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NodeName\",\"columnComment\":\"点位名称\",\"columnId\":2,\"columnName\":\"node_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"nodeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AddressDetail\",\"columnComment\":\"详细地址\",\"columnId\":3,\"columnName\":\"address_detail\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"addressDetail\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BusinessCircleType\",\"columnComment\":\"商圈类型, 例如: 1-商业区, 2-居民区, 3-办公区等\",\"columnId\":4,\"columnName\":\"business_circle_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:32:36\",\"dictType\":\"bussiness_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:41:40', 29);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 8, 'com.dkd.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tb_node,tb_partner,tb_region\"}', NULL, 0, NULL, '2024-12-15 18:41:52', 285);
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 2, 'com.dkd.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"manage/region/index\",\"createTime\":\"2024-12-15 18:42:44\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"区域管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"region\",\"perms\":\"manage:region:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:45:26', 24);
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.dkd.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"manage/node/index\",\"createTime\":\"2024-12-15 18:42:44\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"点位管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"node\",\"perms\":\"manage:node:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:45:30', 10);
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 2, 'com.dkd.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"manage/partner/index\",\"createTime\":\"2024-12-15 18:42:44\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"合作商管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"partner\",\"perms\":\"manage:partner:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:45:37', 15);
INSERT INTO `sys_oper_log` VALUES (115, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-15 18:46:35\",\"id\":5,\"params\":{},\"regionName\":\"河北\",\"remark\":\"河北\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:46:35', 16);
INSERT INTO `sys_oper_log` VALUES (116, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:55:19', 13);
INSERT INTO `sys_oper_log` VALUES (117, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-15 18:55:25\",\"id\":6,\"params\":{},\"regionName\":\"河北\",\"remark\":\"河北\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:55:25', 8);
INSERT INTO `sys_oper_log` VALUES (118, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-15 18:59:03\",\"id\":7,\"params\":{},\"regionName\":\"2\",\"remark\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:59:03', 7);
INSERT INTO `sys_oper_log` VALUES (119, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/6,7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:59:10', 7);
INSERT INTO `sys_oper_log` VALUES (120, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-15 18:59:12\",\"id\":8,\"params\":{},\"regionName\":\"1\",\"remark\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-15 18:59:13', 7);
INSERT INTO `sys_oper_log` VALUES (121, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-16 14:54:36\",\"id\":9,\"params\":{},\"regionName\":\"2\",\"remark\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 14:54:36', 13);
INSERT INTO `sys_oper_log` VALUES (122, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/9', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 14:54:41', 11);
INSERT INTO `sys_oper_log` VALUES (123, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-16 14:54:45\",\"id\":10,\"params\":{},\"regionName\":\"4\",\"remark\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 14:54:45', 8);
INSERT INTO `sys_oper_log` VALUES (124, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-16 14:54:49\",\"id\":11,\"params\":{},\"regionName\":\"453\",\"remark\":\"43\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 14:54:49', 9);
INSERT INTO `sys_oper_log` VALUES (125, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/8,10,11', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 14:54:55', 7);
INSERT INTO `sys_oper_log` VALUES (126, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-16 14:54:59\",\"id\":12,\"params\":{},\"regionName\":\"辅导费\",\"remark\":\"饿啊输入法\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 14:54:59', 6);
INSERT INTO `sys_oper_log` VALUES (127, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-16 14:54:59\",\"id\":12,\"params\":{},\"regionName\":\"辅导费1\",\"remark\":\"饿啊输入法\",\"updateTime\":\"2024-12-16 14:55:03\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 14:55:03', 7);
INSERT INTO `sys_oper_log` VALUES (128, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"1221\",\"contactPerson\":\"姚\",\"contactPhone\":\"17692638035\",\"createTime\":\"2024-12-16 15:05:36\",\"id\":3,\"params\":{},\"partnerName\":\"堪\",\"shareRatio\":11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 15:05:36', 11);
INSERT INTO `sys_oper_log` VALUES (129, '合作商管理', 3, 'com.dkd.manage.controller.PartnerController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/partner/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 15:05:41', 8);
INSERT INTO `sys_oper_log` VALUES (130, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"1221\",\"contactPerson\":\"姚\",\"contactPhone\":\"17692638035\",\"createTime\":\"2024-12-16 15:05:45\",\"id\":4,\"params\":{},\"partnerName\":\"堪\",\"shareRatio\":11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 15:05:45', 8);
INSERT INTO `sys_oper_log` VALUES (131, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"1221\",\"contactPerson\":\"姚\",\"contactPhone\":\"17692638035\",\"createTime\":\"2024-12-16 15:05:53\",\"id\":5,\"params\":{},\"partnerName\":\"堪\",\"shareRatio\":11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 15:05:53', 7);
INSERT INTO `sys_oper_log` VALUES (132, '合作商管理', 3, 'com.dkd.manage.controller.PartnerController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/partner/4,5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 15:05:59', 8);
INSERT INTO `sys_oper_log` VALUES (133, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"12\",\"contactPerson\":\"121\",\"contactPhone\":\"1111\",\"createTime\":\"2024-12-16 15:06:09\",\"id\":6,\"params\":{},\"partnerName\":\"21\",\"shareRatio\":11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 15:06:09', 7);
INSERT INTO `sys_oper_log` VALUES (134, '合作商管理', 3, 'com.dkd.manage.controller.PartnerController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/partner/6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 15:06:15', 6);
INSERT INTO `sys_oper_log` VALUES (135, '合作商管理', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"eleme_account\",\"contactPerson\":\"张三\",\"contactPhone\":\"13800138001\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":2,\"params\":{},\"partnerName\":\"饿了么\",\"remark\":\"外卖服务平台\",\"shareRatio\":251,\"updateBy\":\"admin\",\"updateTime\":\"2024-12-16 15:24:54\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 15:24:54', 7);
INSERT INTO `sys_oper_log` VALUES (136, '合作商管理', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"eleme_account\",\"contactPerson\":\"张三\",\"contactPhone\":\"13800138001\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":2,\"params\":{},\"partnerName\":\"饿了么\",\"remark\":\"外卖服务平台\",\"shareRatio\":25,\"updateBy\":\"admin\",\"updateTime\":\"2024-12-16 15:24:59\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 15:24:59', 8);
INSERT INTO `sys_oper_log` VALUES (137, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"12221\",\"contactPerson\":\"1111111111\",\"contactPhone\":\"11111111111\",\"createTime\":\"2024-12-16 15:31:33\",\"id\":7,\"params\":{},\"partnerName\":\"12\",\"shareRatio\":12}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 15:31:33', 178);
INSERT INTO `sys_oper_log` VALUES (138, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"1321\",\"contactPerson\":\"1312\",\"contactPhone\":\"312313\",\"createTime\":\"2024-12-16 16:47:01\",\"id\":8,\"params\":{},\"partnerName\":\"1213\",\"shareRatio\":1321}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 16:47:01', 185);
INSERT INTO `sys_oper_log` VALUES (139, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/7', '127.0.0.1', '内网IP', '7', NULL, 1, 'Cannot invoke \"java.lang.Boolean.booleanValue()\" because the return value of \"com.dkd.manage.service.IPartnerService.resetPassword(java.lang.Integer)\" is null', '2024-12-16 17:15:46', 6);
INSERT INTO `sys_oper_log` VALUES (140, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/7', '127.0.0.1', '内网IP', '7', NULL, 1, 'Cannot invoke \"java.lang.Integer.intValue()\" because the return value of \"com.dkd.manage.service.IPartnerService.resetPassword(java.lang.Integer)\" is null', '2024-12-16 17:20:53', 4);
INSERT INTO `sys_oper_log` VALUES (141, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/7', '127.0.0.1', '内网IP', '7', NULL, 1, 'Cannot invoke \"java.lang.Integer.intValue()\" because the return value of \"com.dkd.manage.service.IPartnerService.resetPassword(java.lang.Integer)\" is null', '2024-12-16 17:24:11', 9);
INSERT INTO `sys_oper_log` VALUES (142, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/8', '127.0.0.1', '内网IP', '8', NULL, 1, 'Cannot invoke \"java.lang.Integer.intValue()\" because the return value of \"com.dkd.manage.service.IPartnerService.resetPassword(java.lang.Integer)\" is null', '2024-12-16 17:24:23', 6);
INSERT INTO `sys_oper_log` VALUES (143, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/7', '127.0.0.1', '内网IP', '7', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 17:27:14', 19);
INSERT INTO `sys_oper_log` VALUES (144, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/7', '127.0.0.1', '内网IP', '7', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 17:27:20', 3);
INSERT INTO `sys_oper_log` VALUES (145, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/7', '127.0.0.1', '内网IP', '7', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'password\' not found. Available parameters are [arg1, arg0, param1, param2]', '2024-12-16 17:31:23', 84);
INSERT INTO `sys_oper_log` VALUES (146, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/7', '127.0.0.1', '内网IP', '7', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'password\' not found. Available parameters are [arg1, arg0, param1, param2]', '2024-12-16 17:32:01', 80);
INSERT INTO `sys_oper_log` VALUES (147, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/7', '127.0.0.1', '内网IP', '7', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'password\' not found. Available parameters are [arg1, arg0, param1, param2]', '2024-12-16 17:34:23', 83);
INSERT INTO `sys_oper_log` VALUES (148, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/7', '127.0.0.1', '内网IP', '7', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 17:36:12', 90);
INSERT INTO `sys_oper_log` VALUES (149, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-16 18:04:03\",\"id\":13,\"params\":{},\"regionName\":\"11\",\"remark\":\"11\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-16 18:04:03', 103);
INSERT INTO `sys_oper_log` VALUES (150, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/8,7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-12-16 18:04:52', 4);
INSERT INTO `sys_oper_log` VALUES (151, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/13,12', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-17 12:24:56', 15);
INSERT INTO `sys_oper_log` VALUES (152, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-17 12:24:59\",\"id\":14,\"params\":{},\"regionName\":\"11\",\"remark\":\"11\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-17 12:24:59\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-17 12:25:00', 12);
INSERT INTO `sys_oper_log` VALUES (153, '合作商管理', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"12221\",\"contactPerson\":\"1111111111\",\"contactPhone\":\"11111111111\",\"createTime\":\"2024-12-16 15:31:34\",\"id\":7,\"params\":{},\"partnerName\":\"12\",\"shareRatio\":121,\"updateTime\":\"2024-12-17 14:43:31\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-17 14:43:31', 15);
INSERT INTO `sys_oper_log` VALUES (154, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"999\",\"contactPerson\":\"9999\",\"contactPhone\":\"9999\",\"createBy\":\"admin\",\"createTime\":\"2024-12-17 14:43:58\",\"id\":9,\"params\":{},\"partnerName\":\"9999\",\"shareRatio\":99,\"updateBy\":\"admin\",\"updateTime\":\"2024-12-17 14:43:58\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-17 14:43:58', 82);
INSERT INTO `sys_oper_log` VALUES (155, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/9', '127.0.0.1', '内网IP', '9', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-17 15:13:29', 84);
INSERT INTO `sys_oper_log` VALUES (156, '合作商管理', 10, 'com.dkd.manage.controller.PartnerController.resetPassword()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/8', '127.0.0.1', '内网IP', '8', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-17 15:13:35', 78);
INSERT INTO `sys_oper_log` VALUES (157, '点位管理', 2, 'com.dkd.manage.controller.NodeController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/node', '127.0.0.1', '内网IP', '{\"addressDetail\":\"北京市东城区王府井大街1号\",\"businessCircleType\":1,\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":1,\"nodeName\":\"王府井商场\",\"params\":{},\"partnerId\":7,\"regionId\":1,\"remark\":\"北京著名购物区\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 10:16:54\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 10:16:54', 12);
INSERT INTO `sys_oper_log` VALUES (158, '点位管理', 2, 'com.dkd.manage.controller.NodeController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/node', '127.0.0.1', '内网IP', '{\"addressDetail\":\"北京市东城区王府井大街1号\",\"businessCircleType\":1,\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":1,\"nodeName\":\"王府井商场\",\"params\":{},\"partnerId\":9,\"regionId\":1,\"remark\":\"北京著名购物区\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 10:16:58\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 10:16:58', 7);
INSERT INTO `sys_oper_log` VALUES (159, '点位管理', 2, 'com.dkd.manage.controller.NodeController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/node', '127.0.0.1', '内网IP', '{\"addressDetail\":\"北京市东城区王府井大街1号\",\"businessCircleType\":1,\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":1,\"nodeName\":\"王府井商场\",\"params\":{},\"partnerId\":9,\"regionId\":3,\"remark\":\"北京著名购物区\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 10:17:06\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 10:17:06', 7);
INSERT INTO `sys_oper_log` VALUES (160, '点位管理', 1, 'com.dkd.manage.controller.NodeController.add()', 'POST', 1, 'admin', '研发部门', '/manage/node', '127.0.0.1', '内网IP', '{\"addressDetail\":\"11\",\"businessCircleType\":1,\"createTime\":\"2024-12-18 14:15:35\",\"id\":100,\"nodeName\":\"富达购物中心\",\"params\":{},\"partnerId\":1,\"regionId\":1,\"updateTime\":\"2024-12-18 14:15:35\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 14:15:35', 15);
INSERT INTO `sys_oper_log` VALUES (161, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/4', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_node`, CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON UPDATE CASCADE)\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\RegionMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.RegionMapper.deleteRegionByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from tb_region where id in           (               ?          )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_node`, CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON UPDATE CASCADE)\n; Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_node`, CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON UPDATE CASCADE); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_node`, CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON UPDATE CASCADE)', '2024-12-18 16:17:40', 48);
INSERT INTO `sys_oper_log` VALUES (162, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/4', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_node`, CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON UPDATE CASCADE)\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\RegionMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.RegionMapper.deleteRegionByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from tb_region where id in           (               ?          )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_node`, CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON UPDATE CASCADE)\n; Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_node`, CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON UPDATE CASCADE); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_node`, CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON UPDATE CASCADE)', '2024-12-18 16:20:59', 14);
INSERT INTO `sys_oper_log` VALUES (163, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-18 16:21:12\",\"id\":15,\"params\":{},\"regionName\":\"11\",\"remark\":\"11\",\"updateTime\":\"2024-12-18 16:21:12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 16:21:12', 186);
INSERT INTO `sys_oper_log` VALUES (164, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/15', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 16:21:15', 13);
INSERT INTO `sys_oper_log` VALUES (165, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/3', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\RegionMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.RegionMapper.deleteRegionByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from tb_region where id in           (               ?          )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))\n; Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))', '2024-12-18 17:29:35', 8);
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 1, 'com.dkd.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"人员管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"emp\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 17:31:39', 15);
INSERT INTO `sys_oper_log` VALUES (167, '字典类型', 1, 'com.dkd.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"员工状态\",\"dictType\":\"emp_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 17:32:50', 8);
INSERT INTO `sys_oper_log` VALUES (168, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"cssClass\":\"\",\"default\":false,\"dictLabel\":\"启用\",\"dictSort\":1,\"dictType\":\"emp_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 17:33:21', 13);
INSERT INTO `sys_oper_log` VALUES (169, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"cssClass\":\"2\",\"default\":false,\"dictLabel\":\"停用\",\"dictSort\":0,\"dictType\":\"emp_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 17:33:29', 9);
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 6, 'com.dkd.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tb_emp\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 17:34:12', 59);
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 6, 'com.dkd.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tb_role\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 17:34:18', 22);
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"emp\",\"className\":\"Emp\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":31,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-18 17:34:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserName\",\"columnComment\":\"员工名称\",\"columnId\":32,\"columnName\":\"user_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-18 17:34:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RegionId\",\"columnComment\":\"所属区域Id\",\"columnId\":33,\"columnName\":\"region_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-18 17:34:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"regionId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RegionName\",\"columnComment\":\"区域名称\",\"columnId\":34,\"columnName\":\"region_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-18 17:34:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"regionNa', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 17:40:01', 47);
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"role\",\"className\":\"Role\",\"columns\":[{\"capJavaField\":\"RoleId\",\"columnId\":43,\"columnName\":\"role_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-18 17:34:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"roleId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RoleCode\",\"columnComment\":\"角色编码\\n\",\"columnId\":44,\"columnName\":\"role_code\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-18 17:34:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"roleCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RoleName\",\"columnComment\":\"角色名称\\n\",\"columnId\":45,\"columnName\":\"role_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-18 17:34:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"roleName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"yk\",\"functionName\":\"工单角色\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"manage\",\"options\":\"{\\\"parentMenuId\\\":2019}\",\"packageName\":\"com.dkd.manage\",\"params\":{\"parentMenuId\":2019},\"parentMenuId\":\"2019\",\"sub\":false,\"tableComment\":\"工单角色表\",\"tableId\":5,\"tableName\":\"tb_role\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 17:40:46', 17);
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 8, 'com.dkd.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tb_emp,tb_role\"}', NULL, 0, NULL, '2024-12-18 17:40:54', 207);
INSERT INTO `sys_oper_log` VALUES (175, '人员列表', 1, 'com.dkd.manage.controller.EmpController.add()', 'POST', 1, 'admin', '研发部门', '/manage/emp', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-18 18:27:41\",\"id\":55,\"image\":\"/profile/upload/2024/12/18/2_20241218182736A001.jpg\",\"mobile\":\"111\",\"params\":{},\"regionId\":3,\"status\":0,\"userName\":\"1111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 18:27:41', 122);
INSERT INTO `sys_oper_log` VALUES (176, '人员列表', 1, 'com.dkd.manage.controller.EmpController.add()', 'POST', 1, 'admin', '研发部门', '/manage/emp', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-18 18:47:15\",\"id\":56,\"image\":\"/profile/upload/2024/12/18/我_20241218184708A002.jpg\",\"mobile\":\"17692638035\",\"params\":{},\"regionId\":2,\"roleId\":1,\"status\":1,\"userName\":\"姚堪\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 18:47:15', 8);
INSERT INTO `sys_oper_log` VALUES (177, '人员列表', 1, 'com.dkd.manage.controller.EmpController.add()', 'POST', 1, 'admin', '研发部门', '/manage/emp', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-18 18:50:20\",\"id\":57,\"image\":\"/profile/upload/2024/12/18/a98665b6d27bcd5e389a07da06752655_20241218185017A001.jpg\",\"mobile\":\"16097621802\",\"params\":{},\"regionId\":2,\"roleId\":1,\"status\":1,\"userName\":\"张静\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 18:50:20', 112);
INSERT INTO `sys_oper_log` VALUES (178, '人员列表', 1, 'com.dkd.manage.controller.EmpController.add()', 'POST', 1, 'admin', '研发部门', '/manage/emp', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-18 18:59:45\",\"image\":\"/profile/upload/2024/12/18/2_20241218185939A001.jpg\",\"mobile\":\"16097621802\",\"params\":{},\"regionId\":3,\"regionName\":\"北京市西城区\",\"roleId\":2,\"roleName\":\"运营员\",\"status\":0,\"userName\":\"张迪\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'16097621802\' for key \'tb_emp.tb_user_mobile_uindex\'\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\EmpMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.EmpMapper.insertEmp-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_emp          ( user_name,             region_id,             region_name,             role_id,                          role_name,             mobile,             image,             status,             create_time )           values ( ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'16097621802\' for key \'tb_emp.tb_user_mobile_uindex\'\n; Duplicate entry \'16097621802\' for key \'tb_emp.tb_user_mobile_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'16097621802\' for key \'tb_emp.tb_user_mobile_uindex\'', '2024-12-18 18:59:45', 169);
INSERT INTO `sys_oper_log` VALUES (179, '人员列表', 1, 'com.dkd.manage.controller.EmpController.add()', 'POST', 1, 'admin', '研发部门', '/manage/emp', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-18 18:59:51\",\"image\":\"/profile/upload/2024/12/18/2_20241218185939A001.jpg\",\"mobile\":\"16097621802\",\"params\":{},\"regionId\":3,\"regionName\":\"北京市西城区\",\"roleId\":2,\"roleName\":\"运营员\",\"status\":1,\"userName\":\"张迪\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'16097621802\' for key \'tb_emp.tb_user_mobile_uindex\'\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\EmpMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.EmpMapper.insertEmp-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_emp          ( user_name,             region_id,             region_name,             role_id,                          role_name,             mobile,             image,             status,             create_time )           values ( ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'16097621802\' for key \'tb_emp.tb_user_mobile_uindex\'\n; Duplicate entry \'16097621802\' for key \'tb_emp.tb_user_mobile_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'16097621802\' for key \'tb_emp.tb_user_mobile_uindex\'', '2024-12-18 18:59:51', 12);
INSERT INTO `sys_oper_log` VALUES (180, '人员列表', 3, 'com.dkd.manage.controller.EmpController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/emp/56,57', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:02:32', 13);
INSERT INTO `sys_oper_log` VALUES (181, '人员列表', 1, 'com.dkd.manage.controller.EmpController.add()', 'POST', 1, 'admin', '研发部门', '/manage/emp', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-18 19:02:42\",\"id\":60,\"image\":\"/profile/upload/2024/12/18/71cf3bc79f3df8dc512544fc502cd5834710280d_20241218190240A001.jpeg\",\"mobile\":\"16097621802\",\"params\":{},\"regionId\":1,\"regionName\":\"北京市朝阳区\",\"roleCode\":\"1001\",\"roleId\":1,\"roleName\":\"工单管理员\",\"status\":1,\"userName\":\"要看\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:02:42', 18);
INSERT INTO `sys_oper_log` VALUES (182, '人员列表', 2, 'com.dkd.manage.controller.EmpController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/emp', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-18 19:02:43\",\"id\":60,\"image\":\"/profile/upload/2024/12/18/71cf3bc79f3df8dc512544fc502cd5834710280d_20241218190240A001.jpeg\",\"mobile\":\"16097621802\",\"params\":{},\"regionId\":1,\"regionName\":\"北京市朝阳区\",\"roleCode\":\"1002\",\"roleId\":2,\"roleName\":\"运营员\",\"status\":1,\"updateTime\":\"2024-12-18 19:02:49\",\"userName\":\"要看\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:02:49', 13);
INSERT INTO `sys_oper_log` VALUES (183, '人员列表', 2, 'com.dkd.manage.controller.EmpController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/emp', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-18 19:02:43\",\"id\":60,\"image\":\"/profile/upload/2024/12/18/71cf3bc79f3df8dc512544fc502cd5834710280d_20241218190240A001.jpeg\",\"mobile\":\"16097621802\",\"params\":{},\"regionId\":3,\"regionName\":\"北京市西城区\",\"roleCode\":\"1002\",\"roleId\":2,\"roleName\":\"运营员\",\"status\":1,\"updateTime\":\"2024-12-18 19:02:53\",\"userName\":\"要看\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:02:53', 12);
INSERT INTO `sys_oper_log` VALUES (184, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":3,\"params\":{},\"regionName\":\"北京市西城区111\",\"remark\":\"北京市东部\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 19:04:10\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:04:10', 9);
INSERT INTO `sys_oper_log` VALUES (185, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":3,\"params\":{},\"regionName\":\"北京市西城区1\",\"remark\":\"北京市东部\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 19:07:12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:07:12', 8);
INSERT INTO `sys_oper_log` VALUES (186, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":3,\"params\":{},\"regionName\":\"北京市西城区11\",\"remark\":\"北京市东部\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 19:08:30\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:08:30', 13);
INSERT INTO `sys_oper_log` VALUES (187, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":3,\"params\":{},\"regionName\":\"北京市西城区1\",\"remark\":\"北京市东部\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 19:08:56\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:08:56', 14);
INSERT INTO `sys_oper_log` VALUES (188, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":3,\"params\":{},\"regionName\":\"北京市西城区111\",\"remark\":\"北京市东部\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 19:12:59\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:12:59', 17);
INSERT INTO `sys_oper_log` VALUES (189, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":3,\"params\":{},\"regionName\":\"北京市西城区11\",\"remark\":\"北京市东部\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 19:13:43\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:13:44', 9);
INSERT INTO `sys_oper_log` VALUES (190, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":3,\"params\":{},\"regionName\":\"北京市西城区1\",\"remark\":\"北京市东部\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 19:20:12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:20:12', 24);
INSERT INTO `sys_oper_log` VALUES (191, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":3,\"params\":{},\"regionName\":\"北京市西城区999\",\"remark\":\"北京市东部\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 19:20:34\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:20:34', 12);
INSERT INTO `sys_oper_log` VALUES (192, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":2,\"params\":{},\"regionName\":\"北京市海淀区9\",\"remark\":\"北京市中心\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 19:20:37\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:20:37', 12);
INSERT INTO `sys_oper_log` VALUES (193, '区域管理', 2, 'com.dkd.manage.controller.RegionController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":1,\"params\":{},\"regionName\":\"北京市朝阳区11\",\"remark\":\"北京市中心\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-18 19:22:50\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:22:50', 15);
INSERT INTO `sys_oper_log` VALUES (194, '点位管理', 3, 'com.dkd.manage.controller.NodeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/node/100', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 19:27:13', 12);
INSERT INTO `sys_oper_log` VALUES (195, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/1', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\RegionMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.RegionMapper.deleteRegionByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from tb_region where id in           (               ?          )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))\n; Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))', '2024-12-18 19:27:20', 45);
INSERT INTO `sys_oper_log` VALUES (196, '角色管理', 1, 'com.dkd.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2013,2014,2015,2016,2017,2018,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2019,2020,2021,2022,2023,2024,2025,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4],\"params\":{},\"roleId\":100,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-21 11:23:24', 35);
INSERT INTO `sys_oper_log` VALUES (197, '人员列表', 2, 'com.dkd.manage.controller.EmpController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/emp', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-06-10 15:06:58\",\"id\":2,\"image\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/22/67677d8827a60c73499b61ee.jpg\",\"mobile\":\"13800000001\",\"params\":{},\"regionId\":2,\"regionName\":\"北京市海淀区9\",\"roleCode\":\"1002\",\"roleId\":2,\"roleName\":\"运营员\",\"status\":1,\"updateTime\":\"2024-12-22 10:46:33\",\"userName\":\"刘备\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 10:46:33', 27);
INSERT INTO `sys_oper_log` VALUES (198, '菜单管理', 1, 'com.dkd.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"设备管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"设备管理\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"vm\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:05:40', 115);
INSERT INTO `sys_oper_log` VALUES (199, '字典类型', 1, 'com.dkd.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"设备状态\",\"dictType\":\"vm_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:06:10', 11);
INSERT INTO `sys_oper_log` VALUES (200, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未投放\",\"dictSort\":1,\"dictType\":\"vm_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:06:31', 11);
INSERT INTO `sys_oper_log` VALUES (201, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"cssClass\":\"1\",\"default\":false,\"dictLabel\":\"运营\",\"dictSort\":2,\"dictType\":\"vm_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:06:38', 12);
INSERT INTO `sys_oper_log` VALUES (202, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"撤机\",\"dictSort\":3,\"dictType\":\"vm_status\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:06:44', 9);
INSERT INTO `sys_oper_log` VALUES (203, '字典数据', 2, 'com.dkd.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:06:38\",\"cssClass\":\"\",\"default\":false,\"dictCode\":107,\"dictLabel\":\"运营\",\"dictSort\":2,\"dictType\":\"vm_status\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:06:54', 10);
INSERT INTO `sys_oper_log` VALUES (204, '代码生成', 6, 'com.dkd.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tb_vm_type,tb_vending_machine\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:07:40', 99);
INSERT INTO `sys_oper_log` VALUES (205, '代码生成', 6, 'com.dkd.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tb_channel\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:07:56', 37);
INSERT INTO `sys_oper_log` VALUES (206, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"VmType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":64,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"型号名称\",\"columnId\":65,\"columnName\":\"name\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Model\",\"columnComment\":\"型号编码\",\"columnId\":66,\"columnName\":\"model\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"model\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Image\",\"columnComment\":\"设备图片\",\"columnId\":67,\"columnName\":\"image\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"image\",\"javaType\":\"String\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:08:15', 29);
INSERT INTO `sys_oper_log` VALUES (207, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"vmType\",\"className\":\"VmType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":64,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-12-22 11:08:15\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"型号名称\",\"columnId\":65,\"columnName\":\"name\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-12-22 11:08:15\",\"usableColumn\":false},{\"capJavaField\":\"Model\",\"columnComment\":\"型号编码\",\"columnId\":66,\"columnName\":\"model\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"model\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-12-22 11:08:15\",\"usableColumn\":false},{\"capJavaField\":\"Image\",\"columnComment\":\"设备图片\",\"columnId\":67,\"columnName\":\"image\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"i', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:10:12', 27);
INSERT INTO `sys_oper_log` VALUES (208, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"vm\",\"className\":\"VendingMachine\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":46,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"InnerCode\",\"columnComment\":\"设备编号\",\"columnId\":47,\"columnName\":\"inner_code\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"innerCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ChannelMaxCapacity\",\"columnComment\":\"设备容量\",\"columnId\":48,\"columnName\":\"channel_max_capacity\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"channelMaxCapacity\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NodeId\",\"columnComment\":\"点位Id\",\"columnId\":49,\"columnName\":\"node_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:53:48', 49);
INSERT INTO `sys_oper_log` VALUES (209, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"channel\",\"className\":\"Channel\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":71,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ChannelCode\",\"columnComment\":\"货道编号\",\"columnId\":72,\"columnName\":\"channel_code\",\"columnType\":\"varchar(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"channelCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SkuId\",\"columnComment\":\"商品Id\",\"columnId\":73,\"columnName\":\"sku_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"skuId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"VmId\",\"columnComment\":\"售货机Id\",\"columnId\":74,\"columnName\":\"vm_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-12-22 11:07:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"vmId', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:54:24', 37);
INSERT INTO `sys_oper_log` VALUES (210, '代码生成', 8, 'com.dkd.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tb_vending_machine,tb_vm_type,tb_channel\"}', NULL, 0, NULL, '2024-12-22 11:54:31', 286);
INSERT INTO `sys_oper_log` VALUES (211, '菜单管理', 2, 'com.dkd.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"manage/vmType/index\",\"createTime\":\"2024-12-22 11:57:21\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2033,\"menuName\":\"设备类型管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2026,\"path\":\"vmType\",\"perms\":\"manage:vmType:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 11:59:45', 21);
INSERT INTO `sys_oper_log` VALUES (212, '设备类型管理', 1, 'com.dkd.manage.controller.VmTypeController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vmType', '127.0.0.1', '内网IP', '{\"channelMaxCapacity\":10,\"id\":21,\"image\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/22/6767c4d227a6f7b3ea4232f6.jpg\",\"model\":\"test\",\"name\":\"测试\",\"params\":{},\"vmCol\":2,\"vmRow\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-22 15:50:43', 35);
INSERT INTO `sys_oper_log` VALUES (213, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 11:23:48\",\"nodeId\":2,\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\VendingMachineMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.VendingMachineMapper.insertVendingMachine-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_vending_machine          ( node_id,                                                                                                                                                                         create_time )           values ( ?,                                                                                                                                                                         ? )\r\n### Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\n; Field \'business_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'business_type\' doesn\'t have a default value', '2024-12-23 11:23:48', 53);
INSERT INTO `sys_oper_log` VALUES (214, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 11:23:54\",\"nodeId\":2,\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\VendingMachineMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.VendingMachineMapper.insertVendingMachine-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_vending_machine          ( node_id,                                                                                                                                                                         create_time )           values ( ?,                                                                                                                                                                         ? )\r\n### Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\n; Field \'business_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'business_type\' doesn\'t have a default value', '2024-12-23 11:23:54', 3);
INSERT INTO `sys_oper_log` VALUES (215, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 11:24:21\",\"nodeId\":2,\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\VendingMachineMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.VendingMachineMapper.insertVendingMachine-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_vending_machine          ( node_id,                                                                                                                                                                         create_time )           values ( ?,                                                                                                                                                                         ? )\r\n### Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\n; Field \'business_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'business_type\' doesn\'t have a default value', '2024-12-23 11:24:21', 2);
INSERT INTO `sys_oper_log` VALUES (216, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 11:24:23\",\"nodeId\":2,\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\VendingMachineMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.VendingMachineMapper.insertVendingMachine-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_vending_machine          ( node_id,                                                                                                                                                                         create_time )           values ( ?,                                                                                                                                                                         ? )\r\n### Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\n; Field \'business_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'business_type\' doesn\'t have a default value', '2024-12-23 11:24:23', 3);
INSERT INTO `sys_oper_log` VALUES (217, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 11:24:50\",\"nodeId\":2,\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\VendingMachineMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.VendingMachineMapper.insertVendingMachine-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_vending_machine          ( node_id,                                                                                                                                                                         create_time )           values ( ?,                                                                                                                                                                         ? )\r\n### Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\n; Field \'business_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'business_type\' doesn\'t have a default value', '2024-12-23 11:24:50', 3);
INSERT INTO `sys_oper_log` VALUES (218, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 11:34:31\",\"nodeId\":2,\"params\":{},\"vmTypeId\":4}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\VendingMachineMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.VendingMachineMapper.insertVendingMachine-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_vending_machine          ( node_id,                                                                              vm_type_id,                                                                                           create_time )           values ( ?,                                                                              ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\n; Field \'business_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'business_type\' doesn\'t have a default value', '2024-12-23 11:34:31', 5);
INSERT INTO `sys_oper_log` VALUES (219, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 11:34:51\",\"nodeId\":1,\"params\":{},\"vmTypeId\":2}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\VendingMachineMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.VendingMachineMapper.insertVendingMachine-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_vending_machine          ( node_id,                                                                              vm_type_id,                                                                                           create_time )           values ( ?,                                                                              ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'business_type\' doesn\'t have a default value\n; Field \'business_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'business_type\' doesn\'t have a default value', '2024-12-23 11:34:51', 4);
INSERT INTO `sys_oper_log` VALUES (220, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"nodeId\":1,\"params\":{},\"vmTypeId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 11:57:04', 132);
INSERT INTO `sys_oper_log` VALUES (221, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"nodeId\":1,\"params\":{},\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 11:57:20', 12);
INSERT INTO `sys_oper_log` VALUES (222, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 12:00:49\",\"id\":16,\"params\":{},\"regionName\":\"1\",\"remark\":\"2\",\"updateTime\":\"2024-12-23 12:00:49\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:00:49', 105);
INSERT INTO `sys_oper_log` VALUES (223, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 12:00:55\",\"id\":17,\"params\":{},\"regionName\":\"2\",\"remark\":\"2\",\"updateTime\":\"2024-12-23 12:00:55\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:00:55', 7);
INSERT INTO `sys_oper_log` VALUES (224, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 12:00:58\",\"id\":18,\"params\":{},\"regionName\":\"3\",\"remark\":\"3\",\"updateTime\":\"2024-12-23 12:00:58\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:00:58', 7);
INSERT INTO `sys_oper_log` VALUES (225, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 12:01:03\",\"id\":19,\"params\":{},\"regionName\":\"4\",\"remark\":\"4\",\"updateTime\":\"2024-12-23 12:01:03\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:01:03', 6);
INSERT INTO `sys_oper_log` VALUES (226, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 12:01:06\",\"id\":20,\"params\":{},\"regionName\":\"5\",\"remark\":\"5\",\"updateTime\":\"2024-12-23 12:01:06\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:01:06', 7);
INSERT INTO `sys_oper_log` VALUES (227, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 12:01:10\",\"id\":21,\"params\":{},\"regionName\":\"6\",\"remark\":\"6\",\"updateTime\":\"2024-12-23 12:01:10\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:01:10', 7);
INSERT INTO `sys_oper_log` VALUES (228, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-23 12:01:40\",\"id\":22,\"params\":{},\"regionName\":\"7\",\"remark\":\"7\",\"updateTime\":\"2024-12-23 12:01:40\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:01:40', 5);
INSERT INTO `sys_oper_log` VALUES (229, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"nodeId\":1,\"params\":{},\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:04:50', 22);
INSERT INTO `sys_oper_log` VALUES (230, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"1\",\"contactPerson\":\"1\",\"contactPhone\":\"1\",\"createTime\":\"2024-12-23 12:20:17\",\"id\":10,\"params\":{},\"partnerName\":\"1\",\"shareRatio\":1,\"updateTime\":\"2024-12-23 12:20:17\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:20:17', 177);
INSERT INTO `sys_oper_log` VALUES (231, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"2\",\"contactPerson\":\"2\",\"contactPhone\":\"2\",\"createTime\":\"2024-12-23 12:20:23\",\"id\":11,\"params\":{},\"partnerName\":\"2\",\"shareRatio\":2,\"updateTime\":\"2024-12-23 12:20:23\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:20:23', 84);
INSERT INTO `sys_oper_log` VALUES (232, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"3\",\"contactPerson\":\"3\",\"contactPhone\":\"3\",\"createTime\":\"2024-12-23 12:20:29\",\"id\":12,\"params\":{},\"partnerName\":\"3\",\"shareRatio\":3,\"updateTime\":\"2024-12-23 12:20:29\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:20:29', 81);
INSERT INTO `sys_oper_log` VALUES (233, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"4\",\"contactPerson\":\"4\",\"contactPhone\":\"4\",\"createTime\":\"2024-12-23 12:20:36\",\"id\":13,\"params\":{},\"partnerName\":\"4\",\"shareRatio\":4,\"updateTime\":\"2024-12-23 12:20:36\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:20:36', 80);
INSERT INTO `sys_oper_log` VALUES (234, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"5\",\"contactPerson\":\"5\",\"contactPhone\":\"5\",\"createTime\":\"2024-12-23 12:20:43\",\"id\":14,\"params\":{},\"partnerName\":\"5\",\"shareRatio\":5,\"updateTime\":\"2024-12-23 12:20:43\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:20:43', 82);
INSERT INTO `sys_oper_log` VALUES (235, '合作商管理', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"6\",\"contactPerson\":\"6\",\"contactPhone\":\"6\",\"createTime\":\"2024-12-23 12:20:49\",\"id\":15,\"params\":{},\"partnerName\":\"6\",\"shareRatio\":6,\"updateTime\":\"2024-12-23 12:20:49\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 12:20:49', 81);
INSERT INTO `sys_oper_log` VALUES (236, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"nodeId\":3,\"params\":{},\"vmTypeId\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 13:50:42', 35);
INSERT INTO `sys_oper_log` VALUES (237, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"nodeId\":2,\"params\":{},\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 18:12:36', 43);
INSERT INTO `sys_oper_log` VALUES (238, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"nodeId\":1,\"params\":{},\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 18:35:06', 125);
INSERT INTO `sys_oper_log` VALUES (239, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市西城区西单北大街133号\",\"businessType\":1,\"channelMaxCapacity\":10,\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":117,\"innerCode\":\"rj4u9rdR\",\"lastSupplyTime\":\"2000-01-01 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":2,\"params\":{},\"partnerId\":1,\"regionId\":2,\"remark\":\"北京知名购物广场\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-23 18:55:16\",\"vmStatus\":0,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 18:55:16', 10);
INSERT INTO `sys_oper_log` VALUES (240, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市朝阳区建国门外大街1号\",\"businessType\":1,\"channelMaxCapacity\":10,\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":117,\"innerCode\":\"rj4u9rdR\",\"lastSupplyTime\":\"2000-01-01 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":3,\"params\":{},\"partnerId\":2,\"regionId\":3,\"remark\":\"高档购物中心\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-23 18:55:20\",\"vmStatus\":0,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 18:55:20', 7);
INSERT INTO `sys_oper_log` VALUES (241, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市西城区西单北大街133号\",\"businessType\":1,\"channelMaxCapacity\":10,\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":117,\"innerCode\":\"rj4u9rdR\",\"lastSupplyTime\":\"2000-01-01 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":2,\"params\":{},\"partnerId\":1,\"regionId\":2,\"remark\":\"北京知名购物广场\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-23 18:55:23\",\"vmStatus\":0,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 18:55:23', 8);
INSERT INTO `sys_oper_log` VALUES (242, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市海淀区成府路45号\",\"businessType\":1,\"channelMaxCapacity\":10,\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":117,\"innerCode\":\"rj4u9rdR\",\"lastSupplyTime\":\"2000-01-01 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":99,\"params\":{},\"partnerId\":2,\"regionId\":4,\"remark\":\"大学城周边热门地点\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-23 18:55:28\",\"vmStatus\":0,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 18:55:28', 9);
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 1, 'com.dkd.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"manage/vmStatus/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"设备状态\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2026,\"path\":\"vmStatus\",\"perms\":\"manage:vm:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-23 19:01:54', 19);
INSERT INTO `sys_oper_log` VALUES (244, '点位管理', 3, 'com.dkd.manage.controller.NodeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/node/2', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_vending_machine`, CONSTRAINT `tb_vending_machine_ibfk_2` FOREIGN KEY (`node_id`) REFERENCES `tb_node` (`id`))\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\NodeMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.NodeMapper.deleteNodeByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from tb_node where id in           (               ?          )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_vending_machine`, CONSTRAINT `tb_vending_machine_ibfk_2` FOREIGN KEY (`node_id`) REFERENCES `tb_node` (`id`))\n; Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_vending_machine`, CONSTRAINT `tb_vending_machine_ibfk_2` FOREIGN KEY (`node_id`) REFERENCES `tb_node` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_vending_machine`, CONSTRAINT `tb_vending_machine_ibfk_2` FOREIGN KEY (`node_id`) REFERENCES `tb_node` (`id`))', '2024-12-25 12:12:21', 48);
INSERT INTO `sys_oper_log` VALUES (245, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"nodeId\":1,\"params\":{},\"vmTypeId\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-25 12:13:28', 22);
INSERT INTO `sys_oper_log` VALUES (246, '设备管理', 1, 'com.dkd.manage.controller.VendingMachineController.add()', 'POST', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"nodeId\":1,\"params\":{},\"vmTypeId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-25 12:13:51', 8);
INSERT INTO `sys_oper_log` VALUES (247, '菜单管理', 1, 'com.dkd.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"策略管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"策略管理\",\"menuType\":\"M\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"policy\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-25 16:42:43', 19);
INSERT INTO `sys_oper_log` VALUES (248, '代码生成', 6, 'com.dkd.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tb_policy\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-25 16:42:57', 38);
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"policy\",\"className\":\"Policy\",\"columns\":[{\"capJavaField\":\"PolicyId\",\"columnComment\":\"策略id\",\"columnId\":81,\"columnName\":\"policy_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-12-25 16:42:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"policyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PolicyName\",\"columnComment\":\"策略名称\",\"columnId\":82,\"columnName\":\"policy_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-25 16:42:57\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"policyName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Discount\",\"columnComment\":\"策略方案，如：80代表8折\",\"columnId\":83,\"columnName\":\"discount\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-25 16:42:57\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"discount\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":84,\"columnName\":\"create_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2024-12-25 16:42:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isRequired\":\"0\",\"java', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-25 16:43:46', 42);
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"policy\",\"className\":\"Policy\",\"columns\":[{\"capJavaField\":\"PolicyId\",\"columnComment\":\"策略id\",\"columnId\":81,\"columnName\":\"policy_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-12-25 16:42:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"policyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-12-25 16:43:46\",\"usableColumn\":false},{\"capJavaField\":\"PolicyName\",\"columnComment\":\"策略名称\",\"columnId\":82,\"columnName\":\"policy_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-25 16:42:57\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"policyName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-12-25 16:43:46\",\"usableColumn\":false},{\"capJavaField\":\"Discount\",\"columnComment\":\"策略方案，如：80代表8折\",\"columnId\":83,\"columnName\":\"discount\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-25 16:42:57\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"discount\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-12-25 16:43:46\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":84,\"columnName\":\"create_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2024-12-25 16:42:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increm', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-25 16:44:13', 17);
INSERT INTO `sys_oper_log` VALUES (251, '代码生成', 8, 'com.dkd.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tb_policy\"}', NULL, 0, NULL, '2024-12-25 16:44:20', 204);
INSERT INTO `sys_oper_log` VALUES (252, '策略管理', 1, 'com.dkd.manage.controller.PolicyController.add()', 'POST', 1, 'admin', '研发部门', '/manage/policy', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-25 16:57:12\",\"discount\":12,\"params\":{},\"policyId\":11,\"policyName\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-25 16:57:12', 161);
INSERT INTO `sys_oper_log` VALUES (253, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市西城区西单北大街133号\",\"businessType\":1,\"channelMaxCapacity\":10,\"clientId\":\"70122567fcc13e7615e7239812c20448\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":80,\"innerCode\":\"A1000001\",\"lastSupplyTime\":\"2023-03-22 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":2,\"params\":{},\"partnerId\":1,\"policyId\":2,\"regionId\":2,\"remark\":\"北京知名购物广场\",\"runningStatus\":\"{\\\"statusCode\\\":\\\"1001\\\",\\\"status\\\":true}\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-26 14:59:28\",\"vmStatus\":1,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 14:59:28', 24);
INSERT INTO `sys_oper_log` VALUES (254, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市西城区西单北大街133号\",\"businessType\":1,\"channelMaxCapacity\":10,\"clientId\":\"70122567fcc13e7615e7239812c20448\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":80,\"innerCode\":\"A1000001\",\"lastSupplyTime\":\"2023-03-22 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":2,\"params\":{},\"partnerId\":1,\"policyId\":2,\"regionId\":2,\"remark\":\"北京知名购物广场\",\"runningStatus\":\"{\\\"statusCode\\\":\\\"1001\\\",\\\"status\\\":true}\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-26 14:59:36\",\"vmStatus\":1,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 14:59:36', 10);
INSERT INTO `sys_oper_log` VALUES (255, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市西城区西单北大街133号\",\"businessType\":1,\"channelMaxCapacity\":10,\"clientId\":\"70122567fcc13e7615e7239812c20448\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":80,\"innerCode\":\"A1000001\",\"lastSupplyTime\":\"2023-03-22 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":2,\"params\":{},\"partnerId\":1,\"policyId\":2,\"regionId\":2,\"remark\":\"北京知名购物广场\",\"runningStatus\":\"{\\\"statusCode\\\":\\\"1001\\\",\\\"status\\\":true}\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-26 15:11:43\",\"vmStatus\":1,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:11:43', 9);
INSERT INTO `sys_oper_log` VALUES (256, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市西城区西单北大街133号\",\"businessType\":1,\"channelMaxCapacity\":10,\"clientId\":\"70122567fcc13e7615e7239812c20448\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":80,\"innerCode\":\"A1000001\",\"lastSupplyTime\":\"2023-03-22 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":2,\"params\":{},\"partnerId\":1,\"policyId\":5,\"regionId\":2,\"remark\":\"北京知名购物广场\",\"runningStatus\":\"{\\\"statusCode\\\":\\\"1001\\\",\\\"status\\\":true}\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-26 15:11:48\",\"vmStatus\":1,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:11:48', 9);
INSERT INTO `sys_oper_log` VALUES (257, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市西城区西单北大街133号\",\"businessType\":1,\"channelMaxCapacity\":10,\"clientId\":\"70122567fcc13e7615e7239812c20448\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":80,\"innerCode\":\"A1000001\",\"lastSupplyTime\":\"2023-03-22 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":2,\"params\":{},\"partnerId\":1,\"policyId\":5,\"regionId\":2,\"remark\":\"北京知名购物广场\",\"runningStatus\":\"{\\\"statusCode\\\":\\\"1001\\\",\\\"status\\\":true}\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-26 15:12:16\",\"vmStatus\":1,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:12:16', 9);
INSERT INTO `sys_oper_log` VALUES (258, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市西城区西单北大街133号\",\"businessType\":1,\"channelMaxCapacity\":10,\"clientId\":\"70122567fcc13e7615e7239812c20448\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":80,\"innerCode\":\"A1000001\",\"lastSupplyTime\":\"2023-03-22 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":2,\"params\":{},\"partnerId\":1,\"policyId\":1,\"regionId\":2,\"remark\":\"北京知名购物广场\",\"runningStatus\":\"{\\\"statusCode\\\":\\\"1001\\\",\\\"status\\\":true}\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-26 15:12:18\",\"vmStatus\":1,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:12:18', 10);
INSERT INTO `sys_oper_log` VALUES (259, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市西城区西单北大街133号\",\"businessType\":1,\"channelMaxCapacity\":10,\"clientId\":\"70122567fcc13e7615e7239812c20448\",\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":80,\"innerCode\":\"A1000001\",\"lastSupplyTime\":\"2023-03-22 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":2,\"params\":{},\"partnerId\":1,\"policyId\":9,\"regionId\":2,\"remark\":\"北京知名购物广场\",\"runningStatus\":\"{\\\"statusCode\\\":\\\"1001\\\",\\\"status\\\":true}\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-26 15:13:25\",\"vmStatus\":1,\"vmTypeId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:13:25', 8);
INSERT INTO `sys_oper_log` VALUES (260, '菜单管理', 1, 'com.dkd.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"商品管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"商品管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"sku\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:21:04', 15);
INSERT INTO `sys_oper_log` VALUES (261, '代码生成', 6, 'com.dkd.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tb_sku_class,tb_sku\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:21:23', 63);
INSERT INTO `sys_oper_log` VALUES (262, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"sku_class\",\"className\":\"SkuClass\",\"columns\":[{\"capJavaField\":\"ClassId\",\"columnComment\":\"主键\",\"columnId\":96,\"columnName\":\"class_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-26 15:21:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"classId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ClassName\",\"columnComment\":\"商品类型\",\"columnId\":97,\"columnName\":\"class_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-26 15:21:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"className\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"上级id\",\"columnId\":98,\"columnName\":\"parent_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-26 15:21:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":true}],\"crud\":true,\"functionAuthor\":\"yk\",\"functionName\":\"商品类型\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"manage\",\"options\":\"{\\\"parentMenuId\\\":2047}\",\"packageName\":\"com.dkd.manage\",\"params\":{\"parentMenuId\":2047},\"parentMenuId\":\"2047\",\"sub\":false,\"tableComment\":\"商品类型表\",\"tableId\":11,\"tableName\":\"tb_sku_class\",\"tplCategory\":\"crud\",\"tplWebType\":\"elem', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:22:45', 21);
INSERT INTO `sys_oper_log` VALUES (263, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"sku\",\"className\":\"Sku\",\"columns\":[{\"capJavaField\":\"SkuId\",\"columnComment\":\"主键\",\"columnId\":86,\"columnName\":\"sku_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-12-26 15:21:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"skuId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SkuName\",\"columnComment\":\"商品名称\",\"columnId\":87,\"columnName\":\"sku_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-26 15:21:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"skuName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SkuImage\",\"columnComment\":\"商品图片\",\"columnId\":88,\"columnName\":\"sku_image\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-26 15:21:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"skuImage\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BrandName\",\"columnComment\":\"品牌\",\"columnId\":89,\"columnName\":\"brand_Name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-26 15:21:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:24:52', 21);
INSERT INTO `sys_oper_log` VALUES (264, '代码生成', 8, 'com.dkd.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tb_sku,tb_sku_class\"}', NULL, 0, NULL, '2024-12-26 15:24:57', 190);
INSERT INTO `sys_oper_log` VALUES (265, '商品类型', 1, 'com.dkd.manage.controller.SkuClassController.add()', 'POST', 1, 'admin', '研发部门', '/manage/sku_class', '127.0.0.1', '内网IP', '{\"classId\":15,\"className\":\"11\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:29:52', 108);
INSERT INTO `sys_oper_log` VALUES (266, '商品类型', 3, 'com.dkd.manage.controller.SkuClassController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku_class/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:31:18', 9);
INSERT INTO `sys_oper_log` VALUES (267, '商品类型', 1, 'com.dkd.manage.controller.SkuClassController.add()', 'POST', 1, 'admin', '研发部门', '/manage/sku_class', '127.0.0.1', '内网IP', '{\"className\":\"11\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'11\' for key \'tb_sku_class.tb_sku_class_class_name_uindex\'\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuClassMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuClassMapper.insertSkuClass-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_sku_class          ( class_name )           values ( ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'11\' for key \'tb_sku_class.tb_sku_class_class_name_uindex\'\n; Duplicate entry \'11\' for key \'tb_sku_class.tb_sku_class_class_name_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'11\' for key \'tb_sku_class.tb_sku_class_class_name_uindex\'', '2024-12-26 15:31:36', 54);
INSERT INTO `sys_oper_log` VALUES (268, '商品类型', 1, 'com.dkd.manage.controller.SkuClassController.add()', 'POST', 1, 'admin', '研发部门', '/manage/sku_class', '127.0.0.1', '内网IP', '{\"className\":\"11\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'11\' for key \'tb_sku_class.tb_sku_class_class_name_uindex\'\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuClassMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuClassMapper.insertSkuClass-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_sku_class          ( class_name )           values ( ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'11\' for key \'tb_sku_class.tb_sku_class_class_name_uindex\'\n; Duplicate entry \'11\' for key \'tb_sku_class.tb_sku_class_class_name_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'11\' for key \'tb_sku_class.tb_sku_class_class_name_uindex\'', '2024-12-26 15:34:18', 13);
INSERT INTO `sys_oper_log` VALUES (269, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-12-26 15:34:31\",\"id\":23,\"params\":{},\"regionName\":\"1\",\"remark\":\"1\",\"updateTime\":\"2024-12-26 15:34:31\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 15:34:31', 63);
INSERT INTO `sys_oper_log` VALUES (270, '商品管理', 1, 'com.dkd.manage.controller.SkuController.add()', 'POST', 1, 'admin', '研发部门', '/manage/sku', '127.0.0.1', '内网IP', '{\"brandName\":\"test\",\"classId\":15,\"createTime\":\"2024-12-26 16:20:58\",\"params\":{},\"price\":1,\"skuId\":12,\"skuImage\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d11e81f0583ded6fea189.jpg\",\"skuName\":\"test\",\"unit\":\"100\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 16:20:58', 111);
INSERT INTO `sys_oper_log` VALUES (271, '商品管理', 1, 'com.dkd.manage.controller.SkuController.add()', 'POST', 1, 'admin', '研发部门', '/manage/sku', '127.0.0.1', '内网IP', '{\"brandName\":\"1\",\"classId\":1,\"createTime\":\"2024-12-26 16:26:00\",\"params\":{},\"price\":1,\"skuId\":13,\"skuImage\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d13171f0583ded6fea18a.png\",\"skuName\":\"1\",\"unit\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 16:26:00', 8);
INSERT INTO `sys_oper_log` VALUES (272, '商品管理', 1, 'com.dkd.manage.controller.SkuController.add()', 'POST', 1, 'admin', '研发部门', '/manage/sku', '127.0.0.1', '内网IP', '{\"brandName\":\"2\",\"classId\":2,\"createTime\":\"2024-12-26 16:27:55\",\"params\":{},\"price\":200,\"skuId\":14,\"skuImage\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d138b1f0583ded6fea18b.jpeg\",\"skuName\":\"2\",\"unit\":\"100ML\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 16:27:55', 9);
INSERT INTO `sys_oper_log` VALUES (273, '商品管理', 2, 'com.dkd.manage.controller.SkuController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/sku', '127.0.0.1', '内网IP', '{\"brandName\":\"1\",\"classId\":1,\"createTime\":\"2024-12-26 16:26:01\",\"isDiscount\":0,\"params\":{},\"price\":1,\"skuId\":13,\"skuImage\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d13171f0583ded6fea18a.png\",\"skuName\":\"1\",\"unit\":\"1\",\"updateTime\":\"2024-12-26 16:28:27\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 16:28:27', 9);
INSERT INTO `sys_oper_log` VALUES (274, '商品管理', 2, 'com.dkd.manage.controller.SkuController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/sku', '127.0.0.1', '内网IP', '{\"brandName\":\"1\",\"classId\":1,\"createTime\":\"2024-12-26 16:26:01\",\"isDiscount\":0,\"params\":{},\"price\":1,\"skuId\":13,\"skuImage\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d13171f0583ded6fea18a.png\",\"skuName\":\"1\",\"unit\":\"1\",\"updateTime\":\"2024-12-26 16:28:39\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 16:28:39', 9);
INSERT INTO `sys_oper_log` VALUES (275, '商品管理', 2, 'com.dkd.manage.controller.SkuController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/sku', '127.0.0.1', '内网IP', '{\"brandName\":\"2\",\"classId\":2,\"createTime\":\"2024-12-26 16:27:56\",\"isDiscount\":0,\"params\":{},\"price\":22,\"skuId\":14,\"skuImage\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d138b1f0583ded6fea18b.jpeg\",\"skuName\":\"2\",\"unit\":\"100ML\",\"updateTime\":\"2024-12-26 16:28:52\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 16:28:52', 8);
INSERT INTO `sys_oper_log` VALUES (276, '商品管理', 2, 'com.dkd.manage.controller.SkuController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/sku', '127.0.0.1', '内网IP', '{\"brandName\":\"1\",\"classId\":1,\"createTime\":\"2024-12-26 16:26:01\",\"isDiscount\":0,\"params\":{},\"price\":100,\"skuId\":13,\"skuImage\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d13171f0583ded6fea18a.png\",\"skuName\":\"1\",\"unit\":\"1\",\"updateTime\":\"2024-12-26 16:29:21\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 16:29:21', 6);
INSERT INTO `sys_oper_log` VALUES (277, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/2,1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 16:47:57', 15);
INSERT INTO `sys_oper_log` VALUES (278, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/3,4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 16:51:04', 11499);
INSERT INTO `sys_oper_log` VALUES (279, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/9', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 16:59:27', 16);
INSERT INTO `sys_oper_log` VALUES (280, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 17:02:01', 28);
INSERT INTO `sys_oper_log` VALUES (281, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 17:03:54', 9609);
INSERT INTO `sys_oper_log` VALUES (282, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/6,7,8', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 17:07:36', 14966);
INSERT INTO `sys_oper_log` VALUES (283, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/6,7,8', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-12-26 17:16:49', 75692);
INSERT INTO `sys_oper_log` VALUES (284, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/12', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 17:21:12', 16);
INSERT INTO `sys_oper_log` VALUES (285, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/13,14', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 17:21:18', 10);
INSERT INTO `sys_oper_log` VALUES (286, '商品管理', 1, 'com.dkd.manage.controller.SkuController.add()', 'POST', 1, 'admin', '研发部门', '/manage/sku', '127.0.0.1', '内网IP', '{\"brandName\":\"1\",\"classId\":1,\"createTime\":\"2024-12-26 17:21:41\",\"params\":{},\"price\":1100,\"skuId\":15,\"skuImage\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20231f054350e713373e.jpg\",\"skuName\":\"1\",\"unit\":\"11\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 17:21:41', 14);
INSERT INTO `sys_oper_log` VALUES (287, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/1', '127.0.0.1', '内网IP', '{}', NULL, 1, '该商品存在于货道中，无法直接删除', '2024-12-26 17:21:54', 3);
INSERT INTO `sys_oper_log` VALUES (288, '商品管理', 1, 'com.dkd.manage.controller.SkuController.add()', 'POST', 1, 'admin', '研发部门', '/manage/sku', '127.0.0.1', '内网IP', '{\"brandName\":\"2\",\"classId\":2,\"createTime\":\"2024-12-26 17:22:14\",\"params\":{},\"price\":2200,\"skuId\":16,\"skuImage\":\"https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20451f054350e713373f.jpg\",\"skuName\":\"2\",\"unit\":\"22ML\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 17:22:14', 10);
INSERT INTO `sys_oper_log` VALUES (289, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/16,1', '127.0.0.1', '内网IP', '{}', NULL, 1, '该商品存在于货道中，无法直接删除', '2024-12-26 17:22:49', 3);
INSERT INTO `sys_oper_log` VALUES (290, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 17:23:29', 688);
INSERT INTO `sys_oper_log` VALUES (291, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 17:31:56', 28);
INSERT INTO `sys_oper_log` VALUES (292, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 18:56:44', 700);
INSERT INTO `sys_oper_log` VALUES (293, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\n         , \n            (\n             \'4\', \n             \'https://yk-dkd.oss-\' at line 15\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_sku         (sku_name, sku_image, brand_Name, unit, price, class_id, is_discount, create_time, update_time)         values                        (              ?,               ?,               ?,               ?,               ?,               ?,                                                        )          ,              (              ?,               ?,               ?,               ?,               ?,               ?,                                                        )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\n         , \n            (\n             \'4\', \n             \'https://yk-dkd.oss-\' at line 15\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\n         , \n            (\n             \'4\', \n             \'https://yk-dkd.oss-\' at line 15', '2024-12-26 18:58:20', 564);
INSERT INTO `sys_oper_log` VALUES (294, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\n         , \n            (\n             \'4\', \n             \'https://yk-dkd.oss-\' at line 15\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tb_sku         (sku_name, sku_image, brand_Name, unit, price, class_id, is_discount, create_time, update_time)         values                        (              ?,               ?,               ?,               ?,               ?,               ?,                                                        )          ,              (              ?,               ?,               ?,               ?,               ?,               ?,                                                        )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\n         , \n            (\n             \'4\', \n             \'https://yk-dkd.oss-\' at line 15\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\n         , \n            (\n             \'4\', \n             \'https://yk-dkd.oss-\' at line 15', '2024-12-26 18:58:57', 26);
INSERT INTO `sys_oper_log` VALUES (295, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'sku\' not found. Available parameters are [list, param1]', '2024-12-26 19:01:36', 400);
INSERT INTO `sys_oper_log` VALUES (296, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'sku\' not found. Available parameters are [list, param1]', '2024-12-26 19:01:55', 16);
INSERT INTO `sys_oper_log` VALUES (297, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'sku\' not found. Available parameters are [list, param1]', '2024-12-26 19:03:23', 474);
INSERT INTO `sys_oper_log` VALUES (298, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'sku\' not found. Available parameters are [list, param1]', '2024-12-26 19:04:51', 21);
INSERT INTO `sys_oper_log` VALUES (299, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'sku\' not found. Available parameters are [arg0, collection, list]', '2024-12-26 19:06:00', 423);
INSERT INTO `sys_oper_log` VALUES (300, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'sku.skuName != null and sku.skuName != \'\'\'. Cause: org.apache.ibatis.ognl.NoSuchPropertyException: java.util.ArrayList.skuName', '2024-12-26 19:07:40', 417);
INSERT INTO `sys_oper_log` VALUES (301, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'image\' in \'class com.dkd.manage.domain.Sku\'', '2024-12-26 19:21:24', 510);
INSERT INTO `sys_oper_log` VALUES (302, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'image\' in \'class com.dkd.manage.domain.Sku\'', '2024-12-26 19:21:30', 19);
INSERT INTO `sys_oper_log` VALUES (303, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sku_iamge\' in \'field list\'\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_iamge, brand_Name, unit, price,class_id,is_discount,create_time,update_time)         VALUES                        ( ?, ?, ?, ?,?,?,?,?, ?)          ,              ( ?, ?, ?, ?,?,?,?,?, ?)\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sku_iamge\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'sku_iamge\' in \'field list\'', '2024-12-26 19:22:35', 588);
INSERT INTO `sys_oper_log` VALUES (304, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 19:23:13', 573);
INSERT INTO `sys_oper_log` VALUES (305, '商品管理', 3, 'com.dkd.manage.controller.SkuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/sku/17,18', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 19:25:33', 30);
INSERT INTO `sys_oper_log` VALUES (306, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 19:25:39', 383);
INSERT INTO `sys_oper_log` VALUES (307, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 19:25:44', 252);
INSERT INTO `sys_oper_log` VALUES (308, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'tb_sku.tb_sku_sku_name_uindex\'\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'tb_sku.tb_sku_sku_name_uindex\'\n; Duplicate entry \'3\' for key \'tb_sku.tb_sku_sku_name_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'tb_sku.tb_sku_sku_name_uindex\'', '2024-12-26 19:28:39', 68);
INSERT INTO `sys_oper_log` VALUES (309, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'tb_sku.tb_sku_sku_name_uindex\'\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'tb_sku.tb_sku_sku_name_uindex\'\n; Duplicate entry \'3\' for key \'tb_sku.tb_sku_sku_name_uindex\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'3\' for key \'tb_sku.tb_sku_sku_name_uindex\'', '2024-12-26 19:29:09', 24);
INSERT INTO `sys_oper_log` VALUES (310, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`))\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`))\n; Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`))', '2024-12-26 19:29:28', 34);
INSERT INTO `sys_oper_log` VALUES (311, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`))\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`))\n; Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`))', '2024-12-26 19:29:41', 35);
INSERT INTO `sys_oper_log` VALUES (312, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 19:30:26', 36);
INSERT INTO `sys_oper_log` VALUES (313, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`))\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`))\n; Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`dkd`.`tb_sku`, CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`))', '2024-12-26 19:30:56', 39);
INSERT INTO `sys_oper_log` VALUES (314, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 19:31:17', 20);
INSERT INTO `sys_oper_log` VALUES (315, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\n; Column \'class_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null', '2024-12-26 19:34:50', 577);
INSERT INTO `sys_oper_log` VALUES (316, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\n; Column \'class_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null', '2024-12-26 19:35:00', 23);
INSERT INTO `sys_oper_log` VALUES (317, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\n; Column \'class_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null', '2024-12-26 19:36:52', 591);
INSERT INTO `sys_oper_log` VALUES (318, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\n; Column \'class_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null', '2024-12-26 19:37:42', 611);
INSERT INTO `sys_oper_log` VALUES (319, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\n; Column \'class_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null', '2024-12-26 19:40:32', 605);
INSERT INTO `sys_oper_log` VALUES (320, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)          ,              ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null\n; Column \'class_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'class_id\' cannot be null', '2024-12-26 19:40:59', 610);
INSERT INTO `sys_oper_log` VALUES (321, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'price\' cannot be null\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'price\' cannot be null\n; Column \'price\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'price\' cannot be null', '2024-12-26 19:42:51', 25);
INSERT INTO `sys_oper_log` VALUES (322, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'price\' cannot be null\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\SkuMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.SkuMapper.insertSkus-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO tb_sku         (sku_name, sku_image, brand_Name, unit, price,class_id,is_discount)         VALUES                        ( ?, ?, ?, ?,?,?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'price\' cannot be null\n; Column \'price\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'price\' cannot be null', '2024-12-26 19:44:04', 534);
INSERT INTO `sys_oper_log` VALUES (323, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 21:47:18', 1722);
INSERT INTO `sys_oper_log` VALUES (324, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'Convert data com.alibaba.excel.metadata.data.ReadCellData@21cff875 to class java.lang.Long error ', '2024-12-26 21:47:48', 67);
INSERT INTO `sys_oper_log` VALUES (325, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'Convert data com.alibaba.excel.metadata.data.ReadCellData@21cff875 to class java.lang.Long error ', '2024-12-26 21:48:05', 21);
INSERT INTO `sys_oper_log` VALUES (326, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'Convert data com.alibaba.excel.metadata.data.ReadCellData@d0a91862 to class java.lang.Long error ', '2024-12-26 21:49:24', 501);
INSERT INTO `sys_oper_log` VALUES (327, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'Convert data com.alibaba.excel.metadata.data.ReadCellData@cb520fbb to class java.lang.Long error ', '2024-12-26 21:50:28', 502);
INSERT INTO `sys_oper_log` VALUES (328, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'Convert data com.alibaba.excel.metadata.data.ReadCellData@cb520fbb to class java.lang.Long error ', '2024-12-26 21:51:17', 21);
INSERT INTO `sys_oper_log` VALUES (329, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'Convert data com.alibaba.excel.metadata.data.ReadCellData@f786ed4c to class java.lang.Long error ', '2024-12-26 21:52:28', 458);
INSERT INTO `sys_oper_log` VALUES (330, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, 'Convert data com.alibaba.excel.metadata.data.ReadCellData@96c48154 to class java.lang.Long error ', '2024-12-26 21:53:45', 16501);
INSERT INTO `sys_oper_log` VALUES (331, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '您的数据异常！', '2024-12-26 21:55:16', 406);
INSERT INTO `sys_oper_log` VALUES (332, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', NULL, 1, '您的数据异常！', '2024-12-26 21:56:57', 563);
INSERT INTO `sys_oper_log` VALUES (333, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 21:57:24', 395);
INSERT INTO `sys_oper_log` VALUES (334, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 21:57:33', 43);
INSERT INTO `sys_oper_log` VALUES (335, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 21:57:39', 31);
INSERT INTO `sys_oper_log` VALUES (336, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 21:58:13', 32);
INSERT INTO `sys_oper_log` VALUES (337, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-26 21:58:35', 27);
INSERT INTO `sys_oper_log` VALUES (338, '商品管理', 1, 'com.dkd.manage.controller.SkuController.excelImport()', 'POST', 1, 'admin', '研发部门', '/manage/sku/importExcel', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-26 21:59:08', 26);
INSERT INTO `sys_oper_log` VALUES (339, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-27 10:15:50', 652);
INSERT INTO `sys_oper_log` VALUES (340, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-27 10:16:08', 35);
INSERT INTO `sys_oper_log` VALUES (341, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-12-27 10:18:38', 35);
INSERT INTO `sys_oper_log` VALUES (342, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"_object[form]\":\"[object Object]\",\"_object[queryParams]\":\"[object Object]\",\"_key\":\"queryParams\",\"__v_isRef\":\"true\",\"_object[rules]\":\"[object Object]\"}', NULL, 0, NULL, '2024-12-27 10:31:03', 33);
INSERT INTO `sys_oper_log` VALUES (343, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"_object[form]\":\"[object Object]\",\"ids[0]\":\"1\",\"_object[queryParams]\":\"[object Object]\",\"_key\":\"queryParams\",\"__v_isRef\":\"true\",\"_object[rules]\":\"[object Object]\"}', NULL, 0, NULL, '2024-12-27 10:31:14', 25);
INSERT INTO `sys_oper_log` VALUES (344, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"_object[form]\":\"[object Object]\",\"ids[0]\":\"1\",\"_object[queryParams]\":\"[object Object]\",\"_key\":\"queryParams\",\"ids[1]\":\"2\",\"__v_isRef\":\"true\",\"_object[rules]\":\"[object Object]\"}', NULL, 0, NULL, '2024-12-27 10:31:50', 22);
INSERT INTO `sys_oper_log` VALUES (345, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"_object[form]\":\"[object Object]\",\"ids[0]\":\"1\",\"_object[queryParams]\":\"[object Object]\",\"_key\":\"queryParams\",\"ids[1]\":\"19\",\"__v_isRef\":\"true\",\"ids[2]\":\"20\",\"_object[rules]\":\"[object Object]\"}', NULL, 0, NULL, '2024-12-27 10:33:29', 9772);
INSERT INTO `sys_oper_log` VALUES (346, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"_object[form]\":\"[object Object]\",\"ids[0]\":\"1\",\"_object[queryParams]\":\"[object Object]\",\"_key\":\"queryParams\",\"ids[1]\":\"19\",\"__v_isRef\":\"true\",\"ids[2]\":\"20\",\"_object[rules]\":\"[object Object]\"}', NULL, 0, NULL, '2024-12-27 10:41:17', 375153);
INSERT INTO `sys_oper_log` VALUES (347, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"ids[0]\":\"1\",\"ids[1]\":\"2\"}', NULL, 0, NULL, '2024-12-27 10:49:42', 541);
INSERT INTO `sys_oper_log` VALUES (348, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"ids[0]\":\"1\",\"ids[1]\":\"2\"}', NULL, 0, NULL, '2024-12-27 10:49:45', 36);
INSERT INTO `sys_oper_log` VALUES (349, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"ids[0]\":\"1\",\"ids[1]\":\"2\"}', NULL, 0, NULL, '2024-12-27 10:50:24', 26);
INSERT INTO `sys_oper_log` VALUES (350, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"res[ids]\":\"1,2\"}', NULL, 0, NULL, '2024-12-27 10:57:54', 634);
INSERT INTO `sys_oper_log` VALUES (351, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"res[ids]\":\"1,2\"}', NULL, 0, NULL, '2024-12-27 10:59:30', 36215);
INSERT INTO `sys_oper_log` VALUES (352, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"res[ids]\":\"1,2,19\"}', NULL, 0, NULL, '2024-12-27 11:05:27', 5610);
INSERT INTO `sys_oper_log` VALUES (353, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"_object[form]\":\"[object Object]\",\"_object[queryParams]\":\"[object Object]\",\"_key\":\"queryParams\",\"__v_isRef\":\"true\",\"_object[rules]\":\"[object Object]\"}', NULL, 1, 'Cannot read the array length because \"ids\" is null', '2024-12-27 11:06:01', 3);
INSERT INTO `sys_oper_log` VALUES (354, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"_object[form]\":\"[object Object]\",\"_object[queryParams]\":\"[object Object]\",\"_key\":\"queryParams\",\"__v_isRef\":\"true\",\"_object[rules]\":\"[object Object]\"}', NULL, 0, NULL, '2024-12-27 11:06:35', 607);
INSERT INTO `sys_oper_log` VALUES (355, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"res[ids]\":\"1,19,41\"}', NULL, 0, NULL, '2024-12-27 11:06:44', 25);
INSERT INTO `sys_oper_log` VALUES (356, '商品管理', 5, 'com.dkd.manage.controller.SkuController.export()', 'POST', 1, 'admin', '研发部门', '/manage/sku/export', '127.0.0.1', '内网IP', '{\"res[ids]\":\"1\"}', NULL, 0, NULL, '2024-12-27 11:07:17', 42);
INSERT INTO `sys_oper_log` VALUES (357, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 14:47:26', 123547);
INSERT INTO `sys_oper_log` VALUES (358, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:12:16', 1445426);
INSERT INTO `sys_oper_log` VALUES (359, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:13:09', 21);
INSERT INTO `sys_oper_log` VALUES (360, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:13:11', 8);
INSERT INTO `sys_oper_log` VALUES (361, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:13:26', 8);
INSERT INTO `sys_oper_log` VALUES (362, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:13:31', 14);
INSERT INTO `sys_oper_log` VALUES (363, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Table \'dkd.channel\' doesn\'t exist\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\ChannelMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.ChannelMapper.updateChannelMessage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: UPDATE channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'dkd.channel\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'dkd.channel\' doesn\'t exist', '2024-12-27 15:24:14', 50);
INSERT INTO `sys_oper_log` VALUES (364, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:24:59', 29);
INSERT INTO `sys_oper_log` VALUES (365, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:25:08', 9);
INSERT INTO `sys_oper_log` VALUES (366, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:32:08', 166613);
INSERT INTO `sys_oper_log` VALUES (367, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:32:08', 27);
INSERT INTO `sys_oper_log` VALUES (368, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:32:27', 33);
INSERT INTO `sys_oper_log` VALUES (369, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\ChannelMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.ChannelMapper.updateChannelMessage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction\n; Lock wait timeout exceeded; try restarting transaction; nested exception is com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction', '2024-12-27 15:43:09', 51468);
INSERT INTO `sys_oper_log` VALUES (370, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 69,077 milliseconds ago. The last packet sent successfully to the server was 69,077 milliseconds ago.\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\ChannelMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.ChannelMapper.updateChannelMessage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 69,077 milliseconds ago. The last packet sent successfully to the server was 69,077 milliseconds ago.\n; Communications link failure\n\nThe last packet successfully received from the server was 69,077 milliseconds ago. The last packet sent successfully to the server was 69,077 milliseconds ago.; nested exception is com.mysql.cj.jdbc.exceptions.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 69,077 milliseconds ago. The last packet sent successfully to the server was 69,077 milliseconds ago.', '2024-12-27 15:43:17', 69090);
INSERT INTO `sys_oper_log` VALUES (371, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\ChannelMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.ChannelMapper.updateChannelMessage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction\n; Lock wait timeout exceeded; try restarting transaction; nested exception is com.mysql.cj.jdbc.exceptions.MySQLTransactionRollbackException: Lock wait timeout exceeded; try restarting transaction', '2024-12-27 15:51:05', 50519);
INSERT INTO `sys_oper_log` VALUES (372, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 62,542 milliseconds ago. The last packet sent successfully to the server was 62,542 milliseconds ago.\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\ChannelMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.ChannelMapper.updateChannelMessage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?          ;              UPDATE tb_channel             SET sku_id = ?             WHERE inner_code = ?             AND channel_code = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 62,542 milliseconds ago. The last packet sent successfully to the server was 62,542 milliseconds ago.\n; Communications link failure\n\nThe last packet successfully received from the server was 62,542 milliseconds ago. The last packet sent successfully to the server was 62,542 milliseconds ago.; nested exception is com.mysql.cj.jdbc.exceptions.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 62,542 milliseconds ago. The last packet sent successfully to the server was 62,542 milliseconds ago.', '2024-12-27 15:51:57', 62546);
INSERT INTO `sys_oper_log` VALUES (373, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:53:21', 11056);
INSERT INTO `sys_oper_log` VALUES (374, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":8},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:53:54', 13);
INSERT INTO `sys_oper_log` VALUES (375, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:54:10', 14);
INSERT INTO `sys_oper_log` VALUES (376, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1,\"updateTime\":\"2024-12-27 15:55:31\"},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 15:55:31\"},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 15:55:31\"},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7,\"updateTime\":\"2024-12-27 15:55:31\"}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:55:31', 30);
INSERT INTO `sys_oper_log` VALUES (377, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1,\"updateTime\":\"2024-12-27 15:56:18\"},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 15:56:18\"},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 15:56:18\"},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7,\"updateTime\":\"2024-12-27 15:56:18\"}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:56:18', 19);
INSERT INTO `sys_oper_log` VALUES (378, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1,\"updateTime\":\"2024-12-27 15:56:32\"},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 15:56:32\"},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":6,\"updateTime\":\"2024-12-27 15:56:32\"},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7,\"updateTime\":\"2024-12-27 15:56:32\"}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-27 15:56:32', 15);
INSERT INTO `sys_oper_log` VALUES (379, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":1,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"1-2\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":2,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"1-3\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":2,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"1-4\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":4,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"2-1\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"2-2\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"2-3\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"2-4\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"3-1\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"3-2\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"3-3\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":2,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"3-4\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"4-1\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"4-2\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"4-3\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"},{\"channelCode\":\"4-4\",\"innerCode\":\"SFNuCUe8\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-27 16:08:04\"}],\"innerCode\":\"SFNuCUe8\",\"params\":{}}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'orginSkuId\' not found. Available parameters are [arg0, collection, list]', '2024-12-27 16:08:04', 12);
INSERT INTO `sys_oper_log` VALUES (380, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1,\"updateTime\":\"2024-12-29 17:22:21\"},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7,\"updateTime\":\"2024-12-29 17:22:21\"},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":6,\"updateTime\":\"2024-12-29 17:22:21\"},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7,\"updateTime\":\"2024-12-29 17:22:21\"}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'orginSkuId\' not found. Available parameters are [arg0, collection, list]', '2024-12-29 17:22:22', 13);
INSERT INTO `sys_oper_log` VALUES (381, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1,\"updateTime\":\"2024-12-29 17:23:57\"},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-29 17:23:57\"},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":6,\"updateTime\":\"2024-12-29 17:23:57\"},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7,\"updateTime\":\"2024-12-29 17:23:57\"}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'orginSkuId\' not found. Available parameters are [arg0, collection, list]', '2024-12-29 17:23:57', 1);
INSERT INTO `sys_oper_log` VALUES (382, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1,\"updateTime\":\"2024-12-29 17:24:59\"},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":8,\"updateTime\":\"2024-12-29 17:24:59\"},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":6,\"updateTime\":\"2024-12-29 17:24:59\"},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7,\"updateTime\":\"2024-12-29 17:24:59\"}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'orginSkuId\' not found. Available parameters are [arg0, collection, list]', '2024-12-29 17:30:41', 345008);
INSERT INTO `sys_oper_log` VALUES (383, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":8,\"updateTime\":\"2024-12-29 17:42:41\"},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":6},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'orginSkuId\' not found. Available parameters are [arg0, collection, list]', '2024-12-29 17:42:57', 16061);
INSERT INTO `sys_oper_log` VALUES (384, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":1},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-29 17:43:24\"},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":2,\"updateTime\":\"2024-12-29 17:43:24\"}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'orginSkuId\' not found. Available parameters are [arg0, collection, list]', '2024-12-29 17:43:35', 10120);
INSERT INTO `sys_oper_log` VALUES (385, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-29 17:44:06\"},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-29 17:44:06\"},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-29 17:44:06\"}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'orginSkuId\' not found. Available parameters are [arg0, collection, list]', '2024-12-29 17:44:08', 1912);
INSERT INTO `sys_oper_log` VALUES (386, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-29 17:46:33\"},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-29 17:46:33\"},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-29 17:46:33\"}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-29 17:46:37', 3851);
INSERT INTO `sys_oper_log` VALUES (387, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":7,\"updateTime\":\"2024-12-29 17:47:03\"},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3,\"updateTime\":\"2024-12-29 17:47:03\"},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-29 17:47:04', 1550);
INSERT INTO `sys_oper_log` VALUES (388, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3,\"updateTime\":\"2024-12-29 17:47:18\"},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 0, NULL, '2024-12-29 17:47:20', 1436);
INSERT INTO `sys_oper_log` VALUES (389, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: SQL String cannot be empty\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\ChannelMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.ChannelMapper.updateChannelMessage\r\n### The error occurred while executing an update\r\n### SQL: \r\n### Cause: java.sql.SQLException: SQL String cannot be empty\n; SQL String cannot be empty; nested exception is java.sql.SQLException: SQL String cannot be empty', '2024-12-29 17:47:52', 20291);
INSERT INTO `sys_oper_log` VALUES (390, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: SQL String cannot be empty\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\ChannelMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.ChannelMapper.updateChannelMessage\r\n### The error occurred while executing an update\r\n### SQL: \r\n### Cause: java.sql.SQLException: SQL String cannot be empty\n; SQL String cannot be empty; nested exception is java.sql.SQLException: SQL String cannot be empty', '2024-12-29 17:47:52', 12122);
INSERT INTO `sys_oper_log` VALUES (391, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: SQL String cannot be empty\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\ChannelMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.ChannelMapper.updateChannelMessage\r\n### The error occurred while executing an update\r\n### SQL: \r\n### Cause: java.sql.SQLException: SQL String cannot be empty\n; SQL String cannot be empty; nested exception is java.sql.SQLException: SQL String cannot be empty', '2024-12-29 17:48:43', 58);
INSERT INTO `sys_oper_log` VALUES (392, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: SQL String cannot be empty\r\n### The error may exist in file [D:\\study\\ruoyi\\DKD\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\ChannelMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.ChannelMapper.updateChannelMessage\r\n### The error occurred while executing an update\r\n### SQL: \r\n### Cause: java.sql.SQLException: SQL String cannot be empty\n; SQL String cannot be empty; nested exception is java.sql.SQLException: SQL String cannot be empty', '2024-12-29 17:51:32', 69766);
INSERT INTO `sys_oper_log` VALUES (393, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', '{\"msg\":\"修改成功！\",\"code\":200}', 0, NULL, '2024-12-29 17:53:50', 21);
INSERT INTO `sys_oper_log` VALUES (394, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', '{\"msg\":\"修改成功！\",\"code\":200}', 0, NULL, '2024-12-29 17:53:53', 4);
INSERT INTO `sys_oper_log` VALUES (395, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0,\"updateTime\":\"2024-12-29 17:53:56\"},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', '{\"msg\":\"修改成功！\",\"code\":200}', 0, NULL, '2024-12-29 17:53:56', 17);
INSERT INTO `sys_oper_log` VALUES (396, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":9,\"updateTime\":\"2024-12-29 17:54:01\"}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', '{\"msg\":\"修改成功！\",\"code\":200}', 0, NULL, '2024-12-29 17:54:01', 9);
INSERT INTO `sys_oper_log` VALUES (397, '售货机货道', 1, 'com.dkd.manage.controller.ChannelController.config()', 'PUT', 1, 'admin', '研发部门', '/manage/channel/config', '127.0.0.1', '内网IP', '{\"channelList\":[{\"channelCode\":\"1-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"1-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":0},{\"channelCode\":\"2-1\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":3},{\"channelCode\":\"2-2\",\"innerCode\":\"8vxxAklG\",\"params\":{},\"skuId\":9}],\"innerCode\":\"8vxxAklG\",\"params\":{}}', '{\"msg\":\"修改成功！\",\"code\":200}', 0, NULL, '2024-12-29 17:57:09', 15);
INSERT INTO `sys_oper_log` VALUES (398, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市东城区王府井大街1号\",\"businessType\":1,\"channelMaxCapacity\":10,\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":119,\"innerCode\":\"8vxxAklG\",\"lastSupplyTime\":\"2000-01-01 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":1,\"params\":{},\"partnerId\":5,\"policyId\":2,\"regionId\":3,\"remark\":\"北京著名购物区\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-29 17:57:13\",\"vmStatus\":0,\"vmTypeId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 17:57:13', 18);
INSERT INTO `sys_oper_log` VALUES (399, '设备管理', 2, 'com.dkd.manage.controller.VendingMachineController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/vm', '127.0.0.1', '内网IP', '{\"addr\":\"北京市西城区西单北大街133号\",\"businessType\":1,\"channelMaxCapacity\":8,\"createBy\":\"admin\",\"createTime\":\"2024-12-15 18:23:13\",\"id\":105,\"innerCode\":\"nf2UVwi5\",\"lastSupplyTime\":\"2000-01-01 00:00:00\",\"latitude\":0,\"longitudes\":0,\"nodeId\":2,\"params\":{},\"partnerId\":1,\"policyId\":1,\"regionId\":2,\"remark\":\"北京知名购物广场\",\"updateBy\":\"admin\",\"updateTime\":\"2024-12-29 17:57:18\",\"vmStatus\":0,\"vmTypeId\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 17:57:18', 8);
INSERT INTO `sys_oper_log` VALUES (400, '菜单管理', 1, 'com.dkd.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"工单管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"工单管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"task\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:10:27', 26);
INSERT INTO `sys_oper_log` VALUES (401, '字典类型', 1, 'com.dkd.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"工单状态\",\"dictType\":\"task_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:10:57', 13);
INSERT INTO `sys_oper_log` VALUES (402, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"待办\",\"dictSort\":1,\"dictType\":\"task_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:11:25', 12);
INSERT INTO `sys_oper_log` VALUES (403, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"进行中\",\"dictSort\":2,\"dictType\":\"task_status\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:11:33', 7);
INSERT INTO `sys_oper_log` VALUES (404, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"取消\",\"dictSort\":3,\"dictType\":\"task_status\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:11:41', 12);
INSERT INTO `sys_oper_log` VALUES (405, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"完成\",\"dictSort\":4,\"dictType\":\"task_status\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:11:51', 9);
INSERT INTO `sys_oper_log` VALUES (406, '字典类型', 1, 'com.dkd.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"工单创建类型\",\"dictType\":\"task_create_type\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:12:21', 8);
INSERT INTO `sys_oper_log` VALUES (407, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"自动\",\"dictSort\":1,\"dictType\":\"task_create_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:12:33', 9);
INSERT INTO `sys_oper_log` VALUES (408, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"手动\",\"dictSort\":2,\"dictType\":\"task_create_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:12:43', 9);
INSERT INTO `sys_oper_log` VALUES (409, '代码生成', 6, 'com.dkd.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tb_task_type,tb_task_details,tb_task,tb_job\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:13:56', 124);
INSERT INTO `sys_oper_log` VALUES (410, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"task\",\"className\":\"Task\",\"columns\":[{\"capJavaField\":\"TaskId\",\"columnComment\":\"工单ID\",\"columnId\":101,\"columnName\":\"task_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"taskId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TaskCode\",\"columnComment\":\"工单编号\",\"columnId\":102,\"columnName\":\"task_code\",\"columnType\":\"varchar(40)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"taskCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TaskStatus\",\"columnComment\":\"工单状态\",\"columnId\":103,\"columnName\":\"task_status\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"task_status\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"taskStatus\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateType\",\"columnComment\":\"创建类型 0：自动 1：手动\",\"columnId\":104,\"columnName\":\"create_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"task_create_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:15:34', 55);
INSERT INTO `sys_oper_log` VALUES (411, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"task_details\",\"className\":\"TaskDetails\",\"columns\":[{\"capJavaField\":\"DetailsId\",\"columnId\":115,\"columnName\":\"details_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"detailsId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TaskId\",\"columnComment\":\"工单Id\",\"columnId\":116,\"columnName\":\"task_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"taskId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ChannelCode\",\"columnComment\":\"货道编号\",\"columnId\":117,\"columnName\":\"channel_code\",\"columnType\":\"varchar(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"channelCode\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ExpectCapacity\",\"columnComment\":\"补货期望容量\",\"columnId\":118,\"columnName\":\"expect_capacity\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:16:23', 26);
INSERT INTO `sys_oper_log` VALUES (412, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"task_type\",\"className\":\"TaskType\",\"columns\":[{\"capJavaField\":\"TypeId\",\"columnId\":122,\"columnName\":\"type_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"typeId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeName\",\"columnComment\":\"类型名称\",\"columnId\":123,\"columnName\":\"type_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"typeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"工单类型。1:维修工单;2:运营工单\",\"columnId\":124,\"columnName\":\"type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"type\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"yk\",\"functionName\":\"工单类型\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"manage\",\"options\":\"{\\\"parentMenuId\\\":2060}\",\"packageName\":\"com.dkd.manage\",\"params\":{\"parentMenuId\":2060},\"parentMenuId\":\"2060\",\"sub\":false,\"tableComment\":\"工单类型\",\"tableId\":15,\"tableName\":\"tb_task_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:16:53', 16);
INSERT INTO `sys_oper_log` VALUES (413, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"job\",\"className\":\"Job\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":99,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AlertValue\",\"columnComment\":\"警戒值百分比\",\"columnId\":100,\"columnName\":\"alert_value\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-12-29 18:13:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"alertValue\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"yk\",\"functionName\":\"自动补货任务\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"manage\",\"options\":\"{\\\"parentMenuId\\\":2060}\",\"packageName\":\"com.dkd.manage\",\"params\":{\"parentMenuId\":2060},\"parentMenuId\":\"2060\",\"sub\":false,\"tableComment\":\"自动补货任务\",\"tableId\":12,\"tableName\":\"tb_job\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:17:18', 15);
INSERT INTO `sys_oper_log` VALUES (414, '代码生成', 8, 'com.dkd.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tb_task_details,tb_job,tb_task,tb_task_type\"}', NULL, 0, NULL, '2024-12-29 18:17:27', 271);
INSERT INTO `sys_oper_log` VALUES (415, '菜单管理', 1, 'com.dkd.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"manage/task/business\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"运营工单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2060,\"path\":\"business\",\"perms\":\"manage:task:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:22:16', 115);
INSERT INTO `sys_oper_log` VALUES (416, '菜单管理', 1, 'com.dkd.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"manage/task/operation\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"运维工单\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2060,\"path\":\"operation\",\"perms\":\"manage:task:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-29 18:23:27', 14);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-12-15 11:32:43', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-12-15 11:32:43', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-12-15 11:32:43', '', NULL, '普通角色');
INSERT INTO `sys_role` VALUES (100, '测试', 'test', 4, '1', 1, 1, '0', '0', 'admin', '2024-12-21 11:23:24', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 3);
INSERT INTO `sys_role_menu` VALUES (100, 4);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 101);
INSERT INTO `sys_role_menu` VALUES (100, 102);
INSERT INTO `sys_role_menu` VALUES (100, 103);
INSERT INTO `sys_role_menu` VALUES (100, 104);
INSERT INTO `sys_role_menu` VALUES (100, 105);
INSERT INTO `sys_role_menu` VALUES (100, 106);
INSERT INTO `sys_role_menu` VALUES (100, 107);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 109);
INSERT INTO `sys_role_menu` VALUES (100, 110);
INSERT INTO `sys_role_menu` VALUES (100, 111);
INSERT INTO `sys_role_menu` VALUES (100, 112);
INSERT INTO `sys_role_menu` VALUES (100, 113);
INSERT INTO `sys_role_menu` VALUES (100, 114);
INSERT INTO `sys_role_menu` VALUES (100, 115);
INSERT INTO `sys_role_menu` VALUES (100, 116);
INSERT INTO `sys_role_menu` VALUES (100, 117);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1000);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1007);
INSERT INTO `sys_role_menu` VALUES (100, 1008);
INSERT INTO `sys_role_menu` VALUES (100, 1009);
INSERT INTO `sys_role_menu` VALUES (100, 1010);
INSERT INTO `sys_role_menu` VALUES (100, 1011);
INSERT INTO `sys_role_menu` VALUES (100, 1012);
INSERT INTO `sys_role_menu` VALUES (100, 1013);
INSERT INTO `sys_role_menu` VALUES (100, 1014);
INSERT INTO `sys_role_menu` VALUES (100, 1015);
INSERT INTO `sys_role_menu` VALUES (100, 1016);
INSERT INTO `sys_role_menu` VALUES (100, 1017);
INSERT INTO `sys_role_menu` VALUES (100, 1018);
INSERT INTO `sys_role_menu` VALUES (100, 1019);
INSERT INTO `sys_role_menu` VALUES (100, 1020);
INSERT INTO `sys_role_menu` VALUES (100, 1021);
INSERT INTO `sys_role_menu` VALUES (100, 1022);
INSERT INTO `sys_role_menu` VALUES (100, 1023);
INSERT INTO `sys_role_menu` VALUES (100, 1024);
INSERT INTO `sys_role_menu` VALUES (100, 1025);
INSERT INTO `sys_role_menu` VALUES (100, 1026);
INSERT INTO `sys_role_menu` VALUES (100, 1027);
INSERT INTO `sys_role_menu` VALUES (100, 1028);
INSERT INTO `sys_role_menu` VALUES (100, 1029);
INSERT INTO `sys_role_menu` VALUES (100, 1030);
INSERT INTO `sys_role_menu` VALUES (100, 1031);
INSERT INTO `sys_role_menu` VALUES (100, 1032);
INSERT INTO `sys_role_menu` VALUES (100, 1033);
INSERT INTO `sys_role_menu` VALUES (100, 1034);
INSERT INTO `sys_role_menu` VALUES (100, 1035);
INSERT INTO `sys_role_menu` VALUES (100, 1036);
INSERT INTO `sys_role_menu` VALUES (100, 1037);
INSERT INTO `sys_role_menu` VALUES (100, 1038);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 1046);
INSERT INTO `sys_role_menu` VALUES (100, 1047);
INSERT INTO `sys_role_menu` VALUES (100, 1048);
INSERT INTO `sys_role_menu` VALUES (100, 1049);
INSERT INTO `sys_role_menu` VALUES (100, 1050);
INSERT INTO `sys_role_menu` VALUES (100, 1051);
INSERT INTO `sys_role_menu` VALUES (100, 1052);
INSERT INTO `sys_role_menu` VALUES (100, 1053);
INSERT INTO `sys_role_menu` VALUES (100, 1054);
INSERT INTO `sys_role_menu` VALUES (100, 1055);
INSERT INTO `sys_role_menu` VALUES (100, 1056);
INSERT INTO `sys_role_menu` VALUES (100, 1057);
INSERT INTO `sys_role_menu` VALUES (100, 1058);
INSERT INTO `sys_role_menu` VALUES (100, 1059);
INSERT INTO `sys_role_menu` VALUES (100, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2010);
INSERT INTO `sys_role_menu` VALUES (100, 2011);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-12-30 11:33:17', 'admin', '2024-12-15 11:32:43', '', '2024-12-30 11:33:17', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-12-25 17:41:10', 'admin', '2024-12-15 11:32:43', '', '2024-12-25 17:41:10', '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for tb_channel
-- ----------------------------
DROP TABLE IF EXISTS `tb_channel`;
CREATE TABLE `tb_channel`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `channel_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '货道编号',
  `sku_id` bigint(0) NULL DEFAULT 0 COMMENT '商品Id',
  `vm_id` bigint(0) NOT NULL COMMENT '售货机Id',
  `inner_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '售货机软编号',
  `max_capacity` int(0) NOT NULL DEFAULT 0 COMMENT '货道最大容量',
  `current_capacity` int(0) NULL DEFAULT 0 COMMENT '货道当前容量',
  `last_supply_time` datetime(0) NULL DEFAULT NULL COMMENT '上次补货时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `channel_vendingmachine_Id_fk`(`vm_id`) USING BTREE,
  INDEX `tb_channel_inner_code_index`(`inner_code`) USING BTREE,
  CONSTRAINT `tb_channel_ibfk_1` FOREIGN KEY (`vm_id`) REFERENCES `tb_vending_machine` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5291 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '售货机货道表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_channel
-- ----------------------------
INSERT INTO `tb_channel` VALUES (4703, '1-1', 9, 80, 'A1000001', 10, 8, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4704, '1-2', 2, 80, 'A1000001', 10, 2, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4705, '1-3', 2, 80, 'A1000001', 10, 6, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4706, '1-4', 4, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4707, '1-5', 3, 80, 'A1000001', 10, 9, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4708, '1-6', 4, 80, 'A1000001', 10, 4, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4709, '2-1', 1, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4710, '2-2', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4711, '2-3', 8, 80, 'A1000001', 10, 0, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4712, '2-4', 9, 80, 'A1000001', 10, 9, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4713, '2-5', 2, 80, 'A1000001', 10, 6, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4714, '2-6', 4, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4715, '3-1', 7, 80, 'A1000001', 10, 5, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4716, '3-2', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4717, '3-3', 3, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4718, '3-4', 2, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4719, '3-5', 2, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4720, '3-6', 1, 80, 'A1000001', 10, 10, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4721, '4-1', 2, 80, 'A1000001', 10, 1, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4722, '4-2', 4, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4723, '4-3', 5, 80, 'A1000001', 10, 6, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4724, '4-4', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4725, '4-5', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4726, '4-6', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4727, '5-1', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4728, '5-2', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4729, '5-3', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4730, '5-4', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4731, '5-5', 9, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4732, '5-6', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4883, '1-1', 5, 86, 'aim5xu4I', 10, 10, NULL, '2022-12-05 17:01:38', '2022-12-05 17:01:38');
INSERT INTO `tb_channel` VALUES (4884, '1-2', 1, 86, 'aim5xu4I', 10, 10, NULL, '2022-12-05 17:01:38', '2022-12-05 17:01:38');
INSERT INTO `tb_channel` VALUES (4885, '2-1', 0, 86, 'aim5xu4I', 10, 10, NULL, '2022-12-05 17:01:38', '2022-12-05 17:01:38');
INSERT INTO `tb_channel` VALUES (4886, '2-2', 0, 86, 'aim5xu4I', 10, 10, NULL, '2022-12-05 17:01:38', '2022-12-05 17:01:38');
INSERT INTO `tb_channel` VALUES (4887, '1-1', 5, 87, '5cy5BdUs', 10, 10, '2022-12-05 21:45:36', '2022-12-05 21:35:56', '2022-12-05 21:45:36');
INSERT INTO `tb_channel` VALUES (4888, '1-2', 1, 87, '5cy5BdUs', 10, 10, '2022-12-05 21:45:36', '2022-12-05 21:35:56', '2022-12-05 21:45:36');
INSERT INTO `tb_channel` VALUES (4889, '2-1', 0, 87, '5cy5BdUs', 10, 10, NULL, '2022-12-05 21:35:56', '2022-12-05 21:35:56');
INSERT INTO `tb_channel` VALUES (4890, '2-2', 0, 87, '5cy5BdUs', 10, 10, NULL, '2022-12-05 21:35:56', '2022-12-05 21:35:56');
INSERT INTO `tb_channel` VALUES (4891, '1-1', 2, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4892, '1-2', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4893, '1-3', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4894, '1-4', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4895, '1-5', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4896, '1-6', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4897, '2-1', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4898, '2-2', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4899, '2-3', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4900, '2-4', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4901, '2-5', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4902, '2-6', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4903, '3-1', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4904, '3-2', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4905, '3-3', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4906, '3-4', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4907, '3-5', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4908, '3-6', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4909, '4-1', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4910, '4-2', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4911, '4-3', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4912, '4-4', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4913, '4-5', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4914, '4-6', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4915, '5-1', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4916, '5-2', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4917, '5-3', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4918, '5-4', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4919, '5-5', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4920, '5-6', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4921, '1-1', 2, 89, 'bR1cfQRa', 10, 10, NULL, '2022-12-06 10:06:11', '2023-09-22 15:43:44');
INSERT INTO `tb_channel` VALUES (4922, '1-2', 0, 89, 'bR1cfQRa', 10, 10, NULL, '2022-12-06 10:06:11', '2022-12-06 10:06:11');
INSERT INTO `tb_channel` VALUES (4923, '2-1', 0, 89, 'bR1cfQRa', 10, 10, NULL, '2022-12-06 10:06:11', '2022-12-06 10:06:11');
INSERT INTO `tb_channel` VALUES (4924, '2-2', 0, 89, 'bR1cfQRa', 10, 10, NULL, '2022-12-06 10:06:11', '2022-12-06 10:06:11');
INSERT INTO `tb_channel` VALUES (4925, '1-1', 2, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4926, '1-2', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4927, '1-3', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4928, '1-4', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4929, '1-5', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4930, '1-6', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4931, '2-1', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4932, '2-2', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4933, '2-3', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4934, '2-4', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4935, '2-5', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4936, '2-6', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4937, '3-1', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4938, '3-2', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4939, '3-3', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4940, '3-4', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4941, '3-5', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4942, '3-6', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4943, '4-1', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4944, '4-2', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4945, '4-3', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4946, '4-4', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4947, '4-5', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4948, '4-6', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4949, '5-1', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4950, '5-2', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4951, '5-3', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4952, '5-4', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4953, '5-5', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4954, '5-6', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4955, '1-1', 5, 91, 'qUObmvbM', 10, 10, '2022-12-06 15:11:20', '2022-12-06 14:58:46', '2022-12-06 15:11:20');
INSERT INTO `tb_channel` VALUES (4956, '1-2', 1, 91, 'qUObmvbM', 10, 10, '2022-12-06 15:11:20', '2022-12-06 14:58:46', '2022-12-06 15:11:20');
INSERT INTO `tb_channel` VALUES (4957, '2-1', 0, 91, 'qUObmvbM', 10, 10, NULL, '2022-12-06 14:58:46', '2022-12-06 14:58:46');
INSERT INTO `tb_channel` VALUES (4958, '2-2', 0, 91, 'qUObmvbM', 10, 10, NULL, '2022-12-06 14:58:46', '2022-12-06 14:58:46');
INSERT INTO `tb_channel` VALUES (4959, '1-1', 0, 92, 'tU6K5IHg', 10, 0, NULL, '2023-01-03 19:37:43', '2023-01-03 19:37:43');
INSERT INTO `tb_channel` VALUES (4960, '1-2', 0, 92, 'tU6K5IHg', 10, 0, NULL, '2023-01-03 19:37:43', '2023-01-03 19:37:43');
INSERT INTO `tb_channel` VALUES (4961, '2-1', 0, 92, 'tU6K5IHg', 10, 0, NULL, '2023-01-03 19:37:43', '2023-01-03 19:37:43');
INSERT INTO `tb_channel` VALUES (4962, '2-2', 0, 92, 'tU6K5IHg', 10, 0, NULL, '2023-01-03 19:37:43', '2023-01-03 19:37:43');
INSERT INTO `tb_channel` VALUES (4963, '1-1', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4964, '1-2', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4965, '1-3', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4966, '1-4', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4967, '1-5', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4968, '1-6', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4969, '2-1', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4970, '2-2', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4971, '2-3', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4972, '2-4', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4973, '2-5', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4974, '2-6', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4975, '3-1', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4976, '3-2', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4977, '3-3', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4978, '3-4', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4979, '3-5', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4980, '3-6', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4981, '4-1', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4982, '4-2', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4983, '4-3', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4984, '4-4', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4985, '4-5', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4986, '4-6', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4987, '5-1', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4988, '5-2', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4989, '5-3', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4990, '5-4', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4991, '5-5', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4992, '5-6', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (5027, '1-1', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5028, '1-2', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5029, '1-3', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5030, '1-4', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5031, '2-1', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5032, '2-2', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5033, '2-3', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5034, '2-4', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5035, '3-1', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5036, '3-2', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5037, '3-3', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5038, '3-4', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5039, '4-1', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5040, '4-2', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5041, '4-3', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5042, '4-4', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5043, '1-1', 1, 106, 'vWgqPhpu', 10, 5, '2024-05-18 15:26:37', '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5044, '1-2', 2, 106, 'vWgqPhpu', 10, 5, '2024-05-18 15:26:37', '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5045, '1-3', 3, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5046, '1-4', 8, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5047, '1-5', 6, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5048, '1-6', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5049, '2-1', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5050, '2-2', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5051, '2-3', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5052, '2-4', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5053, '2-5', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5054, '2-6', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5055, '3-1', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5056, '3-2', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5057, '3-3', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5058, '3-4', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5059, '3-5', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5060, '3-6', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5061, '4-1', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5062, '4-2', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5063, '4-3', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5064, '4-4', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5065, '4-5', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5066, '4-6', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5067, '5-1', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5068, '5-2', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5069, '5-3', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5070, '5-4', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5071, '5-5', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5072, '5-6', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5073, '1-1', 1, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5074, '1-2', 2, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5075, '1-3', 2, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5076, '1-4', 4, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5077, '2-1', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5078, '2-2', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5079, '2-3', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5080, '2-4', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5081, '3-1', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5082, '3-2', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5083, '3-3', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5084, '3-4', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5085, '4-1', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5086, '4-2', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5087, '4-3', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5088, '4-4', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5179, '1-1', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5180, '1-2', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5181, '1-3', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5182, '1-4', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5183, '1-5', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5184, '1-6', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5185, '2-1', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5186, '2-2', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5187, '2-3', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5188, '2-4', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5189, '2-5', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5190, '2-6', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5191, '3-1', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5192, '3-2', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5193, '3-3', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5194, '3-4', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5195, '3-5', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5196, '3-6', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5197, '4-1', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5198, '4-2', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5199, '4-3', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5200, '4-4', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5201, '4-5', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5202, '4-6', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5203, '5-1', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5204, '5-2', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5205, '5-3', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5206, '5-4', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5207, '5-5', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5208, '5-6', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5241, '1-1', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5242, '1-2', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5243, '1-3', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5244, '1-4', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5245, '1-5', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5246, '1-6', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5247, '2-1', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5248, '2-2', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5249, '2-3', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5250, '2-4', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5251, '2-5', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5252, '2-6', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5253, '3-1', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5254, '3-2', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5255, '3-3', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5256, '3-4', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5257, '3-5', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5258, '3-6', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5259, '4-1', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5260, '4-2', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5261, '4-3', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5262, '4-4', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5263, '4-5', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5264, '4-6', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5265, '5-1', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5266, '5-2', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5267, '5-3', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5268, '5-4', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5269, '5-5', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5270, '5-6', 0, 117, 'rj4u9rdR', 10, NULL, NULL, '2024-12-23 18:35:06', NULL);
INSERT INTO `tb_channel` VALUES (5271, '1-1', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5272, '1-2', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5273, '1-3', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5274, '1-4', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5275, '2-1', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5276, '2-2', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5277, '2-3', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5278, '2-4', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5279, '3-1', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5280, '3-2', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5281, '3-3', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5282, '3-4', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5283, '4-1', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5284, '4-2', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5285, '4-3', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5286, '4-4', 0, 118, '1YXEzg4x', 8, NULL, NULL, '2024-12-25 12:13:28', NULL);
INSERT INTO `tb_channel` VALUES (5287, '1-1', 0, 119, '8vxxAklG', 10, NULL, NULL, '2024-12-25 12:13:51', '2024-12-29 17:46:37');
INSERT INTO `tb_channel` VALUES (5288, '1-2', 0, 119, '8vxxAklG', 10, NULL, NULL, '2024-12-25 12:13:51', '2024-12-29 17:53:56');
INSERT INTO `tb_channel` VALUES (5289, '2-1', 3, 119, '8vxxAklG', 10, NULL, NULL, '2024-12-25 12:13:51', '2024-12-29 17:47:04');
INSERT INTO `tb_channel` VALUES (5290, '2-2', 9, 119, '8vxxAklG', 10, NULL, NULL, '2024-12-25 12:13:51', '2024-12-29 17:54:01');

-- ----------------------------
-- Table structure for tb_emp
-- ----------------------------
DROP TABLE IF EXISTS `tb_emp`;
CREATE TABLE `tb_emp`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '员工名称',
  `region_id` int(0) NULL DEFAULT NULL COMMENT '所属区域Id',
  `region_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区域名称',
  `role_id` int(0) NULL DEFAULT NULL COMMENT '角色id',
  `role_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色编号',
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `mobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工头像',
  `status` tinyint(0) NULL DEFAULT 1 COMMENT '是否启用',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_user_Id_uindex`(`id`) USING BTREE,
  UNIQUE INDEX `tb_user_user_name_uindex`(`user_name`) USING BTREE,
  UNIQUE INDEX `tb_user_mobile_uindex`(`mobile`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `region_id`(`region_id`) USING BTREE,
  CONSTRAINT `tb_emp_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '工单员工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_emp
-- ----------------------------
INSERT INTO `tb_emp` VALUES (2, '刘备', 2, '北京市海淀区9', 2, '1002', '运营员', '13800000001', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/22/67677d8827a60c73499b61ee.jpg', 1, '2024-06-10 15:06:58', '2024-12-22 10:46:33');
INSERT INTO `tb_emp` VALUES (3, '关羽', 2, '北京市海淀区9', 2, '1002', '运营员', '13800000002', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:06');
INSERT INTO `tb_emp` VALUES (4, '张飞', 2, '北京市海淀区9', 3, '1003', '维修员', '13800000003', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:08');
INSERT INTO `tb_emp` VALUES (5, '赵云', 2, '北京市海淀区9', 3, '1003', '维修员', '13800000004', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:10');
INSERT INTO `tb_emp` VALUES (6, '曹操', 1, '北京市朝阳区11', 2, '1002', '运营员', '13900139001', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:11');
INSERT INTO `tb_emp` VALUES (7, '夏侯惇', 1, '北京市朝阳区11', 2, '1002', '运营员', '13900000002', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:13');
INSERT INTO `tb_emp` VALUES (8, '许褚', 1, '北京市朝阳区11', 3, '1003', '维修员', '13900139003', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:15');
INSERT INTO `tb_emp` VALUES (9, '张辽', 1, '北京市朝阳区11', 3, '1003', '维修员', '13900000004', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:17');
INSERT INTO `tb_emp` VALUES (10, '孙权', 3, '北京市西城区999', 2, '1002', '运营员', '13700000001', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:19');
INSERT INTO `tb_emp` VALUES (11, '周瑜', 3, '北京市西城区999', 2, '1002', '运营员', '13700000002', 'http://likede2-java.itheima.net/image/avatar.png', 0, '2024-06-10 15:06:58', '2024-06-10 16:11:21');
INSERT INTO `tb_emp` VALUES (12, '吕蒙', 3, '北京市西城区999', 3, '1003', '维修员', '13700000003', 'http://likede2-java.itheima.net/image/avatar.png', 0, '2024-06-10 15:06:58', '2024-06-10 16:11:24');
INSERT INTO `tb_emp` VALUES (13, '陆逊', 3, '北京市西城区999', 3, '1003', '维修员', '13700000005', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:26');
INSERT INTO `tb_emp` VALUES (50, '孙一百', 1, '北京市朝阳区11', 3, '1003', '维修员', '13700137009', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:28');
INSERT INTO `tb_emp` VALUES (51, '马超', 2, '北京市海淀区9', 3, '1003', '维修员', '13900002222', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:30');
INSERT INTO `tb_emp` VALUES (52, '黄忠', 2, '北京市海淀区9', 2, '1002', '运营员', '13900005555', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:31');
INSERT INTO `tb_emp` VALUES (53, '测试员工', 1, '北京市朝阳区11', 1, '1001', '工单管理员', '15100000001', '/profile/upload/2024/05/18/4e7f3a15429bfda99bce42a18cdd1jpeg_20240518103539A002.jpeg', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:33');
INSERT INTO `tb_emp` VALUES (60, '要看', 3, '北京市西城区999', 2, '1002', '运营员', '16097621802', '/profile/upload/2024/12/18/71cf3bc79f3df8dc512544fc502cd5834710280d_20241218190240A001.jpeg', 1, '2024-12-18 19:02:43', '2024-12-18 19:02:54');

-- ----------------------------
-- Table structure for tb_job
-- ----------------------------
DROP TABLE IF EXISTS `tb_job`;
CREATE TABLE `tb_job`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `alert_value` int(0) NULL DEFAULT 0 COMMENT '警戒值百分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '自动补货任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_job
-- ----------------------------
INSERT INTO `tb_job` VALUES (1, 80);

-- ----------------------------
-- Table structure for tb_node
-- ----------------------------
DROP TABLE IF EXISTS `tb_node`;
CREATE TABLE `tb_node`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `node_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '点位名称',
  `address_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '详细地址',
  `business_circle_type` int(0) NOT NULL COMMENT '商圈类型, 例如: 1-商业区, 2-居民区, 3-办公区等',
  `region_id` int(0) NOT NULL COMMENT '所属区域ID',
  `partner_id` int(0) NOT NULL COMMENT '关联的合作商ID',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_node_ibfk_1`(`region_id`) USING BTREE,
  INDEX `tb_node_ibfk_2`(`partner_id`) USING BTREE,
  CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tb_node_ibfk_2` FOREIGN KEY (`partner_id`) REFERENCES `tb_partner` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '记录各个点位的具体信息及归属' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_node
-- ----------------------------
INSERT INTO `tb_node` VALUES (1, '王府井商场', '北京市东城区王府井大街1号', 1, 3, 5, '2024-12-15 18:23:13', '2024-12-18 10:17:07', 'admin', 'admin', '北京著名购物区');
INSERT INTO `tb_node` VALUES (2, '西单商场', '北京市西城区西单北大街133号', 1, 2, 1, '2024-12-15 18:23:13', '2024-12-15 18:23:13', 'admin', 'admin', '北京知名购物广场');
INSERT INTO `tb_node` VALUES (3, '国贸商城', '北京市朝阳区建国门外大街1号', 2, 3, 2, '2024-12-15 18:23:13', '2024-12-15 18:23:13', 'admin', 'admin', '高档购物中心');
INSERT INTO `tb_node` VALUES (99, '五道口购物中心', '北京市海淀区成府路45号', 3, 4, 2, '2024-12-15 18:23:13', '2024-12-18 12:01:21', 'admin', 'admin', '大学城周边热门地点');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单编号',
  `third_no` varchar(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '第三方平台单号',
  `inner_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '机器编号',
  `channel_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '货道编号',
  `sku_id` bigint(0) NULL DEFAULT NULL COMMENT 'skuId',
  `sku_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品名称',
  `class_id` int(0) NULL DEFAULT NULL COMMENT '商品类别Id',
  `status` int(0) NULL DEFAULT NULL COMMENT '订单状态:0-待支付;1-支付完成;2-出货成功;3-出货失败;4-已取消',
  `amount` int(0) NOT NULL DEFAULT 0 COMMENT '支付金额',
  `price` int(0) NOT NULL DEFAULT 0 COMMENT '商品金额',
  `pay_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '支付类型，1支付宝 2微信',
  `pay_status` int(0) NULL DEFAULT 0 COMMENT '支付状态，0-未支付;1-支付完成;2-退款中;3-退款完成',
  `bill` int(0) NULL DEFAULT 0 COMMENT '合作商账单金额',
  `addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '点位地址',
  `region_id` bigint(0) NULL DEFAULT NULL COMMENT '所属区域Id',
  `region_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区域名称',
  `business_type` int(0) NULL DEFAULT NULL COMMENT '所属商圈',
  `partner_id` int(0) NULL DEFAULT NULL COMMENT '合作商Id',
  `open_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '跨站身份验证',
  `node_id` bigint(0) NULL DEFAULT NULL COMMENT '点位Id',
  `node_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '点位名称',
  `cancel_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '取消原因',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Order_OrderNo_uindex`(`order_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES (1639542977692344321, 'A1000001802891882192300', NULL, 'A1000001', NULL, 3, '统一奶茶', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '1', '2023-03-25 16:21:22', '2023-03-25 16:21:51');
INSERT INTO `tb_order` VALUES (1639551491689062401, 'A1000001804921842908200', NULL, 'A1000001', NULL, 2, '小康师傅', 1, 4, 1, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '2', '2023-03-25 16:55:12', '2023-03-25 17:00:13');
INSERT INTO `tb_order` VALUES (1639551769091940353, 'A1000001804987986430800', NULL, 'A1000001', NULL, 7, '一百橙汁', 1, 4, 1, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-25 16:56:18', '2023-03-25 17:01:19');
INSERT INTO `tb_order` VALUES (1639570465608884226, 'A1000001809445445129300', NULL, 'A1000001', NULL, 2, '小康师傅', 1, 4, 1, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-25 18:10:35', '2023-03-25 18:11:05');
INSERT INTO `tb_order` VALUES (1640253438704431106, 'A1000001972287294582300', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 2, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 15:24:29', '2023-03-27 15:24:52');
INSERT INTO `tb_order` VALUES (1640291223389851650, 'A1000001981295877562800', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 4, 1, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 17:54:37', '2023-03-27 17:59:39');
INSERT INTO `tb_order` VALUES (1640291496925581313, 'A1000001981361996771600', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 4, 1, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 17:55:43', '2023-03-27 18:00:44');
INSERT INTO `tb_order` VALUES (1640292440643940353, 'A1000001981586907029400', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 4, 1, 1, 'alipay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 17:59:28', '2023-03-27 18:04:29');
INSERT INTO `tb_order` VALUES (1640294278558597121, 'A1000001982025093546600', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 18:06:46', '2023-03-27 18:06:59');
INSERT INTO `tb_order` VALUES (1640295466658119682, 'A1000001982308461482000', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 3, 1, 1, 'wxpay', 3, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 18:11:29', '2023-03-27 18:11:56');
INSERT INTO `tb_order` VALUES (1665192943211196418, 'A10000011867384516930600', NULL, 'A1000001', NULL, 2, '小康师傅', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-06-04 11:05:10', '2023-06-04 11:05:30');
INSERT INTO `tb_order` VALUES (1665193128339386370, 'A10000011867429590093200', NULL, 'A1000001', NULL, 3, '统一奶茶', 1, 1, 1, 1, 'alipay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-06-04 11:05:54', '2023-06-04 11:06:07');
INSERT INTO `tb_order` VALUES (1665193628363337730, 'A10000011867548883835400', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-06-04 11:07:53', '2023-06-04 11:11:41');
INSERT INTO `tb_order` VALUES (1665197835275415554, 'A10000011868551878012500', NULL, 'A1000001', NULL, 2, '小康师傅', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, 'oJ9WJ5MhIS-hiwuUX0GmsHDzqTyQ', 1, '龙门石窟', '', '2023-06-04 11:24:36', '2023-06-04 11:24:58');
INSERT INTO `tb_order` VALUES (1665199941424197633, 'A10000011869054027266500', NULL, 'A1000001', NULL, 2, '小康师傅', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, 'oJ9WJ5MhIS-hiwuUX0GmsHDzqTyQ', 1, '龙门石窟', '', '2023-06-04 11:32:59', '2023-06-04 11:33:54');
INSERT INTO `tb_order` VALUES (1665294465416785921, 'A10000011891589370978600', NULL, 'A1000001', NULL, 9, '新星巴克', 1, 2, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-06-04 17:48:35', '2023-06-04 17:51:34');
INSERT INTO `tb_order` VALUES (1665296000083259393, 'A10000011891956192562900', NULL, 'A1000001', NULL, 9, '新星巴克', 1, 3, 1, 1, 'wxpay', 3, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-06-04 17:54:41', '2023-06-04 17:55:42');
INSERT INTO `tb_order` VALUES (1699412789128679425, 'A100000132363273473600', NULL, 'A1000001', NULL, 3, '统一奶茶', 1, 0, 1, 1, 'wxpay', 0, 0, NULL, 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-06 21:22:37', '2023-09-06 21:22:37');
INSERT INTO `tb_order` VALUES (1699413852900573185, 'A100000132616927206000', NULL, 'A1000001', '1-8', 3, '统一奶茶', 1, 1, 1, 1, 'wxpay', 1, 0, NULL, 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-06 21:26:51', '2023-09-06 21:27:51');
INSERT INTO `tb_order` VALUES (1699609497649393665, 'A100000179261600800100', NULL, 'A1000001', '1-3', 2, '小康师傅', NULL, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-07 10:24:16', '2023-09-07 10:25:17');
INSERT INTO `tb_order` VALUES (1699665320891179009, 'A100000192570825504800', NULL, 'A1000001', '1-5', 3, '统一奶茶', NULL, 0, 1, 1, 'alipay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-07 14:06:05', '2023-09-07 14:06:05');
INSERT INTO `tb_order` VALUES (1699666273908350978, 'A100000192798155831900', NULL, 'A1000001', '1-3', 2, '小康师傅', NULL, 2, 1, 1, 'alipay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-07 14:09:53', '2023-09-07 14:12:18');
INSERT INTO `tb_order` VALUES (1699667483335909378, 'A100000193086524012200', NULL, 'A1000001', '1-1', 1, '可口可乐', NULL, 2, 1, 1, 'alipay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-10 14:14:41', '2023-09-07 14:15:51');
INSERT INTO `tb_order` VALUES (1700104081533829121, 'A1000001197178608837400', NULL, 'A1000001', '1-5', 3, '统一奶茶', NULL, 2, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-10 19:09:34', '2023-09-08 19:10:36');
INSERT INTO `tb_order` VALUES (1700104233585737730, 'A1000001197215723001700', NULL, 'A1000001', '1-1', 1, '可口可乐', NULL, 2, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-10 19:10:10', '2023-09-08 19:11:11');
INSERT INTO `tb_order` VALUES (1702608867975180289, 'A1000001794398419433700', NULL, 'A1000001', '2-2', 6, '怡宝至尊', NULL, 2, 3, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-15 17:02:42', '2023-09-15 17:02:42');
INSERT INTO `tb_order` VALUES (1702614203809349633, 'A1000001795671154933400', NULL, 'A1000001', '1-3', 2, '小康师傅', NULL, 0, 1, 1, 'alipay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-15 17:23:54', '2023-09-15 17:23:54');
INSERT INTO `tb_order` VALUES (1702615729550376962, 'A1000001796034964829100', NULL, 'A1000001', '2-3', 8, '魔力花茶', NULL, 4, 1, 1, 'alipay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-15 17:29:58', '2023-09-15 17:30:58');

-- ----------------------------
-- Table structure for tb_order_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_collect`;
CREATE TABLE `tb_order_collect`  (
  `id` bigint(0) NOT NULL COMMENT 'Id',
  `partner_id` int(0) NULL DEFAULT NULL COMMENT '合作商Id',
  `partner_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '合作商名称',
  `order_total_money` bigint(0) NULL DEFAULT NULL COMMENT '日订单收入总金额(平台端总数)',
  `order_date` date NULL DEFAULT NULL COMMENT '发生日期',
  `total_bill` int(0) NULL DEFAULT 0 COMMENT '分成总金额',
  `node_id` int(0) NULL DEFAULT NULL,
  `node_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '点位',
  `order_count` int(0) NULL DEFAULT NULL COMMENT '订单数',
  `ratio` int(0) NULL DEFAULT NULL COMMENT '分成比例',
  `region_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区域名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_order_collect_id_uindex`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '合作商订单汇总表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order_collect
-- ----------------------------
INSERT INTO `tb_order_collect` VALUES (1701144293748969474, 1, '金燕龙合作商', 6, '2023-09-27', 0, 1, '龙门石窟', 3, 15, '昌平');
INSERT INTO `tb_order_collect` VALUES (1701167701270380546, 1, '金燕龙合作商', 1, '2023-09-27', 0, 1, '龙门石窟', 3, 15, '顺义');
INSERT INTO `tb_order_collect` VALUES (1701168456614256642, 1, '金燕龙合作商', 2, '2023-09-27', 0, 1, '龙门石窟', 3, 15, '海淀');
INSERT INTO `tb_order_collect` VALUES (1701168704594092033, 1, '金燕龙合作商', 4, '2023-09-27', 0, 1, '龙门石窟', 3, 15, '东城');
INSERT INTO `tb_order_collect` VALUES (1701168956252332033, 1, '金燕龙合作商', 5, '2023-09-27', 0, 1, '龙门石窟', 3, 15, '朝阳');

-- ----------------------------
-- Table structure for tb_order_month_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_month_collect`;
CREATE TABLE `tb_order_month_collect`  (
  `id` bigint(0) NOT NULL COMMENT 'id',
  `partner_id` int(0) NULL DEFAULT NULL COMMENT '合作商Id',
  `partner_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '合作商名称',
  `region_id` int(0) NULL DEFAULT NULL COMMENT '区域Id',
  `region_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地区名称',
  `order_total_money` bigint(0) NULL DEFAULT NULL COMMENT '订单总金额',
  `order_total_count` bigint(0) NULL DEFAULT NULL COMMENT '订单总数',
  `month` int(0) NULL DEFAULT NULL COMMENT '月份',
  `year` int(0) NULL DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_order_month_collect_id_uindex`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '按月统计各公司销售情况表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order_month_collect
-- ----------------------------

-- ----------------------------
-- Table structure for tb_partner
-- ----------------------------
DROP TABLE IF EXISTS `tb_partner`;
CREATE TABLE `tb_partner`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `partner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '合作商名称',
  `contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人姓名',
  `contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系电话',
  `share_ratio` int(0) NOT NULL COMMENT '分成比例',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录密码',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理合作商及其相关信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_partner
-- ----------------------------
INSERT INTO `tb_partner` VALUES (1, '美团外卖', '李华', '13800138000', 30, 'meituan_account', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', '2024-12-15 18:23:13', '2024-12-15 18:23:13', 'admin', 'admin', '外卖服务平台');
INSERT INTO `tb_partner` VALUES (2, '饿了么', '张三', '13800138001', 25, 'eleme_account', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', '2024-12-15 18:23:13', '2024-12-16 15:24:59', 'admin', 'admin', '外卖服务平台');
INSERT INTO `tb_partner` VALUES (3, '12', '1111111111', '11111111111', 121, '12221', '$2a$10$pNV/BSLIFek83lVJHu2kE.Cp4EAhSwlVwG4OL0LhLjfxr43tXW1i6', '2024-12-16 15:31:34', '2024-12-22 15:55:06', NULL, NULL, NULL);
INSERT INTO `tb_partner` VALUES (4, '1213', '1312', '312313', 1321, '1321', '$2a$10$u1OS70B2BWQ/NyO/RcXlU.xhACVPDH4H7wi37P.w7pF/26SyKEX86', '2024-12-16 16:47:01', '2024-12-22 15:55:07', NULL, NULL, NULL);
INSERT INTO `tb_partner` VALUES (5, '9999', '9999', '9999', 99, '999', '$2a$10$9DYtzfediSfN0jzgI3sVvO2qle3fJ91Cg5fz2hvQeVYYN8.RdWoOi', '2024-12-17 14:43:59', '2024-12-22 15:55:10', 'admin', 'admin', NULL);
INSERT INTO `tb_partner` VALUES (10, '1', '1', '1', 1, '1', '$2a$10$Na1i2WxM8E1Q1dkyV6B3bujeZtMs8Ib4OyxJ4JBG32jEAj8L.GmDe', '2024-12-23 12:20:18', '2024-12-23 12:20:18', NULL, NULL, NULL);
INSERT INTO `tb_partner` VALUES (11, '2', '2', '2', 2, '2', '$2a$10$SQi8k5x6F2jEnJ9lK0cvKe73OkGVqH2S0.eycf2Kk0HQU6wliX3ou', '2024-12-23 12:20:23', '2024-12-23 12:20:23', NULL, NULL, NULL);
INSERT INTO `tb_partner` VALUES (12, '3', '3', '3', 3, '3', '$2a$10$ISho5GtYk1HJ3rbf/LKCdO6vgzsoCVwyQMHZt/JqNFeTkVUUhAjh6', '2024-12-23 12:20:30', '2024-12-23 12:20:30', NULL, NULL, NULL);
INSERT INTO `tb_partner` VALUES (13, '4', '4', '4', 4, '4', '$2a$10$.3XxfM3aDY7TTlkrvOiLku91A2AirYuB9rK1GQMuUYQJnhV4SUgGS', '2024-12-23 12:20:37', '2024-12-23 12:20:37', NULL, NULL, NULL);
INSERT INTO `tb_partner` VALUES (14, '5', '5', '5', 5, '5', '$2a$10$FBgmTASPOsQeic1UFl1hGuF.B9zn2mzoHoMVTsTMkwMCM4uGY7yAe', '2024-12-23 12:20:43', '2024-12-23 12:20:43', NULL, NULL, NULL);
INSERT INTO `tb_partner` VALUES (15, '6', '6', '6', 6, '6', '$2a$10$FOxgdXRXXN2fgiCwmnXzHeuMmCjZyipMuB/.GXGp78mopY8k1E/Mm', '2024-12-23 12:20:50', '2024-12-23 12:20:50', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_policy
-- ----------------------------
DROP TABLE IF EXISTS `tb_policy`;
CREATE TABLE `tb_policy`  (
  `policy_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '策略id',
  `policy_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '策略名称',
  `discount` int(0) NULL DEFAULT NULL COMMENT '策略方案，如：80代表8折',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`policy_id`) USING BTREE,
  UNIQUE INDEX `tb_policy_policy_name_uindex`(`policy_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '策略表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_policy
-- ----------------------------
INSERT INTO `tb_policy` VALUES (1, '九折优惠', 90, '2020-09-14 10:51:05', '2021-02-01 16:25:06');
INSERT INTO `tb_policy` VALUES (2, '八折优惠', 80, '2020-12-18 14:10:39', '2020-12-18 14:10:39');
INSERT INTO `tb_policy` VALUES (5, '冬季折扣', 70, '2021-01-11 15:29:32', '2024-05-13 22:15:32');
INSERT INTO `tb_policy` VALUES (9, '清爽夏日', 50, '2021-02-01 16:23:10', '2024-05-13 22:15:51');
INSERT INTO `tb_policy` VALUES (11, '1', 12, '2024-12-25 16:57:12', '2024-12-25 16:57:12');

-- ----------------------------
-- Table structure for tb_region
-- ----------------------------
DROP TABLE IF EXISTS `tb_region`;
CREATE TABLE `tb_region`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `region_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '区域名称',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储不同地理区域的信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_region
-- ----------------------------
INSERT INTO `tb_region` VALUES (1, '北京市朝阳区11', '2024-12-15 18:23:13', '2024-12-18 19:22:50', 'admin', 'admin', '北京市中心');
INSERT INTO `tb_region` VALUES (2, '北京市海淀区9', '2024-12-15 18:23:13', '2024-12-18 19:20:37', 'admin', 'admin', '北京市中心');
INSERT INTO `tb_region` VALUES (3, '北京市西城区999', '2024-12-15 18:23:13', '2024-12-18 19:20:35', 'admin', 'admin', '北京市东部');
INSERT INTO `tb_region` VALUES (4, '北京市昌平区', '2024-12-15 18:23:13', '2024-12-18 17:52:22', 'admin', 'admin', '北京市西北部');
INSERT INTO `tb_region` VALUES (5, '北京市东城区', '2024-12-17 12:25:00', '2024-12-22 15:56:22', 'admin', 'admin', '11');
INSERT INTO `tb_region` VALUES (16, '1', '2024-12-23 12:00:50', '2024-12-23 12:00:50', NULL, NULL, '2');
INSERT INTO `tb_region` VALUES (17, '2', '2024-12-23 12:00:55', '2024-12-23 12:00:55', NULL, NULL, '2');
INSERT INTO `tb_region` VALUES (18, '3', '2024-12-23 12:00:58', '2024-12-23 12:00:58', NULL, NULL, '3');
INSERT INTO `tb_region` VALUES (19, '4', '2024-12-23 12:01:04', '2024-12-23 12:01:04', NULL, NULL, '4');
INSERT INTO `tb_region` VALUES (20, '5', '2024-12-23 12:01:07', '2024-12-23 12:01:07', NULL, NULL, '5');
INSERT INTO `tb_region` VALUES (21, '6', '2024-12-23 12:01:11', '2024-12-23 12:01:11', NULL, NULL, '6');
INSERT INTO `tb_region` VALUES (22, '7', '2024-12-23 12:01:41', '2024-12-23 12:01:41', NULL, NULL, '7');
INSERT INTO `tb_region` VALUES (23, '1', '2024-12-26 15:34:31', '2024-12-26 15:34:31', NULL, NULL, '1');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `role_id` int(0) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色编码\n',
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称\n',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `tb_role_role_code_uindex`(`role_code`) USING BTREE,
  UNIQUE INDEX `tb_role_role_name_uindex`(`role_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '工单角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '1001', '工单管理员');
INSERT INTO `tb_role` VALUES (2, '1002', '运营员');
INSERT INTO `tb_role` VALUES (3, '1003', '维修员');

-- ----------------------------
-- Table structure for tb_sku
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku`;
CREATE TABLE `tb_sku`  (
  `sku_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sku_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称',
  `sku_image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品图片',
  `brand_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '品牌',
  `unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格(净含量)',
  `price` int(0) NOT NULL DEFAULT 1 COMMENT '商品价格，单位分',
  `class_id` int(0) NOT NULL COMMENT '商品类型Id',
  `is_discount` tinyint(1) NULL DEFAULT 0 COMMENT '是否打折促销',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`sku_id`) USING BTREE,
  UNIQUE INDEX `tb_sku_sku_name_uindex`(`sku_name`) USING BTREE,
  INDEX `sku_sku_class_ClassId_fk`(`class_id`) USING BTREE,
  CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sku
-- ----------------------------
INSERT INTO `tb_sku` VALUES (1, '1', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20231f054350e713373e.jpg', '1', '11', 1100, 1, 0, '2024-12-26 17:21:41', '2024-12-26 17:21:41');
INSERT INTO `tb_sku` VALUES (2, '2', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20451f054350e713373f.jpg', '2', '22ML', 2200, 2, 0, '2024-12-26 17:22:15', '2024-12-26 17:22:14');
INSERT INTO `tb_sku` VALUES (3, '3', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20231f054350e713373e.jpg', '1', '11', 1100, 1, NULL, '2024-12-26 19:25:39', '2024-12-26 19:25:39');
INSERT INTO `tb_sku` VALUES (4, '4', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20451f054350e713373f.jpg', '2', '22ML', 2200, 2, NULL, '2024-12-26 19:25:39', '2024-12-26 19:25:39');
INSERT INTO `tb_sku` VALUES (5, '11', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20231f054350e713373e.jpg', '1', '11', 1100, 1, NULL, '2024-12-26 19:31:17', '2024-12-26 19:31:17');
INSERT INTO `tb_sku` VALUES (6, '22', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20451f054350e713373f.jpg', '2', '22ML', 2200, 2, NULL, '2024-12-26 19:31:17', '2024-12-26 19:31:17');
INSERT INTO `tb_sku` VALUES (7, '33', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20231f054350e713373e.jpg', '1', '11', 1100, 1, NULL, '2024-12-26 19:31:17', '2024-12-26 19:31:17');
INSERT INTO `tb_sku` VALUES (8, '44', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20451f054350e713373f.jpg', '2', '22ML', 2200, 2, NULL, '2024-12-26 19:31:17', '2024-12-26 19:31:17');
INSERT INTO `tb_sku` VALUES (9, '11111', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/26/676d20231f054350e713373e.jpg', '1', '11', 1100, 1, NULL, '2024-12-26 21:59:08', '2024-12-26 21:59:08');

-- ----------------------------
-- Table structure for tb_sku_class
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku_class`;
CREATE TABLE `tb_sku_class`  (
  `class_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `class_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '类别名称',
  `parent_id` int(0) NULL DEFAULT 0 COMMENT '上级id',
  PRIMARY KEY (`class_id`) USING BTREE,
  UNIQUE INDEX `tb_sku_class_class_name_uindex`(`class_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sku_class
-- ----------------------------
INSERT INTO `tb_sku_class` VALUES (1, '饮料', 0);
INSERT INTO `tb_sku_class` VALUES (2, '零食', 0);
INSERT INTO `tb_sku_class` VALUES (3, '食品', 0);
INSERT INTO `tb_sku_class` VALUES (14, '化妆品', 0);
INSERT INTO `tb_sku_class` VALUES (15, '11', 0);

-- ----------------------------
-- Table structure for tb_sku_copy1
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku_copy1`;
CREATE TABLE `tb_sku_copy1`  (
  `sku_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sku_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称',
  `sku_image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品图片',
  `brand_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '品牌',
  `unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格(净含量)',
  `price` int(0) NOT NULL DEFAULT 1 COMMENT '商品价格，单位分',
  `class_id` int(0) NOT NULL COMMENT '商品类型Id',
  `is_discount` tinyint(1) NULL DEFAULT 0 COMMENT '是否打折促销',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`sku_id`) USING BTREE,
  UNIQUE INDEX `tb_sku_sku_name_uindex`(`sku_name`) USING BTREE,
  INDEX `sku_sku_class_ClassId_fk`(`class_id`) USING BTREE,
  CONSTRAINT `tb_sku_copy1_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sku_copy1
-- ----------------------------

-- ----------------------------
-- Table structure for tb_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_task`;
CREATE TABLE `tb_task`  (
  `task_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '工单ID',
  `task_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '工单编号',
  `task_status` int(0) NULL DEFAULT NULL COMMENT '工单状态',
  `create_type` int(0) NULL DEFAULT NULL COMMENT '创建类型 0：自动 1：手动',
  `inner_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '售货机编码',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '执行人id',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '执行人名称',
  `region_id` bigint(0) NULL DEFAULT NULL COMMENT '所属区域Id',
  `desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `product_type_id` int(0) NULL DEFAULT 1 COMMENT '工单类型id',
  `assignor_id` int(0) NULL DEFAULT NULL COMMENT '指派人Id',
  `addr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`task_id`) USING BTREE,
  UNIQUE INDEX `tb_task_task_code_uindex`(`task_code`) USING BTREE,
  INDEX `task_productiontype_TypeId_fk`(`product_type_id`) USING BTREE,
  INDEX `task_taskstatustype_StatusID_fk`(`task_status`) USING BTREE,
  INDEX `task_tasktype_TypeId_fk`(`create_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 544 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '工单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task
-- ----------------------------
INSERT INTO `tb_task` VALUES (523, '202303220001', 4, 1, 'RhLWjaeR', 8, '许褚', 1, '投放', 1, 1, '河南省-洛阳市-龙门石窟', '2023-03-22 15:51:54', '2023-03-22 15:57:05');
INSERT INTO `tb_task` VALUES (524, '202303220002', 4, 1, 'iSzMcQXJ', 8, '许褚', 1, '投放', 1, 1, '河南省-洛阳市-龙门石窟', '2023-03-22 16:02:26', '2023-03-22 16:13:24');
INSERT INTO `tb_task` VALUES (525, '202303220003', 4, 1, 'iSzMcQXJ', 8, '许褚', 1, '11', 1, 1, '河南省-洛阳市-龙门石窟', '2023-03-22 17:11:22', '2023-03-22 17:12:15');
INSERT INTO `tb_task` VALUES (526, '202303220004', 4, 1, 'A1000001', 6, '曹操', 1, '1', 2, 1, '河南省-洛阳市-龙门石窟', '2023-03-22 17:14:45', '2023-03-22 17:16:46');
INSERT INTO `tb_task` VALUES (527, '202303240001', 4, 1, 'A1000001', 9, '张辽', 1, '111', 3, 1, '河南省-洛阳市-龙门石窟', '2023-03-24 10:41:10', '2023-03-24 10:41:10');
INSERT INTO `tb_task` VALUES (528, '202303240002', 4, 1, 'Ut548Hpf', 8, '许褚', 1, '111', 3, 1, '河南省-洛阳市-洛阳白云山', '2023-03-24 10:42:50', '2023-03-24 10:42:50');
INSERT INTO `tb_task` VALUES (529, '202303240003', 4, 1, 'aim5xu4I', 50, '孙一百', 1, '111', 3, 1, '河南省-洛阳市-洛阳白云山', '2023-03-24 10:43:43', '2023-03-24 10:43:43');
INSERT INTO `tb_task` VALUES (530, '202303240004', 4, 1, '5cy5BdUs', 50, '孙一百', 1, '111', 3, 1, '河南省-洛阳市-洛阳白云山', '2023-03-24 10:44:26', '2023-03-24 10:44:26');
INSERT INTO `tb_task` VALUES (531, '202303240005', 1, 0, 'A1000001', 50, '孙一百', 1, '{\"innerCode\":\"A1000001\",\"statusInfo\":[{\"statusCode\":\"1001\",\"status\":true},{\"statusCode\":\"1002\",\"status\":false},{\"statusCode\":\"1003\",\"status\":true}]}', 3, 0, '河南省-洛阳市-龙门石窟', '2023-03-24 18:04:44', '2023-03-24 18:04:44');
INSERT INTO `tb_task` VALUES (533, '202309200001', 3, 1, 'RhLWjaeR', 8, '许褚', 1, '', 1, 1, '河南省-洛阳市-龙门石窟', '2023-09-20 16:30:53', '2024-05-18 16:08:00');
INSERT INTO `tb_task` VALUES (535, '202405170001', 4, 1, 'vWgqPhpu', 8, '许褚', 1, '不想干了', 1, 1, '北京市昌平区建材城西路22号', '2024-05-17 14:39:26', NULL);
INSERT INTO `tb_task` VALUES (542, '202405180001', 4, 1, 'vWgqPhpu', 6, '曹操', 1, '卖完货了', 2, 1, '北京市昌平区建材城西路22号', '2024-05-18 15:13:05', NULL);
INSERT INTO `tb_task` VALUES (543, '202405190001', 1, 1, 'K6YYXHLY', 13, '陆逊', 3, '', 1, 1, '北京顺义区国际鲜花港', '2024-05-19 18:45:06', '2024-05-19 21:13:16');

-- ----------------------------
-- Table structure for tb_task_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_collect`;
CREATE TABLE `tb_task_collect`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `finish_count` int(0) NULL DEFAULT 0 COMMENT '当日工单完成数',
  `progress_count` int(0) NULL DEFAULT 0 COMMENT '当日进行中的工单数',
  `cancel_count` int(0) NULL DEFAULT 0 COMMENT '当日取消工单数',
  `collect_date` date NULL DEFAULT NULL COMMENT '汇总的日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '工单按日统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_collect
-- ----------------------------
INSERT INTO `tb_task_collect` VALUES (89, NULL, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for tb_task_details
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_details`;
CREATE TABLE `tb_task_details`  (
  `details_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `task_id` bigint(0) NULL DEFAULT NULL COMMENT '工单Id',
  `channel_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '货道编号',
  `expect_capacity` int(0) NOT NULL DEFAULT 0 COMMENT '补货期望容量',
  `sku_id` bigint(0) NULL DEFAULT NULL COMMENT '商品Id',
  `sku_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sku_image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`details_id`) USING BTREE,
  INDEX `taskdetails_task_TaskId_fk`(`task_id`) USING BTREE,
  CONSTRAINT `taskdetails_task_TaskId_fk` FOREIGN KEY (`task_id`) REFERENCES `tb_task` (`task_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3770 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '工单详情，只有补货工单才有' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_details
-- ----------------------------
INSERT INTO `tb_task_details` VALUES (3750, 526, '1-1', 8, 1, '可口可乐', 'https://likede2-java.itheima.net/image/product1.png');
INSERT INTO `tb_task_details` VALUES (3751, 526, '1-2', 9, 1, '可口可乐', 'https://likede2-java.itheima.net/image/product1.png');
INSERT INTO `tb_task_details` VALUES (3752, 526, '1-3', 1, 2, '小康师傅', 'https://likede2-java.itheima.net/image/product2.png');
INSERT INTO `tb_task_details` VALUES (3753, 526, '1-5', 6, 3, '统一奶茶', 'https://likede2-java.itheima.net/image/product3.png');
INSERT INTO `tb_task_details` VALUES (3754, 526, '3-1', 1, 7, '一百橙汁', 'https://likede2-java.itheima.net/image/product7.png');
INSERT INTO `tb_task_details` VALUES (3755, 526, '3-6', 10, 1, '可口可乐', 'https://likede2-java.itheima.net/image/product1.png');
INSERT INTO `tb_task_details` VALUES (3768, 542, '1-1', 5, 1, '可口可乐', 'https://likede2-java.itheima.net/image/product1.png');
INSERT INTO `tb_task_details` VALUES (3769, 542, '1-2', 5, 2, '康师傅', 'https://likede2-java.itheima.net/image/product2.png');

-- ----------------------------
-- Table structure for tb_task_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_type`;
CREATE TABLE `tb_task_type`  (
  `type_id` int(0) NOT NULL,
  `type_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型名称',
  `type` int(0) NULL DEFAULT 1 COMMENT '工单类型。1:维修工单;2:运营工单',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '工单类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_type
-- ----------------------------
INSERT INTO `tb_task_type` VALUES (1, '投放工单', 1);
INSERT INTO `tb_task_type` VALUES (2, '补货工单', 2);
INSERT INTO `tb_task_type` VALUES (3, '维修工单', 1);
INSERT INTO `tb_task_type` VALUES (4, '撤机工单', 1);

-- ----------------------------
-- Table structure for tb_vending_machine
-- ----------------------------
DROP TABLE IF EXISTS `tb_vending_machine`;
CREATE TABLE `tb_vending_machine`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `inner_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '000' COMMENT '设备编号',
  `channel_max_capacity` int(0) NULL DEFAULT NULL COMMENT '设备容量',
  `node_id` int(0) NOT NULL COMMENT '点位Id',
  `addr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '详细地址',
  `last_supply_time` datetime(0) NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '上次补货时间',
  `business_type` int(0) NOT NULL COMMENT '商圈类型',
  `region_id` int(0) NOT NULL COMMENT '区域Id',
  `partner_id` int(0) NOT NULL COMMENT '合作商Id',
  `vm_type_id` int(0) NOT NULL DEFAULT 0 COMMENT '设备型号',
  `vm_status` int(0) NOT NULL DEFAULT 0 COMMENT '设备状态，0:未投放;1-运营;3-撤机',
  `running_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '运行状态',
  `longitudes` double NULL DEFAULT 0 COMMENT '经度',
  `latitude` double NULL DEFAULT 0 COMMENT '维度',
  `client_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户端连接Id,做emq认证用',
  `policy_id` bigint(0) NULL DEFAULT NULL COMMENT '策略id',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `vendingmachine_VmId_uindex`(`inner_code`) USING BTREE,
  INDEX `vendingmachine_node_Id_fk`(`node_id`) USING BTREE,
  INDEX `vendingmachine_vmtype_TypeId_fk`(`vm_type_id`) USING BTREE,
  INDEX `policy_id`(`policy_id`) USING BTREE,
  CONSTRAINT `tb_vending_machine_ibfk_1` FOREIGN KEY (`vm_type_id`) REFERENCES `tb_vm_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_vending_machine_ibfk_2` FOREIGN KEY (`node_id`) REFERENCES `tb_node` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_vending_machine_ibfk_3` FOREIGN KEY (`policy_id`) REFERENCES `tb_policy` (`policy_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vending_machine
-- ----------------------------
INSERT INTO `tb_vending_machine` VALUES (80, 'A1000001', 10, 2, '北京市西城区西单北大街133号', '2023-03-22 00:00:00', 1, 2, 1, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '70122567fcc13e7615e7239812c20448', 9, '2024-12-15 18:23:13', '2024-12-26 15:13:26');
INSERT INTO `tb_vending_machine` VALUES (86, 'aim5xu4I', 10, 2, '北京市西城区西单北大街133号', '2000-01-01 00:00:00', 2, 4, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '9d1d927b2651dba9f117a9801e7fd916', 1, '2020-12-18 10:39:22', '2024-05-14 09:24:53');
INSERT INTO `tb_vending_machine` VALUES (87, '5cy5BdUs', 10, 2, '北京市西城区西单北大街133号', '2022-12-05 00:00:00', 2, 1, 3, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, 'fdf33db4de889d6c31fe6351a7333072', 2, '2020-12-18 10:39:22', '2024-05-12 23:19:10');
INSERT INTO `tb_vending_machine` VALUES (88, 'tCeiyxLx', 10, 1, '北京市东城区王府井大街1号', '2000-01-01 00:00:00', 2, 2, 1, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '0805f7585e4366b021268f8850d1e091', 1, '2020-09-10 09:41:02', '2024-05-14 09:24:55');
INSERT INTO `tb_vending_machine` VALUES (89, 'bR1cfQRa', 10, 2, '北京市西城区西单北大街133号', '2000-01-01 00:00:00', 2, 4, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, 'e4e02a07b11865bf262afb5d4507e7b3', 1, '2020-12-18 10:39:22', '2024-05-14 09:24:56');
INSERT INTO `tb_vending_machine` VALUES (90, 'RhLWjaeR', 10, 1, '北京市东城区王府井大街1号', '2000-01-01 00:00:00', 2, 1, 2, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '0cc9e22badf6a0f41b5fad2c8b788fcd', 2, '2020-09-10 09:41:02', '2024-05-14 09:25:07');
INSERT INTO `tb_vending_machine` VALUES (91, 'qUObmvbM', 10, 2, '北京市西城区西单北大街133号', '2022-12-06 00:00:00', 2, 5, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '34a1779725b4e06edd7cac8a518474f1', 2, '2020-12-18 10:39:22', '2024-05-14 09:25:11');
INSERT INTO `tb_vending_machine` VALUES (92, 'tU6K5IHg', 10, 1, '北京市东城区王府井大街1号', '2000-01-01 00:00:00', 2, 1, 4, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, 'fbb7f7c0bfd38785866844f983b3a887', 5, '2020-09-10 09:41:02', '2024-05-14 09:25:14');
INSERT INTO `tb_vending_machine` VALUES (93, 'iSzMcQXJ', 10, 1, '北京市东城区王府井大街1号', '2000-01-01 00:00:00', 2, 4, 5, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '7c6f5ad6edd6e161d6ca8b94d0324fe5', 2, '2020-09-10 09:41:02', '2024-05-14 09:25:19');
INSERT INTO `tb_vending_machine` VALUES (105, 'nf2UVwi5', 8, 2, '北京市西城区西单北大街133号', '2000-01-01 00:00:00', 1, 2, 1, 4, 0, NULL, 0, 0, NULL, 1, '2024-12-15 18:23:13', '2024-12-29 17:57:19');
INSERT INTO `tb_vending_machine` VALUES (106, 'vWgqPhpu', 10, 1, '北京市东城区王府井大街1号', '2024-05-18 15:26:37', 2, 1, 4, 1, 1, NULL, 0, 0, NULL, NULL, '2020-09-10 09:41:02', '2024-05-12 23:20:41');
INSERT INTO `tb_vending_machine` VALUES (107, 'SFNuCUe8', 8, 1, '北京市东城区王府井大街1号', '2000-01-01 00:00:00', 2, 1, 1, 4, 0, NULL, 0, 0, NULL, NULL, '2020-09-10 09:41:02', '2024-05-12 23:20:41');
INSERT INTO `tb_vending_machine` VALUES (111, 'K6YYXHLY', 10, 2, '北京市西城区西单北大街133号', '2000-01-01 00:00:00', 1, 3, 2, 1, 0, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, NULL, NULL, '2020-12-18 15:48:13', '2024-05-19 15:32:27');
INSERT INTO `tb_vending_machine` VALUES (117, 'rj4u9rdR', 10, 99, '北京市海淀区成府路45号', '2000-01-01 00:00:00', 1, 4, 2, 1, 0, NULL, 0, 0, NULL, NULL, '2024-12-15 18:23:13', '2024-12-23 18:55:28');
INSERT INTO `tb_vending_machine` VALUES (118, '1YXEzg4x', 8, 1, '北京市东城区王府井大街1号', '2000-01-01 00:00:00', 1, 3, 5, 4, 0, NULL, 0, 0, NULL, NULL, '2024-12-25 12:13:28', '2024-12-25 12:13:28');
INSERT INTO `tb_vending_machine` VALUES (119, '8vxxAklG', 10, 1, '北京市东城区王府井大街1号', '2000-01-01 00:00:00', 1, 3, 5, 2, 0, NULL, 0, 0, NULL, 2, '2024-12-15 18:23:13', '2024-12-29 17:57:14');

-- ----------------------------
-- Table structure for tb_vendout_running
-- ----------------------------
DROP TABLE IF EXISTS `tb_vendout_running`;
CREATE TABLE `tb_vendout_running`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_no` varchar(38) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `inner_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '售货机编号',
  `channel_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '货道编号',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1665296081440129025 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '出货流水' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vendout_running
-- ----------------------------
INSERT INTO `tb_vendout_running` VALUES (1640253535886454786, 'A1000001972287294582300', 'A1000001', NULL, '1', '2023-03-27 15:24:52', '2023-03-27 15:24:52');
INSERT INTO `tb_vendout_running` VALUES (1640294341087305730, 'A1000001982025093546600', 'A1000001', NULL, '0', '2023-03-27 18:07:01', '2023-03-27 18:07:01');
INSERT INTO `tb_vendout_running` VALUES (1640295508953505793, 'A1000001982308461482000', 'A1000001', NULL, '0', '2023-03-27 18:11:39', '2023-03-27 18:11:39');
INSERT INTO `tb_vendout_running` VALUES (1665193032268836866, 'A10000011867384516930600', 'A1000001', NULL, '0', '2023-06-04 11:05:31', '2023-06-04 11:05:31');
INSERT INTO `tb_vendout_running` VALUES (1665193181468618753, 'A10000011867429590093200', 'A1000001', NULL, '0', '2023-06-04 11:06:07', '2023-06-04 11:06:07');
INSERT INTO `tb_vendout_running` VALUES (1665194583502811137, 'A10000011867548883835400', 'A1000001', NULL, '0', '2023-06-04 11:11:41', '2023-06-04 11:11:41');
INSERT INTO `tb_vendout_running` VALUES (1665197927541698561, 'A10000011868551878012500', 'A1000001', NULL, '0', '2023-06-04 11:24:58', '2023-06-04 11:24:58');
INSERT INTO `tb_vendout_running` VALUES (1665200173490827265, 'A10000011869054027266500', 'A1000001', NULL, '0', '2023-06-04 11:33:54', '2023-06-04 11:33:54');
INSERT INTO `tb_vendout_running` VALUES (1665295023343058946, 'A10000011891589370978600', 'A1000001', NULL, '1', '2023-06-04 17:50:48', '2023-06-04 17:51:34');
INSERT INTO `tb_vendout_running` VALUES (1665296081440129025, 'A10000011891956192562900', 'A1000001', NULL, '0', '2023-06-04 17:55:00', '2023-06-04 17:55:00');

-- ----------------------------
-- Table structure for tb_vm_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_vm_type`;
CREATE TABLE `tb_vm_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '型号名称',
  `model` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '型号编码',
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备图片',
  `vm_row` int(0) NOT NULL DEFAULT 1 COMMENT '货道行',
  `vm_col` int(0) NOT NULL DEFAULT 1 COMMENT '货道列',
  `channel_max_capacity` int(0) NULL DEFAULT 0 COMMENT '设备容量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_vm_type_name_uindex`(`name`) USING BTREE,
  UNIQUE INDEX `tb_vm_type_model_uindex`(`model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '设备类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vm_type
-- ----------------------------
INSERT INTO `tb_vm_type` VALUES (1, '饮料机', 'CZ-10011', 'https://sy-192-ys.oss-cn-beijing.aliyuncs.com/images/2024/05/15/1715762932971.png', 5, 6, 10);
INSERT INTO `tb_vm_type` VALUES (2, '综合机', 'CZ-10012', 'https://sy-192-ys.oss-cn-beijing.aliyuncs.com/images/2024/05/15/1715762984492.png', 2, 2, 10);
INSERT INTO `tb_vm_type` VALUES (3, '零食机', 'CZ-10013', 'https://sy-192-ys.oss-cn-beijing.aliyuncs.com/images/2024/05/15/1715763009476.png', 2, 5, 5);
INSERT INTO `tb_vm_type` VALUES (4, '果蔬机', 'CZ-10014', 'https://sy-192-ys.oss-cn-beijing.aliyuncs.com/images/2024/05/15/1715763319518.png\n', 4, 4, 8);
INSERT INTO `tb_vm_type` VALUES (21, '测试', 'test', 'https://yk-dkd.oss-cn-beijing.aliyuncs.com/dkd_images/2024/12/22/6767c4d227a6f7b3ea4232f6.jpg', 2, 2, 10);

-- ----------------------------
-- Triggers structure for table tb_channel
-- ----------------------------
DROP TRIGGER IF EXISTS `before_channel_update`;
delimiter ;;
CREATE TRIGGER `before_channel_update` BEFORE UPDATE ON `tb_channel` FOR EACH ROW BEGIN
    SET NEW.update_time = NOW();
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;

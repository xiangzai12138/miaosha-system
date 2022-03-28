/*
 Navicat Premium Data Transfer

 Source Server         : xiaochen的数据库
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 127.0.0.1:3306
 Source Schema         : ms

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 11/04/2020 15:53:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `count` int(11) NOT NULL COMMENT '库存',
  `sale` int(11) NOT NULL COMMENT '已售',
  `version` int(11) NOT NULL COMMENT '乐观锁，版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock
-- ----------------------------
BEGIN;
INSERT INTO `stock` VALUES (1, 'iphone6', 100, 92, 441);
COMMIT;

-- ----------------------------
-- Table structure for stock_order
-- ----------------------------
DROP TABLE IF EXISTS `stock_order`;
CREATE TABLE `stock_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL COMMENT '库存ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '商品名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3154 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock_order
-- ----------------------------
BEGIN;
INSERT INTO `stock_order` VALUES (3062, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3063, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3064, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3065, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3066, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3067, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3068, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3069, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3070, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3071, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3072, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3073, 1, 'iphone6', '2020-04-01 13:42:55');
INSERT INTO `stock_order` VALUES (3074, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3075, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3076, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3077, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3078, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3079, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3080, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3081, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3082, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3083, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3084, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3085, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3086, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3087, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3088, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3089, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3090, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3091, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3092, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3093, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3094, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3095, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3096, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3097, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3098, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3099, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3100, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3101, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3102, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3103, 1, 'iphone6', '2020-04-01 13:42:56');
INSERT INTO `stock_order` VALUES (3104, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3105, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3106, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3107, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3108, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3109, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3110, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3111, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3112, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3113, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3114, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3115, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3116, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3117, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3118, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3119, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3120, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3121, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3122, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3123, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3124, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3125, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3126, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3127, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3128, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3129, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3130, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3131, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3132, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3133, 1, 'iphone6', '2020-04-01 13:42:57');
INSERT INTO `stock_order` VALUES (3134, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3135, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3136, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3137, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3138, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3139, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3140, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3141, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3142, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3143, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3144, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3145, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3146, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3147, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3148, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3149, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3150, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3151, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3152, 1, 'iphone6', '2020-04-01 13:42:58');
INSERT INTO `stock_order` VALUES (3153, 1, 'iphone6', '2020-04-01 13:42:58');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

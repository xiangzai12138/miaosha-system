/*
 Navicat Premium Data Transfer

 Source Server         : miaosha数据库
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 127.0.0.1:3306
 Source Schema         : ms

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 16/06/2020 21:40:52
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
INSERT INTO `stock` VALUES (1, 'iphone6', 1000, 62, 503);
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
) ENGINE=InnoDB AUTO_INCREMENT=3216 DEFAULT CHARSET=utf8;

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
INSERT INTO `stock_order` VALUES (3154, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3155, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3156, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3157, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3158, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3159, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3160, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3161, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3162, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3163, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3164, 1, 'iphone6', '2020-04-24 21:38:04');
INSERT INTO `stock_order` VALUES (3165, 1, 'iphone6', '2020-04-24 21:38:05');
INSERT INTO `stock_order` VALUES (3166, 1, 'iphone6', '2020-04-24 21:38:05');
INSERT INTO `stock_order` VALUES (3167, 1, 'iphone6', '2020-04-24 21:38:05');
INSERT INTO `stock_order` VALUES (3168, 1, 'iphone6', '2020-04-24 21:38:05');
INSERT INTO `stock_order` VALUES (3169, 1, 'iphone6', '2020-04-24 21:38:05');
INSERT INTO `stock_order` VALUES (3170, 1, 'iphone6', '2020-04-24 21:38:05');
INSERT INTO `stock_order` VALUES (3171, 1, 'iphone6', '2020-04-24 21:38:05');
INSERT INTO `stock_order` VALUES (3172, 1, 'iphone6', '2020-04-24 21:38:05');
INSERT INTO `stock_order` VALUES (3173, 1, 'iphone6', '2020-04-24 21:38:05');
INSERT INTO `stock_order` VALUES (3174, 1, 'iphone6', '2020-04-24 21:38:05');
INSERT INTO `stock_order` VALUES (3175, 1, 'iphone6', '2020-04-24 21:38:06');
INSERT INTO `stock_order` VALUES (3176, 1, 'iphone6', '2020-04-24 21:38:06');
INSERT INTO `stock_order` VALUES (3177, 1, 'iphone6', '2020-04-24 21:38:06');
INSERT INTO `stock_order` VALUES (3178, 1, 'iphone6', '2020-04-24 21:38:06');
INSERT INTO `stock_order` VALUES (3179, 1, 'iphone6', '2020-04-24 21:38:06');
INSERT INTO `stock_order` VALUES (3180, 1, 'iphone6', '2020-04-24 21:38:06');
INSERT INTO `stock_order` VALUES (3181, 1, 'iphone6', '2020-04-24 21:38:06');
INSERT INTO `stock_order` VALUES (3182, 1, 'iphone6', '2020-04-24 21:38:06');
INSERT INTO `stock_order` VALUES (3183, 1, 'iphone6', '2020-04-24 21:38:06');
INSERT INTO `stock_order` VALUES (3184, 1, 'iphone6', '2020-04-24 21:38:06');
INSERT INTO `stock_order` VALUES (3185, 1, 'iphone6', '2020-04-24 21:38:07');
INSERT INTO `stock_order` VALUES (3186, 1, 'iphone6', '2020-04-24 21:38:07');
INSERT INTO `stock_order` VALUES (3187, 1, 'iphone6', '2020-04-24 21:38:07');
INSERT INTO `stock_order` VALUES (3188, 1, 'iphone6', '2020-04-24 21:38:07');
INSERT INTO `stock_order` VALUES (3189, 1, 'iphone6', '2020-04-24 21:38:07');
INSERT INTO `stock_order` VALUES (3190, 1, 'iphone6', '2020-04-24 21:38:07');
INSERT INTO `stock_order` VALUES (3191, 1, 'iphone6', '2020-04-24 21:38:07');
INSERT INTO `stock_order` VALUES (3192, 1, 'iphone6', '2020-04-24 21:38:07');
INSERT INTO `stock_order` VALUES (3193, 1, 'iphone6', '2020-06-15 21:51:40');
INSERT INTO `stock_order` VALUES (3194, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3195, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3196, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3197, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3198, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3199, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3200, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3201, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3202, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3203, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3204, 1, 'iphone6', '2020-06-16 20:28:07');
INSERT INTO `stock_order` VALUES (3205, 1, 'iphone6', '2020-06-16 20:47:22');
INSERT INTO `stock_order` VALUES (3206, 1, 'iphone6', '2020-06-16 20:47:22');
INSERT INTO `stock_order` VALUES (3207, 1, 'iphone6', '2020-06-16 20:47:22');
INSERT INTO `stock_order` VALUES (3208, 1, 'iphone6', '2020-06-16 20:47:22');
INSERT INTO `stock_order` VALUES (3209, 1, 'iphone6', '2020-06-16 20:47:22');
INSERT INTO `stock_order` VALUES (3210, 1, 'iphone6', '2020-06-16 20:47:22');
INSERT INTO `stock_order` VALUES (3211, 1, 'iphone6', '2020-06-16 20:47:22');
INSERT INTO `stock_order` VALUES (3212, 1, 'iphone6', '2020-06-16 20:47:22');
INSERT INTO `stock_order` VALUES (3213, 1, 'iphone6', '2020-06-16 20:47:22');
INSERT INTO `stock_order` VALUES (3214, 1, 'iphone6', '2020-06-16 20:47:22');
INSERT INTO `stock_order` VALUES (3215, 1, 'iphone6', '2020-06-16 20:47:22');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(80) DEFAULT NULL COMMENT '用户名',
  `password` varchar(40) DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'xiaochen', '123456');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

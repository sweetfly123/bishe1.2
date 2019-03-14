/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : db_hotel

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 14/03/2019 19:59:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for table_permission
-- ----------------------------
DROP TABLE IF EXISTS `table_permission`;
CREATE TABLE `table_permission`  (
  `permission_id` int(4) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_permission
-- ----------------------------
INSERT INTO `table_permission` VALUES (1, 'admin');
INSERT INTO `table_permission` VALUES (2, 'user');

-- ----------------------------
-- Table structure for table_role
-- ----------------------------
DROP TABLE IF EXISTS `table_role`;
CREATE TABLE `table_role`  (
  `role_id` int(4) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_role
-- ----------------------------
INSERT INTO `table_role` VALUES (1, '管理员');
INSERT INTO `table_role` VALUES (2, '普通用户');

-- ----------------------------
-- Table structure for table_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `table_role_permission`;
CREATE TABLE `table_role_permission`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `role_id` int(4) DEFAULT NULL,
  `permission_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_role_permission
-- ----------------------------
INSERT INTO `table_role_permission` VALUES (1, 1, 1);
INSERT INTO `table_role_permission` VALUES (2, 1, 2);
INSERT INTO `table_role_permission` VALUES (3, 2, 2);

-- ----------------------------
-- Table structure for table_room
-- ----------------------------
DROP TABLE IF EXISTS `table_room`;
CREATE TABLE `table_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `room_type` int(2) DEFAULT NULL,
  `room_price` decimal(10, 2) DEFAULT NULL,
  `room_picture_path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `room_desc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `booked` tinyint(2) DEFAULT NULL,
  `user_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `guests` int(8) DEFAULT NULL,
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '是否删除  0：存在   1：已删除',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_room
-- ----------------------------
INSERT INTO `table_room` VALUES (1, '101', 0, 0.00, 'b94531048e577ef340096dbe7d915726.jpg', '这是一个房间101', 1, '1', 5, '0', '2018-12-13', '2018-12-14');
INSERT INTO `table_room` VALUES (2, '102', 2, 110.00, 'u=633282984,352411057&fm=26&gp=0.jpg', '这是一个房间101', 1, '1', 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (3, '103', 1, 120.00, 'u=1208544201,1064095414&fm=72.jpg', '这是一个房间101', 1, '1', 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (4, '104', 1, 120.00, 'u=2015445628,2837484863&fm=26&gp=0.jpg', '这是一个房间101', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (5, '201', 2, 150.00, 'u=2231634963,330068410&fm=72.jpg', '这是一个房间101', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (6, '202', 1, 250.00, 'u=2473643007,676997333&fm=72.jpg', '撒旦发射点', 0, '1', 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (7, '203', 1, 220.00, 'u=3594979978,1458406907&fm=72.jpg', '股份过户给', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (8, '301', 1, 150.00, 'timg.jpg', '姐阶级', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (10, '306', 1, 200.00, 'u=3594979978,1458406907&fm=72.jpg', '肉体上', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (11, '307', 1, 100.00, 'u=1208544201,1064095414&fm=72.jpg', '一块风格化风格化', 1, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (12, '401', 1, 200.00, 'u=2231634963,330068410&fm=72.jpg', '再发给你', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (13, '333', 1, 333.00, 'u=2015445628,2837484863&fm=26&gp=0.jpg', '而风格化风格化是个我仍然通过上述该公司', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (14, '402', 1, 200.00, 'u=2473643007,676997333&fm=72.jpg', '的风格ware规划风格化的风格和份地方豆腐干大师傅敢死队风格豆腐干上的大师傅赶得上风格士大夫敢死队风格豆腐干岁的法国岁的法国岁的法国豆腐干岁的法国当时法国岁的法国岁的法国豆腐干豆腐干', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (15, '403', 1, 199.00, 'u=2473643007,676997333&fm=72.jpg', '而突然特色如果这个各个地方规划分局', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (16, '404', 1, 120.00, 'd0dc0763feb7882693bdac2eeca7498b.jpg', '就会风格化风格化', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (17, '405', 2, 111.00, 'f38992df9ca87156e6abec1e7499d8cb.jpg', '让他逃脱人体宴人头有人问他', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (18, '406', 1, 112.00, 'f38992df9ca87156e6abec1e7499d8cb.jpg', '速度还是规划', 0, NULL, 5, '0', NULL, NULL);
INSERT INTO `table_room` VALUES (19, '501', 2, 300.00, 'u=633282984,352411057&fm=26&gp=0.jpg', NULL, 0, NULL, NULL, '0', NULL, NULL);

-- ----------------------------
-- Table structure for table_user
-- ----------------------------
DROP TABLE IF EXISTS `table_user`;
CREATE TABLE `table_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role` int(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_user
-- ----------------------------
INSERT INTO `table_user` VALUES (1, 'lyf', NULL, '$2a$10$P/pe4ihRquviHTZuHH.4qeGc.RpQljQWYEe6JMyTAuf4rodOq6Mr6', 1);
INSERT INTO `table_user` VALUES (2, '网民', NULL, '$2a$10$nWLt8iegS6InfZbjXq3k4.omtiyRd/ilmtNxslnwbicYZ15bubw3m', 2);
INSERT INTO `table_user` VALUES (3, '刘某', NULL, '$2a$10$1cnvMVNeZi6IFfXfFbhXPuBA9LHSeK5r.oZnDctGw1iriRm7BSxeK', 2);
INSERT INTO `table_user` VALUES (4, 'wang', NULL, '$2a$10$Ve3yOyKMDKjA/dWl0tBs/elRmZ26vc7Wx323w28lVM.BWlExI0G3y', 2);
INSERT INTO `table_user` VALUES (5, '张某', NULL, '$2a$10$uUArY88jNQMu4oyhFP/gl.AREj2aLw/uifrPPIFlRWhgl.XRyzYo.', 2);
INSERT INTO `table_user` VALUES (6, 'aa', NULL, '88', 1);

SET FOREIGN_KEY_CHECKS = 1;

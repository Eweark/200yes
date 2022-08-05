/*
Navicat MySQL Data Transfer

Source Server         : 001
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : jx220108test

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2022-08-05 18:13:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tblcheck
-- ----------------------------
DROP TABLE IF EXISTS `tblcheck`;
CREATE TABLE `tblcheck` (
  `checkId` int(11) NOT NULL AUTO_INCREMENT,
  `perId` int(11) DEFAULT NULL,
  `staffId` int(11) DEFAULT NULL,
  `administratorId` int(11) DEFAULT NULL,
  `checkStatus` int(11) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  PRIMARY KEY (`checkId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblcheck
-- ----------------------------
INSERT INTO `tblcheck` VALUES ('5', '15', '3', null, '0', '2022-07-13 09:51:17');
INSERT INTO `tblcheck` VALUES ('6', '16', '1', null, '2', '2022-07-13 10:09:03');
INSERT INTO `tblcheck` VALUES ('7', '17', '2', null, '1', '2022-07-11 16:14:09');
INSERT INTO `tblcheck` VALUES ('8', '18', '5', null, '1', '2022-07-03 22:43:52');
INSERT INTO `tblcheck` VALUES ('12', '22', '6', null, '1', '2022-07-11 16:14:05');
INSERT INTO `tblcheck` VALUES ('13', '23', '7', null, '1', '2022-07-06 14:14:55');
INSERT INTO `tblcheck` VALUES ('14', '24', '8', null, '1', '2022-07-06 09:52:31');
INSERT INTO `tblcheck` VALUES ('15', '25', '9', null, '1', '2022-07-06 10:49:25');
INSERT INTO `tblcheck` VALUES ('16', '46', '11', null, '1', '2022-07-13 15:22:48');
INSERT INTO `tblcheck` VALUES ('17', '47', '12', null, '1', '2022-07-13 15:22:48');
INSERT INTO `tblcheck` VALUES ('18', '48', '7', null, '1', '2022-07-13 15:22:48');
INSERT INTO `tblcheck` VALUES ('19', '49', '14', null, '1', '2022-07-13 15:22:55');
INSERT INTO `tblcheck` VALUES ('20', '50', '15', null, '1', '2022-07-13 15:22:55');
INSERT INTO `tblcheck` VALUES ('21', '52', '16', null, '0', null);
INSERT INTO `tblcheck` VALUES ('22', '55', '9', null, '0', null);
INSERT INTO `tblcheck` VALUES ('25', '58', '20', null, '0', null);
INSERT INTO `tblcheck` VALUES ('26', '59', '20', null, '0', null);
INSERT INTO `tblcheck` VALUES ('27', '60', '19', null, '0', null);
INSERT INTO `tblcheck` VALUES ('28', '62', '8', null, '1', '2022-07-18 23:43:21');
INSERT INTO `tblcheck` VALUES ('29', '63', '21', null, '1', '2022-07-18 23:43:21');
INSERT INTO `tblcheck` VALUES ('30', '64', '22', null, '1', '2022-07-18 23:43:02');

-- ----------------------------
-- Table structure for tblcommunity
-- ----------------------------
DROP TABLE IF EXISTS `tblcommunity`;
CREATE TABLE `tblcommunity` (
  `areaId` int(11) NOT NULL AUTO_INCREMENT,
  `regionId` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `parkingNumber` int(11) DEFAULT NULL,
  `isValid` int(11) DEFAULT NULL,
  PRIMARY KEY (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblcommunity
-- ----------------------------
INSERT INTO `tblcommunity` VALUES ('1', '30', '芙蓉苑', '湖里区', '/jx220108_back/upload/1657281853761.jpg', '123', '0');
INSERT INTO `tblcommunity` VALUES ('2', '17', '海沧小区', '海沧', '/jx220108_back/upload/1657281664233.jpg', '123', '0');
INSERT INTO `tblcommunity` VALUES ('3', '16', '湖明丽景', '思明-莲坂-槟榔东里223-305号', '/jx220108_back/upload/1657281664233.jpg', '123', '0');
INSERT INTO `tblcommunity` VALUES ('4', '16', '源昌君悦山', '思明-莲前西路-龙源里1-26号', '/jx220108_back/upload/1657281767106.jpg', '200', '0');
INSERT INTO `tblcommunity` VALUES ('5', '31', '中交和美新城(公寓住宅)\r\n', '集美-集美新城-诚毅北路218-232,263,265,276,284,290-306,307-315号\r\n', '/jx220108_back/upload/1657281865729.jpg', '123', '0');
INSERT INTO `tblcommunity` VALUES ('6', '18', '嘉琳广场', '洛江-万安街道-安泰路162号', '/jx220108_back/upload/1657281664233.jpg', '123', '0');
INSERT INTO `tblcommunity` VALUES ('7', '33', '中骏蓝湾香郡', '龙文区', '/jx220108_back/upload/1657281785629.jpg', '123', '0');
INSERT INTO `tblcommunity` VALUES ('8', '13', '小区一', '福州', '/jx220108_back/upload/1657281664233.jpg', '123', '0');
INSERT INTO `tblcommunity` VALUES ('9', '26', '北京小区', '在北京', '/jx220108_back/upload/1657281664233.jpg', '123', '0');
INSERT INTO `tblcommunity` VALUES ('10', '16', '保利联发金地和悦东方', '思明区', '/jx220108_back/upload/1657694193247.jpg', '9999', '0');
INSERT INTO `tblcommunity` VALUES ('11', '30', '建发湖畔九境', '湖里区', '/jx220108_back/upload/1657694239058.jpg', '8888', '0');
INSERT INTO `tblcommunity` VALUES ('12', '17', '联发招商悦鹭湾', '[ 海沧 - 马銮湾新城 ] 孚中央东路与孚安路西北侧100米', '/jx220108_back/upload/1657694302099.jpg', '152', '0');
INSERT INTO `tblcommunity` VALUES ('13', '31', '中粮云玺壹号', '[ 集美 - 杏林湾片区 ] 杏林湾路与诚毅中路交汇处', '/jx220108_back/upload/1657694351868.jpg', '200', '0');
INSERT INTO `tblcommunity` VALUES ('14', '17', '建发文澜和著二期', '[ 海沧 - 马銮湾新城 ] 龙瑶路与东瑶路交汇处 ', '/jx220108_back/upload/1657694413723.jpg', '1000', '0');
INSERT INTO `tblcommunity` VALUES ('15', '16', '中海国贸上城', '[ 思明 - 瑞景片区 ] 洪莲路与蔡岭路交汇处 ', '/jx220108_back/upload/1657694454391.jpg', '200', '0');
INSERT INTO `tblcommunity` VALUES ('16', '30', '测试小区', '地址', '/jx220108_back/upload/1657715636199.jpg', '1000', '1');
INSERT INTO `tblcommunity` VALUES ('20', '26', '峯范北京', '[ 门头沟 - 永定镇 ] 长安街首钢园地铁S1号线四道桥站', '/jx220108_back/upload/1657982467576.jpg', '152', '0');
INSERT INTO `tblcommunity` VALUES ('21', '14', '榕发悦乐郡', '[ 晋安 - 东二环 ] 长乐北路与塔头路交汇处', '/jx220108_back/upload/1658036638682.jpg', '1000', '0');
INSERT INTO `tblcommunity` VALUES ('22', '38', '翔安隧道口世茂御海墅', ' 翔安 隧道口', '/jx220108_back/upload/1658036758667.jpg', '152', '0');
INSERT INTO `tblcommunity` VALUES ('23', '21', '康大龙祥汇', '[ 黄埔 - 知识城 ] 南起步区九龙大道西侧 ', '/jx220108_back/upload/1658036816861.jpg', '200', '0');
INSERT INTO `tblcommunity` VALUES ('24', '34', '罗马家园', ' 海珠 沥滘', '/jx220108_back/upload/1658036950924.jpg', '1000', '0');
INSERT INTO `tblcommunity` VALUES ('25', '22', '深国际万科颐城瑧湾悦家园', '[ 南山 - 前海 ] 通港街与港城路交汇处 ', '/jx220108_back/upload/1658037961284.jpg', '152', '0');
INSERT INTO `tblcommunity` VALUES ('26', '23', '万科未来之光项目', '[ 宝安 - 新安 ] 新安街道广泰路北侧 ', '/jx220108_back/upload/1658038004735.jpg', '200', '0');
INSERT INTO `tblcommunity` VALUES ('27', '24', '越秀美的天悦江湾', '[ 滨海区 - 沙田 ] 滨江路东北侧200米', '/jx220108_back/upload/1658038056210.jpg', '200', '0');
INSERT INTO `tblcommunity` VALUES ('28', '25', '保利堂悦花园', '[ 东莞周边 - 惠州 ] 博罗县园洲镇保利堂悦营销中心 ', '/jx220108_back/upload/1658038146944.jpg', '9999', '0');
INSERT INTO `tblcommunity` VALUES ('29', '28', '电建西山源著', '[ 门头沟 - 永定镇 ] 电建西山源著营销中心 ', '/jx220108_back/upload/1658038221233.jpg', '152', '0');
INSERT INTO `tblcommunity` VALUES ('30', '39', '桂语听澜', '[ 通州 - 台湖 ] 经济技术开发区亦庄新城0510街区', '/jx220108_back/upload/1658038273919.jpg', '1000', '0');
INSERT INTO `tblcommunity` VALUES ('31', '19', '建发文澜春晓', '[ 同安 - 环东海域 ] 同安一中（滨海校区）北侧30米 ', '/jx220108_back/upload/1658038357480.jpg', '200', '0');
INSERT INTO `tblcommunity` VALUES ('32', '35', '圣地亚哥', '台商投资区-龙池开发区-角嵩路2号', '/jx220108_back/upload/1658038444615.jpg', '200', '0');
INSERT INTO `tblcommunity` VALUES ('33', '20', '东风广场', '(越秀) 东风东路787号', '/jx220108_back/upload/1658039185681.jpg', '152', '0');

-- ----------------------------
-- Table structure for tblfamily
-- ----------------------------
DROP TABLE IF EXISTS `tblfamily`;
CREATE TABLE `tblfamily` (
  `famId` int(11) NOT NULL AUTO_INCREMENT,
  `tenantId` int(11) DEFAULT NULL,
  `trueName` varchar(255) DEFAULT NULL,
  `IDNumber` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `IDFront` varchar(255) DEFAULT NULL,
  `IDBack` varchar(255) DEFAULT NULL,
  `registerImage` varchar(255) DEFAULT NULL,
  `occupation` int(11) DEFAULT NULL,
  `relation` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`famId`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblfamily
-- ----------------------------
INSERT INTO `tblfamily` VALUES ('12', '3', '测试父亲', '11223322626', '2022-06-30', '13566996232', '/jx220108_front/upload/1656684368072.jpg', null, '/jx220108_front/upload/1656655756796.jpg', '1', '1', '1');
INSERT INTO `tblfamily` VALUES ('13', '3', '测试母亲', '11223322626', '2022-06-17', '13599873348', '/jx220108_front/upload/1656684375168.jpg', null, '/jx220108_front/upload/1656684383814.jpg', '3', '2', '1');
INSERT INTO `tblfamily` VALUES ('14', '1', '测试1父亲', '151122222', '2022-07-01', '1355512252', '/jx220108_front/upload/1656655716888.jpg', null, '/jx220108_front/upload/1656655722150.jpg', '1', '1', '1');
INSERT INTO `tblfamily` VALUES ('15', '1', '测试2母亲', '1523322323', '2022-07-01', '1355512252', '/jx220108_front/upload/1656655753600.png', null, '/jx220108_front/upload/1656655756796.jpg', '3', '2', '1');
INSERT INTO `tblfamily` VALUES ('16', '2', '测试2父亲', '11223322626', '2022-07-01', '1355512252', '/jx220108_front/upload/1656684368072.jpg', null, '/jx220108_front/upload/1656684371902.jpg', '1', '1', '1');
INSERT INTO `tblfamily` VALUES ('17', '2', '测试2母亲', '1523322323', '2022-07-01', '13599873348', '/jx220108_front/upload/1656684375168.jpg', null, '/jx220108_front/upload/1656684379817.jpg', '1', '2', '1');
INSERT INTO `tblfamily` VALUES ('18', '2', '测试二兄弟', '11223322626', '2022-07-01', '13566996232', '/jx220108_front/upload/1656684383814.jpg', null, '/jx220108_front/upload/1656684387018.jpg', '2', '3', '1');
INSERT INTO `tblfamily` VALUES ('19', '5', '射手', '1523322323', '2022-07-03', '13566996232', '/jx220108_front/upload/1656835092964.jpg', null, '/jx220108_front/upload/1656835097432.jpg', '2', '1', '1');
INSERT INTO `tblfamily` VALUES ('20', '5', '测试母亲', '1523322323', '2022-07-03', '13596995959', '/jx220108_front/upload/1656835112375.jpg', null, '/jx220108_front/upload/1656835117037.jpg', '2', '2', '1');
INSERT INTO `tblfamily` VALUES ('21', '6', '射手', '11223322626', '2022-07-03', '13596995959', '/jx220108_front/upload/1656835303368.jpg', null, '/jx220108_front/upload/1656835306457.jpg', '1', '1', '1');
INSERT INTO `tblfamily` VALUES ('44', '10', '测试母亲', '11223322626', '2022-07-07', '1111', '/jx220108_front/upload/1657162795708.jpg', null, '/jx220108_front/upload/1657162795708.jpg', '1', '2', '0');
INSERT INTO `tblfamily` VALUES ('50', '11', '测试2母亲', '11223322626', '2022-07-13', '13566996232', '/jx220108_front/upload/1657695919157.jpg', null, '/jx220108_front/upload/1657695919157.jpg', '1', '1', '1');
INSERT INTO `tblfamily` VALUES ('51', '11', '测试母亲', '11223322626', '2022-07-13', '13566996232', '/jx220108_front/upload/1657695936014.jpg', null, '/jx220108_front/upload/1657695936014.jpg', '2', '1', '1');
INSERT INTO `tblfamily` VALUES ('52', '11', 'w', '11223322626', '2022-07-13', '13566996232', '/jx220108_front/upload/1657695952675.jpg', null, '/jx220108_front/upload/1657695952675.jpg', '2', '3', '1');
INSERT INTO `tblfamily` VALUES ('53', '11', '123', '1523322323', '2022-07-13', '13566996232', '/jx220108_front/upload/1657695972891.jpg', null, '/jx220108_front/upload/1657695972891.jpg', '3', '3', '1');
INSERT INTO `tblfamily` VALUES ('54', '11', '测试机', '1523322323', '2022-07-13', '13596995959', '/jx220108_front/upload/1657695994411.jpg', null, '/jx220108_front/upload/1657695994411.jpg', '2', '4', '1');
INSERT INTO `tblfamily` VALUES ('55', '12', '测试母亲', '11223322626', '2022-07-13', '13566996232', '/jx220108_front/upload/1657696139270.jpg', null, '/jx220108_front/upload/1657696141947.jpg', '2', '1', '1');
INSERT INTO `tblfamily` VALUES ('56', '12', '123', '11223322626', '2022-07-13', '13599873348', '/jx220108_front/upload/1657696152118.jpg', null, '/jx220108_front/upload/1657696155136.jpg', '1', '2', '1');
INSERT INTO `tblfamily` VALUES ('57', '12', '射手', '11223322626', '2022-07-13', '1355512252', '/jx220108_front/upload/1657696167630.jpg', null, '/jx220108_front/upload/1657696173096.jpg', '3', '3', '1');
INSERT INTO `tblfamily` VALUES ('58', '7', '测试母亲', '11223322626', '2022-07-03', '1111', '/jx220108_front/upload/1656835383731.jpg', null, '/jx220108_front/upload/1656835383731.jpg', '1', '1', '1');
INSERT INTO `tblfamily` VALUES ('59', '14', '测试母亲', '11223322626', '2022-07-13', '1355512252', '/jx220108_front/upload/1657696784304.jpg', null, '/jx220108_front/upload/1657696786836.jpg', '1', '1', '1');
INSERT INTO `tblfamily` VALUES ('60', '14', '测试母亲', '11223322626', '2022-07-13', '13599873348', '/jx220108_front/upload/1657696789105.jpg', null, '/jx220108_front/upload/1657696791269.jpg', '1', '2', '1');
INSERT INTO `tblfamily` VALUES ('61', '14', '测试机', '11223322626', '2022-07-13', '1111', '/jx220108_front/upload/1657696809408.jpg', null, '/jx220108_front/upload/1657696812274.jpg', '1', '3', '1');
INSERT INTO `tblfamily` VALUES ('62', '15', '测试母亲', '1523322323', '2022-07-13', '13599873348', '/jx220108_front/upload/1657696900212.jpg', null, '/jx220108_front/upload/1657696905844.jpg', '1', '1', '1');
INSERT INTO `tblfamily` VALUES ('63', '15', '测试机', '11223322626', '2022-07-13', '13596995959', '/jx220108_front/upload/1657696903388.jpg', null, '/jx220108_front/upload/1657696908509.jpg', '1', '2', '1');
INSERT INTO `tblfamily` VALUES ('64', '16', '测试机', '11223322626', '2022-07-14', '13566996232', '/jx220108_front/upload/1657783911891.jpg', null, '', '1', '1', '0');
INSERT INTO `tblfamily` VALUES ('67', '9', '测试机', '11223322626', '2022-07-04', '13599873348', '/jx220108_front/upload/1656896816359.jpg', null, '/jx220108_front/upload/1656896816359.jpg', '1', '1', '1');
INSERT INTO `tblfamily` VALUES ('68', '9', '二', '11223322626', '2022-07-04', '1355512252', '/jx220108_front/upload/1656896833023.jpg', null, '/jx220108_front/upload/1656896833023.jpg', '2', '2', '1');
INSERT INTO `tblfamily` VALUES ('69', '20', '二', '11223322626', '2022-07-14', '1355512252', '', null, '', '2', '1', '1');
INSERT INTO `tblfamily` VALUES ('70', '8', '123', '11223322626', '2022-07-03', '13596995959', '/jx220108_front/upload/1656835447164.jpg', null, '/jx220108_front/upload/1656835447164.jpg', '1', '1', '1');
INSERT INTO `tblfamily` VALUES ('71', '21', '测试母亲', '11223322626', '2022-07-18', '13596995959', '/jx220108_front/upload/1658154563629.jpg', null, '/jx220108_front/upload/1658154566239.jpg', '2', '1', '1');
INSERT INTO `tblfamily` VALUES ('72', '22', '测试机', '11223322626', '2022-07-18', '13596995959', '/jx220108_front/upload/1658158576972.jpg', null, '/jx220108_front/upload/1658158579566.jpg', '1', '1', '1');

-- ----------------------------
-- Table structure for tblmessage
-- ----------------------------
DROP TABLE IF EXISTS `tblmessage`;
CREATE TABLE `tblmessage` (
  `mesId` int(11) NOT NULL AUTO_INCREMENT,
  `tenantId` int(11) DEFAULT NULL,
  `staffId` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`mesId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblmessage
-- ----------------------------
INSERT INTO `tblmessage` VALUES ('1', '9', '1', '马克同志：您2022-07-04 00:00:00.0提交的申请台江区公租房资格材料已2022年07月06日通过审核，请您静待套房分配的消息。', '0', '2022-07-06 00:11:47');
INSERT INTO `tblmessage` VALUES ('2', '9', '1', '马克同志：您2022-07-04 00:00:00.0提交的申请台江区公租房资格材料已2022年07月06日通过审核，请您静待套房分配的消息。', '0', '2022-07-06 00:21:22');
INSERT INTO `tblmessage` VALUES ('3', '8', '1', '西楚霸王同志：您2022-07-03 00:00:00.0提交的申请鼓楼区公租房资格材料已2022年07月06日通过审核，请您静待套房分配的消息。', '1', '2022-07-06 09:46:33');
INSERT INTO `tblmessage` VALUES ('4', '8', '1', '西楚霸王同志：您2022-07-03 00:00:00.0提交的申请鼓楼区公租房资格材料已2022年07月06日通过审核，请您静待套房分配的消息。', '1', '2022-07-06 09:48:10');
INSERT INTO `tblmessage` VALUES ('5', '8', '1', '西楚霸王同志：您2022-07-03 00:00:00.0提交的申请鼓楼区公租房资格材料已2022年07月06日审核未通过，原因：补习，非常抱歉！', '1', '2022-07-06 09:52:31');
INSERT INTO `tblmessage` VALUES ('6', '9', '1', '马克同志：您2022-07-04 00:00:00.0提交的申请台江区公租房资格材料已2022年07月06日通过审核，请您静待套房分配的消息。', '0', '2022-07-06 10:49:25');
INSERT INTO `tblmessage` VALUES ('7', '7', '1', '马可波罗同志：您2022-07-03 00:00:00.0提交的申请湖里区公租房资格材料已2022年07月06日通过审核，请您静待套房分配的消息。', '0', '2022-07-06 14:14:55');
INSERT INTO `tblmessage` VALUES ('8', '7', '1', '马可波罗同志：您已2022年07月11日被分配到芙蓉苑小区15#102套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '0', '2022-07-11 16:12:38');
INSERT INTO `tblmessage` VALUES ('9', '6', '1', '马超同志：您2022-07-03 00:00:00.0提交的申请湖里区公租房资格材料已2022年07月11日通过审核，请您静待套房分配的消息。', '0', '2022-07-11 16:14:06');
INSERT INTO `tblmessage` VALUES ('10', '2', '1', '吴同志：您2022-07-03 00:00:00.0提交的申请鼓楼区公租房资格材料已2022年07月11日通过审核，请您静待套房分配的消息。', '0', '2022-07-11 16:14:09');
INSERT INTO `tblmessage` VALUES ('11', '6', '1', '马超同志：您已2022年07月11日被分配到湖明丽景小区6#106套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '0', '2022-07-11 22:19:32');
INSERT INTO `tblmessage` VALUES ('12', '1', '1', '吴同志：您2022-07-03 00:00:00.0提交的申请海沧区公租房资格材料已2022年07月11日审核未通过，原因：不太行，非常抱歉！', '0', '2022-07-11 22:54:23');
INSERT INTO `tblmessage` VALUES ('13', '13', '1', 'null同志：您已2022年07月12日被分配到小区一小区12#201套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '0', '2022-07-12 15:38:35');
INSERT INTO `tblmessage` VALUES ('14', '13', '1', 'null同志：您已2022年07月12日被分配到小区一小区1#123套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '0', '2022-07-12 15:42:15');
INSERT INTO `tblmessage` VALUES ('15', '8', '1', '西楚霸王同志：您已2022年07月12日被分配到小区一小区12#201套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '1', '2022-07-12 15:53:25');
INSERT INTO `tblmessage` VALUES ('16', '8', '1', '西楚霸王同志：您已2022年07月12日被分配到小区一小区1#123套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '1', '2022-07-12 15:54:52');
INSERT INTO `tblmessage` VALUES ('17', '5', '1', '测试1同志：您已2022年07月12日被分配到芙蓉苑小区2#102套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '0', '2022-07-12 15:58:22');
INSERT INTO `tblmessage` VALUES ('18', '8', '1', '西楚霸王同志：您已2022年07月12日被分配到小区一小区1#123套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '1', '2022-07-12 15:58:22');
INSERT INTO `tblmessage` VALUES ('19', '8', '1', '西楚霸王同志：您已2022年07月12日被分配到海沧小区小区4#105套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '1', '2022-07-12 21:40:59');
INSERT INTO `tblmessage` VALUES ('20', '1', '1', '吴同志：您2022-07-03 00:00:00.0提交的申请海沧区公租房资格材料已2022年07月13日审核未通过，原因：补习，非常抱歉！', '0', '2022-07-13 09:51:06');
INSERT INTO `tblmessage` VALUES ('21', '3', '1', '张三同志：您2022-07-03 00:00:00.0提交的申请越秀区公租房资格材料已2022年07月13日审核未通过，原因：，非常抱歉！', '1', '2022-07-13 09:51:17');
INSERT INTO `tblmessage` VALUES ('22', '1', '1', '吴同志：您2022-07-03 00:00:00.0提交的申请海沧区公租房资格材料已2022年07月13日审核未通过，原因：，非常抱歉！', '0', '2022-07-13 09:52:26');
INSERT INTO `tblmessage` VALUES ('23', '1', '1', '吴同志：您2022-07-03 00:00:00.0提交的申请海沧区公租房资格材料已2022年07月13日审核未通过，原因：对，非常抱歉！', '0', '2022-07-13 10:06:40');
INSERT INTO `tblmessage` VALUES ('24', '1', '1', '吴同志：您2022-07-03 00:00:00.0提交的申请海沧区公租房资格材料已2022年07月13日通过审核，请您静待套房分配的消息。', '0', '2022-07-13 10:08:42');
INSERT INTO `tblmessage` VALUES ('25', '1', '1', '吴同志：您2022-07-03 00:00:00.0提交的申请海沧区公租房资格材料已2022年07月13日审核未通过，原因：对待，非常抱歉！', '0', '2022-07-13 10:09:03');
INSERT INTO `tblmessage` VALUES ('26', '11', '1', '006无同志：您2022-07-13 00:00:00.0提交的申请湖里区公租房资格材料已2022年07月13日通过审核，请您静待套房分配的消息。', '0', '2022-07-13 15:22:48');
INSERT INTO `tblmessage` VALUES ('27', '12', '1', '无002同志：您2022-07-13 00:00:00.0提交的申请集美区公租房资格材料已2022年07月13日通过审核，请您静待套房分配的消息。', '0', '2022-07-13 15:22:48');
INSERT INTO `tblmessage` VALUES ('28', '7', '1', '马可波罗同志：您2022-07-13 00:00:00.0提交的申请海沧区公租房资格材料已2022年07月13日通过审核，请您静待套房分配的消息。', '0', '2022-07-13 15:22:48');
INSERT INTO `tblmessage` VALUES ('29', '14', '1', '无006同志：您2022-07-13 00:00:00.0提交的申请思明区公租房资格材料已2022年07月13日通过审核，请您静待套房分配的消息。', '0', '2022-07-13 15:22:55');
INSERT INTO `tblmessage` VALUES ('30', '15', '1', '008wu同志：您2022-07-13 00:00:00.0提交的申请海沧区公租房资格材料已2022年07月13日通过审核，请您静待套房分配的消息。', '0', '2022-07-13 15:22:55');
INSERT INTO `tblmessage` VALUES ('31', '7', '1', '马可波罗同志：您已2022年07月13日被分配到海沧小区小区2#101套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '0', '2022-07-13 15:28:12');
INSERT INTO `tblmessage` VALUES ('32', '14', '1', '无006同志：您已2022年07月13日被分配到湖明丽景小区8#107套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '0', '2022-07-13 15:28:12');
INSERT INTO `tblmessage` VALUES ('33', '5', '1', '测试1同志：您已2022年07月13日被分配到芙蓉苑小区15#101套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '0', '2022-07-13 15:50:19');
INSERT INTO `tblmessage` VALUES ('34', '9', '1', '马克同志：您已2022年07月13日被分配到芙蓉苑小区15#103套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '0', '2022-07-13 21:11:19');
INSERT INTO `tblmessage` VALUES ('35', '15', '1', '008wu同志：您已2022年07月18日被分配到海沧小区小区1#101套房，请以7个工作日之内到大厅进行合同签订，如果过期1个月没有签订合同，作为自动放弃申请，该套房将自动收回。', '0', '2022-07-18 23:42:03');
INSERT INTO `tblmessage` VALUES ('36', '22', '1', '测试同志：您2022-07-18 00:00:00.0提交的申请湖里区公租房资格材料已2022年07月18日通过审核，请您静待套房分配的消息。', '0', '2022-07-18 23:43:02');
INSERT INTO `tblmessage` VALUES ('37', '8', '1', '西楚霸王同志：您2022-07-18 00:00:00.0提交的申请海沧区公租房资格材料已2022年07月18日通过审核，请您静待套房分配的消息。', '0', '2022-07-18 23:43:21');
INSERT INTO `tblmessage` VALUES ('38', '21', '1', '测试人员同志：您2022-07-18 00:00:00.0提交的申请湖里区公租房资格材料已2022年07月18日通过审核，请您静待套房分配的消息。', '0', '2022-07-18 23:43:21');

-- ----------------------------
-- Table structure for tblpersonal
-- ----------------------------
DROP TABLE IF EXISTS `tblpersonal`;
CREATE TABLE `tblpersonal` (
  `perId` int(11) NOT NULL AUTO_INCREMENT,
  `tenantId` int(11) DEFAULT NULL,
  `proId` int(11) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `regionId` int(11) DEFAULT NULL,
  `trueName` varchar(255) DEFAULT NULL,
  `IDNumber` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `IDFront` varchar(255) DEFAULT NULL,
  `IDBack` varchar(255) DEFAULT NULL,
  `registerImg` varchar(255) DEFAULT NULL,
  `personImg` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `perwork` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `income` double DEFAULT NULL,
  `proType` int(11) DEFAULT NULL,
  `housing` double DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `applyTime` date DEFAULT NULL,
  PRIMARY KEY (`perId`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblpersonal
-- ----------------------------
INSERT INTO `tblpersonal` VALUES ('15', '3', '2', '7', '20', '张三', '11223322626', '2022-06-30', '1511336033', '/jx220108_front/upload/1656655684907.png', '/jx220108_front/upload/1656655684907.png', '/jx220108_front/upload/1656655684907.png', '/jx220108_front/upload/1656655684907.png', null, null, '100', '2', '200', null, '/jx220108_front/upload/1656684306162.jpg', '还过得去', '1', '2022-07-03');
INSERT INTO `tblpersonal` VALUES ('16', '1', '0', '5', '17', '吴', '35022231112', '2022-07-01', '13599586623', '/jx220108_front/upload/1656655678802.png', '/jx220108_front/upload/1656655684907.png', '/jx220108_front/upload/1656655681419.png', '/jx220108_front/upload/1656655690438.jpg', null, null, '3000', '2', '2000', null, '/jx220108_front/upload/1656655693348.png', '还行', '1', '2022-07-03');
INSERT INTO `tblpersonal` VALUES ('17', '2', '0', '4', '13', '吴', '350211665592631024', '2022-07-01', '13599594946', '/jx220108_front/upload/1656684277472.jpg', '/jx220108_front/upload/1656684289676.png', '/jx220108_front/upload/1656684280939.jpg', '/jx220108_front/upload/1656684302057.jpg', null, null, '200', '1', '100', null, '/jx220108_front/upload/1656684306162.jpg', '帮帮', '1', '2022-07-03');
INSERT INTO `tblpersonal` VALUES ('18', '5', '0', '5', '30', '测试1', '350222366956231471', '2022-07-03', '1511336033', '/jx220108_front/upload/1656835051384.jpg', '/jx220108_front/upload/1656835060768.jpg', '/jx220108_front/upload/1656835053865.jpg', '/jx220108_front/upload/1656835063528.jpg', null, null, '233', '2', '422', null, '/jx220108_front/upload/1656835069902.jpg', '还接 ', '3', '2022-07-03');
INSERT INTO `tblpersonal` VALUES ('22', '6', '0', '5', '30', '马超', '350211665592631024', '2022-07-03', '1511336033', '/jx220108_front/upload/1656835276512.jpg', '/jx220108_front/upload/1656835283518.jpg', '/jx220108_front/upload/1656835279241.jpg', '/jx220108_front/upload/1656835286906.jpg', null, null, '200', '1', '100', null, '/jx220108_front/upload/1656835290470.jpg', '', '3', '2022-07-03');
INSERT INTO `tblpersonal` VALUES ('44', '10', '1', '4', '13', '无', '350211665592631024', '2022-07-07', '0', '/jx220108_front/upload/1657162004924.jpg', '/jx220108_front/upload/1657162802150.jpg', '/jx220108_front/upload/1657162007899.jpg', '/jx220108_front/upload/1657162804773.jpg', null, null, '200', '1', '0', null, '/jx220108_front/upload/1657162807046.jpg', '', '1', '2022-07-09');
INSERT INTO `tblpersonal` VALUES ('46', '11', '1', '5', '30', '006无', '350222366956231471', '2022-07-13', '13599594946', '/jx220108_front/upload/1657695861137.jpg', '/jx220108_front/upload/1657695866899.jpg', '/jx220108_front/upload/1657695863319.jpg', '/jx220108_front/upload/1657695869413.jpg', null, null, '200', '2', '100', null, '/jx220108_front/upload/1657695871990.jpg', '123', '1', '2022-07-13');
INSERT INTO `tblpersonal` VALUES ('47', '12', '1', '5', '31', '无002', '350222366956231471', '2022-07-13', '1511336033', '/jx220108_front/upload/1657696110827.jpg', '/jx220108_front/upload/1657696113252.jpg', '/jx220108_front/upload/1657696115409.jpg', '/jx220108_front/upload/1657696117810.jpg', null, null, '200', '1', '100', null, '/jx220108_front/upload/1657696120446.jpg', '123', '1', '2022-07-13');
INSERT INTO `tblpersonal` VALUES ('48', '7', '1', '5', '17', '马可波罗', '350222366956231471', '2022-07-03', '1511336033', '/jx220108_front/upload/1656835367271.jpg', '/jx220108_front/upload/1656835369426.jpg', '/jx220108_front/upload/1656835359928.jpg', '/jx220108_front/upload/1656835362908.jpg', null, null, '200', '1', '100', null, '/jx220108_front/upload/1656835357163.jpg', '123', '3', '2022-07-13');
INSERT INTO `tblpersonal` VALUES ('49', '14', '1', '5', '16', '无006', '350211665592631024', '2022-07-13', '1511336033', '/jx220108_front/upload/1657696758572.jpg', '/jx220108_front/upload/1657696764724.jpg', '/jx220108_front/upload/1657696760607.jpg', '/jx220108_front/upload/1657696766389.jpg', null, null, '200', '1', '100', null, '/jx220108_front/upload/1657696769027.jpg', '123', '3', '2022-07-13');
INSERT INTO `tblpersonal` VALUES ('50', '15', '1', '5', '17', '008wu', '35022231112', '2022-07-13', '1511336033', '/jx220108_front/upload/1657696867827.jpg', '/jx220108_front/upload/1657696872612.jpg', '/jx220108_front/upload/1657696870000.jpg', '/jx220108_front/upload/1657696875703.jpg', null, null, '200', '1', '100', null, '/jx220108_front/upload/1657696877182.jpg', '123', '3', '2022-07-13');
INSERT INTO `tblpersonal` VALUES ('53', '16', '1', '5', '17', '008wu', '35022231112', '2022-07-14', '1511336033', '/jx220108_front/upload/1657783894518.jpg', '', '', '', null, null, '200', '1', '100', null, '', '123', '0', '2022-07-14');
INSERT INTO `tblpersonal` VALUES ('55', '9', '1', '4', '13', '马克', '350211665592631024', '2022-07-14', '1511336033', '/jx220108_front/upload/1656896778512.jpg', '/jx220108_front/upload/1656896787320.jpg', '/jx220108_front/upload/1656896782509.jpg', '/jx220108_front/upload/1656896790222.jpg', null, null, '200', '1', '100', null, '/jx220108_front/upload/1656896793520.jpg', '', '1', '2022-07-14');
INSERT INTO `tblpersonal` VALUES ('59', '20', '1', '4', '13', '012wu', '35022231112', '2022-07-14', '1511336033', '', '', '', '', null, null, '200', '1', '10', null, '', '', '1', '2022-07-14');
INSERT INTO `tblpersonal` VALUES ('60', '19', '1', '5', '30', '011wu', '35022231112', '2022-07-14', '1511336033', '', '', '', '', null, null, '200', '1', '10', null, '', '', '1', '2022-07-14');
INSERT INTO `tblpersonal` VALUES ('62', '8', '1', '5', '17', '西楚霸王', '350222366956231471', '2022-07-03', '1511336033', '/jx220108_front/upload/1656835423338.jpg', '/jx220108_front/upload/1656835425944.jpg', '/jx220108_front/upload/1656835428487.jpg', '/jx220108_front/upload/1656835431878.jpg', null, null, '200', '1', '100', null, '/jx220108_front/upload/1656835434817.jpg', '', '1', '2022-07-18');
INSERT INTO `tblpersonal` VALUES ('63', '21', '1', '5', '30', '测试人员', '350222366956231471', '2022-07-18', '1511336033', '/jx220108_front/upload/1658131222547.jpg', '/jx220108_front/upload/1658154544467.jpg', '/jx220108_front/upload/1658154541349.jpg', '/jx220108_front/upload/1658154546717.jpg', null, null, '10', '1', '20', null, '/jx220108_front/upload/1658154549408.jpg', '', '1', '2022-07-18');
INSERT INTO `tblpersonal` VALUES ('64', '22', '1', '5', '30', '测试', '350222366956231471', '2022-07-18', '1345959595', '/jx220108_front/upload/1658158552459.jpg', '/jx220108_front/upload/1658158554716.jpg', '/jx220108_front/upload/1658158556942.jpg', '/jx220108_front/upload/1658158560030.jpg', null, null, '200', '2', '10', null, '/jx220108_front/upload/1658158562660.jpg', '', '1', '2022-07-18');

-- ----------------------------
-- Table structure for tblpower
-- ----------------------------
DROP TABLE IF EXISTS `tblpower`;
CREATE TABLE `tblpower` (
  `powerId` int(11) NOT NULL AUTO_INCREMENT,
  `powerName` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`powerId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblpower
-- ----------------------------
INSERT INTO `tblpower` VALUES ('1', '区域管理', '', '-1');
INSERT INTO `tblpower` VALUES ('2', '小区管理', null, '-1');
INSERT INTO `tblpower` VALUES ('3', '套房管理', '', '-1');
INSERT INTO `tblpower` VALUES ('4', '统计分析', null, '-1');
INSERT INTO `tblpower` VALUES ('5', '资格审核', null, '-1');
INSERT INTO `tblpower` VALUES ('6', '人员管理', null, '-1');
INSERT INTO `tblpower` VALUES ('7', '区域信息', 'regionManage.jsp', '1');
INSERT INTO `tblpower` VALUES ('8', '小区信息', 'villageManage.jsp', '2');
INSERT INTO `tblpower` VALUES ('9', '套房信息', 'suiteManage.jsp', '3');
INSERT INTO `tblpower` VALUES ('10', '区域/小区的出租比', 'rentPoint.jsp', '4');
INSERT INTO `tblpower` VALUES ('12', '租金数量', 'rentTime.jsp', '4');
INSERT INTO `tblpower` VALUES ('15', '审核资格', 'review.jsp', '5');
INSERT INTO `tblpower` VALUES ('16', '分配套房', 'allocation.jsp', '3');
INSERT INTO `tblpower` VALUES ('19', '员工管理', '/user/userList', '6');
INSERT INTO `tblpower` VALUES ('20', '角色管理', '/role/roleManage', '6');

-- ----------------------------
-- Table structure for tblregion
-- ----------------------------
DROP TABLE IF EXISTS `tblregion`;
CREATE TABLE `tblregion` (
  `regionId` int(11) NOT NULL AUTO_INCREMENT,
  `regionName` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `trips` varchar(255) DEFAULT NULL,
  `isValid` int(11) DEFAULT NULL,
  PRIMARY KEY (`regionId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblregion
-- ----------------------------
INSERT INTO `tblregion` VALUES ('1', '福建省', '0', null, '0');
INSERT INTO `tblregion` VALUES ('2', '广东省', '0', null, '0');
INSERT INTO `tblregion` VALUES ('3', '北京省', '0', null, '0');
INSERT INTO `tblregion` VALUES ('4', '福州市', '1', null, '0');
INSERT INTO `tblregion` VALUES ('5', '厦门市', '1', null, '0');
INSERT INTO `tblregion` VALUES ('6', '泉州市', '1', null, '0');
INSERT INTO `tblregion` VALUES ('7', '广州市', '2', null, '0');
INSERT INTO `tblregion` VALUES ('8', '深圳市', '2', null, '0');
INSERT INTO `tblregion` VALUES ('9', '东莞市', '2', null, '0');
INSERT INTO `tblregion` VALUES ('10', '东城区', '3', null, '0');
INSERT INTO `tblregion` VALUES ('11', '西城市', '3', null, '0');
INSERT INTO `tblregion` VALUES ('12', '海淀市', '3', null, '0');
INSERT INTO `tblregion` VALUES ('13', '鼓楼区', '4', '鼓楼区', '0');
INSERT INTO `tblregion` VALUES ('14', '台江区', '4', '台江区', '0');
INSERT INTO `tblregion` VALUES ('15', '仓山区', '4', '仓山区', '1');
INSERT INTO `tblregion` VALUES ('16', '思明区', '5', '思明区', '0');
INSERT INTO `tblregion` VALUES ('17', '海沧区', '5', '海沧区', '0');
INSERT INTO `tblregion` VALUES ('18', '洛江区', '6', '洛江区', '0');
INSERT INTO `tblregion` VALUES ('19', '鲤城区', '6', '鲤城区', '0');
INSERT INTO `tblregion` VALUES ('20', '越秀区', '7', '越秀区', '0');
INSERT INTO `tblregion` VALUES ('21', '天河区', '7', '天河区', '0');
INSERT INTO `tblregion` VALUES ('22', '南山区', '8', '南山区', '0');
INSERT INTO `tblregion` VALUES ('23', '罗湖区', '8', '罗湖区', '0');
INSERT INTO `tblregion` VALUES ('24', '莞城区', '9', '莞城区', '0');
INSERT INTO `tblregion` VALUES ('25', '万江区', '9', '万江区', '0');
INSERT INTO `tblregion` VALUES ('26', '朝阳门街道', '10', '朝阳门街道', '0');
INSERT INTO `tblregion` VALUES ('27', '建国门街道', '10', '建国门街道', '1');
INSERT INTO `tblregion` VALUES ('28', '西长安街街道', '11', '西长安街街道', '0');
INSERT INTO `tblregion` VALUES ('29', '学院路街道', '12', '学院路街道', '0');
INSERT INTO `tblregion` VALUES ('30', '湖里区', '5', '湖里区', '0');
INSERT INTO `tblregion` VALUES ('31', '集美区', '5', '集美区', '0');
INSERT INTO `tblregion` VALUES ('32', '漳州市', '1', null, '0');
INSERT INTO `tblregion` VALUES ('33', '龙文区', '32', '龙文区', '0');
INSERT INTO `tblregion` VALUES ('34', '芗城区', '32', '芗城区', '0');
INSERT INTO `tblregion` VALUES ('35', '龙海区', '32', '龙海', '0');
INSERT INTO `tblregion` VALUES ('38', '翔安区', '5', '翔安', '0');
INSERT INTO `tblregion` VALUES ('39', '海淀', '12', '海淀', '0');
INSERT INTO `tblregion` VALUES ('40', '龙海区', '6', '海淀区', '1');
INSERT INTO `tblregion` VALUES ('41', '翔安区', '5', '翔安', '1');

-- ----------------------------
-- Table structure for tblrole
-- ----------------------------
DROP TABLE IF EXISTS `tblrole`;
CREATE TABLE `tblrole` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(255) DEFAULT NULL,
  `roleDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblrole
-- ----------------------------
INSERT INTO `tblrole` VALUES ('1', '超级管理员', '超级管理员');
INSERT INTO `tblrole` VALUES ('2', '房源发布员', '房源发布');
INSERT INTO `tblrole` VALUES ('3', '资质审核员', '资质审核');
INSERT INTO `tblrole` VALUES ('4', '系统管理员', '系统管理员');
INSERT INTO `tblrole` VALUES ('5', '无敌管理员', '无敌');
INSERT INTO `tblrole` VALUES ('10', '角色2', null);
INSERT INTO `tblrole` VALUES ('11', '角色3', '角色三不知道干嘛用的');
INSERT INTO `tblrole` VALUES ('19', 'jue', '133124567');
INSERT INTO `tblrole` VALUES ('23', '22', '33');

-- ----------------------------
-- Table structure for tblrolepower
-- ----------------------------
DROP TABLE IF EXISTS `tblrolepower`;
CREATE TABLE `tblrolepower` (
  `reId` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `powerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`reId`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblrolepower
-- ----------------------------
INSERT INTO `tblrolepower` VALUES ('1', '1', '1');
INSERT INTO `tblrolepower` VALUES ('2', '1', '2');
INSERT INTO `tblrolepower` VALUES ('3', '1', '3');
INSERT INTO `tblrolepower` VALUES ('4', '1', '4');
INSERT INTO `tblrolepower` VALUES ('5', '1', '5');
INSERT INTO `tblrolepower` VALUES ('6', '1', '6');
INSERT INTO `tblrolepower` VALUES ('7', '1', '7');
INSERT INTO `tblrolepower` VALUES ('8', '1', '8');
INSERT INTO `tblrolepower` VALUES ('9', '1', '9');
INSERT INTO `tblrolepower` VALUES ('10', '1', '10');
INSERT INTO `tblrolepower` VALUES ('11', '1', '11');
INSERT INTO `tblrolepower` VALUES ('12', '1', '12');
INSERT INTO `tblrolepower` VALUES ('13', '1', '13');
INSERT INTO `tblrolepower` VALUES ('14', '1', '14');
INSERT INTO `tblrolepower` VALUES ('15', '1', '15');
INSERT INTO `tblrolepower` VALUES ('16', '1', '16');
INSERT INTO `tblrolepower` VALUES ('17', '1', '17');
INSERT INTO `tblrolepower` VALUES ('18', '1', '18');
INSERT INTO `tblrolepower` VALUES ('19', '1', '19');
INSERT INTO `tblrolepower` VALUES ('20', '1', '20');
INSERT INTO `tblrolepower` VALUES ('21', '1', '21');
INSERT INTO `tblrolepower` VALUES ('31', '5', '16');
INSERT INTO `tblrolepower` VALUES ('32', '5', '1');
INSERT INTO `tblrolepower` VALUES ('33', '5', '2');
INSERT INTO `tblrolepower` VALUES ('34', '5', '19');
INSERT INTO `tblrolepower` VALUES ('35', '5', '4');
INSERT INTO `tblrolepower` VALUES ('36', '5', '5');
INSERT INTO `tblrolepower` VALUES ('37', '5', '6');
INSERT INTO `tblrolepower` VALUES ('38', '5', '7');
INSERT INTO `tblrolepower` VALUES ('39', '5', '8');
INSERT INTO `tblrolepower` VALUES ('40', '5', '11');
INSERT INTO `tblrolepower` VALUES ('76', '10', '16');
INSERT INTO `tblrolepower` VALUES ('77', '10', '18');
INSERT INTO `tblrolepower` VALUES ('78', '10', '3');
INSERT INTO `tblrolepower` VALUES ('79', '10', '4');
INSERT INTO `tblrolepower` VALUES ('80', '10', '5');
INSERT INTO `tblrolepower` VALUES ('81', '10', '6');
INSERT INTO `tblrolepower` VALUES ('82', '10', '9');
INSERT INTO `tblrolepower` VALUES ('83', '10', '11');
INSERT INTO `tblrolepower` VALUES ('84', '11', '16');
INSERT INTO `tblrolepower` VALUES ('85', '11', '2');
INSERT INTO `tblrolepower` VALUES ('86', '11', '18');
INSERT INTO `tblrolepower` VALUES ('87', '11', '4');
INSERT INTO `tblrolepower` VALUES ('88', '11', '5');
INSERT INTO `tblrolepower` VALUES ('89', '11', '6');
INSERT INTO `tblrolepower` VALUES ('90', '11', '8');
INSERT INTO `tblrolepower` VALUES ('91', '11', '11');
INSERT INTO `tblrolepower` VALUES ('100', '2', '1');
INSERT INTO `tblrolepower` VALUES ('101', '2', '2');
INSERT INTO `tblrolepower` VALUES ('102', '2', '3');
INSERT INTO `tblrolepower` VALUES ('103', '2', '4');
INSERT INTO `tblrolepower` VALUES ('104', '2', '7');
INSERT INTO `tblrolepower` VALUES ('105', '2', '8');
INSERT INTO `tblrolepower` VALUES ('106', '2', '9');
INSERT INTO `tblrolepower` VALUES ('107', '2', '10');
INSERT INTO `tblrolepower` VALUES ('108', '3', '16');
INSERT INTO `tblrolepower` VALUES ('109', '3', '3');
INSERT INTO `tblrolepower` VALUES ('110', '3', '4');
INSERT INTO `tblrolepower` VALUES ('111', '3', '5');
INSERT INTO `tblrolepower` VALUES ('112', '3', '12');
INSERT INTO `tblrolepower` VALUES ('113', '3', '15');
INSERT INTO `tblrolepower` VALUES ('123', '4', '19');
INSERT INTO `tblrolepower` VALUES ('124', '4', '20');
INSERT INTO `tblrolepower` VALUES ('125', '4', '6');

-- ----------------------------
-- Table structure for tblstaff
-- ----------------------------
DROP TABLE IF EXISTS `tblstaff`;
CREATE TABLE `tblstaff` (
  `staffId` int(11) NOT NULL AUTO_INCREMENT,
  `acc` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `headImg` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `isValid` int(11) DEFAULT NULL,
  PRIMARY KEY (`staffId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblstaff
-- ----------------------------
INSERT INTO `tblstaff` VALUES ('1', 'admin', '123', '1', '超级管理员', '中', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('2', '01', '123', '2', '测试', '好', null, '1', '0');
INSERT INTO `tblstaff` VALUES ('3', '02', '123', '3', '测试3', '放', null, '0', '1');
INSERT INTO `tblstaff` VALUES ('4', '04', '1', '2', '测试5', '好处', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('5', 'hao0', '123456', '3', '新改的数据', 'h', null, '5', '0');
INSERT INTO `tblstaff` VALUES ('6', '003', null, '3', '222', '123', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('7', '展示', '123456', '10', '客户一', '方法1', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('8', '展示', '123456', '2', '客户三', '方法', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('9', 'xin', '123', '2', '新员工', '福建', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('10', '测试湖', '123456', '11', '1234', '地址222', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('11', 'testone', '123456', '2', '房源发布员', '安徽地', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('12', 'testtwo', '123456', '3', '资格审核员', '的', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('13', 'testthree', '123456', '4', '系统管理员', '福建', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('14', '123', '123456', '5', 'yuan', '地址', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('16', '123', '12', null, '12', '12', '123.jpg', '12', '0');
INSERT INTO `tblstaff` VALUES ('17', '123', '12', null, '1', '1', 'D:\\JavaComeAgain\\MavenProject\\JDProject\\target\\JDProject\\\\upload/234945-1629820185611d.jpg', '1', '0');
INSERT INTO `tblstaff` VALUES ('18', 'zz', '1', null, '1', '1', 'D:\\JavaComeAgain\\MavenProject\\ssmJDProject\\target\\ssmJDProject\\\\upload/u001back.jpg', '1', '0');
INSERT INTO `tblstaff` VALUES ('19', 'a', '1', null, '1', '1', 'D:\\JavaComeAgain\\MavenProject\\ssmJDProject\\target\\ssmJDProject\\\\upload/232902-16348301422b2a.jpg', '1', '0');
INSERT INTO `tblstaff` VALUES ('20', 'test2', '123', null, '12', '45', 'D:\\JavaComeAgain\\MavenProject\\ssmJDProject\\target\\ssmJDProject\\upload/u001card.png', '0', '0');
INSERT INTO `tblstaff` VALUES ('21', '123', null, null, '2', '3', null, '25', '0');
INSERT INTO `tblstaff` VALUES ('22', '123', null, null, '1', '1', null, '1', '0');
INSERT INTO `tblstaff` VALUES ('23', '123', null, null, '123', '123', null, '123', '0');
INSERT INTO `tblstaff` VALUES ('26', '2', '2', '1', '2', '3', null, '2', '0');
INSERT INTO `tblstaff` VALUES ('27', '新数据', '123', '1', '新数据', '新数据', null, '12', '1');
INSERT INTO `tblstaff` VALUES ('28', '222', null, '1', '123', '123', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('29', '10', null, '1', '11', '12', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('30', null, null, '1', null, null, null, '0', '1');
INSERT INTO `tblstaff` VALUES ('31', null, null, '1', null, null, null, '0', '1');
INSERT INTO `tblstaff` VALUES ('32', '10', '10', '10', '10', '10', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('33', '123', null, '1', '456', '12', null, '0', '0');
INSERT INTO `tblstaff` VALUES ('34', '账号', null, '1', '醒那么和0', '达到', null, '0', '0');

-- ----------------------------
-- Table structure for tblsuite
-- ----------------------------
DROP TABLE IF EXISTS `tblsuite`;
CREATE TABLE `tblsuite` (
  `communityId` int(11) NOT NULL AUTO_INCREMENT,
  `areaId` int(11) DEFAULT NULL,
  `building` int(11) DEFAULT NULL,
  `roomNo` varchar(11) DEFAULT NULL,
  `acreage` double(11,0) DEFAULT NULL,
  `rent` double DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `toilet` int(11) DEFAULT NULL,
  `parlor` int(11) DEFAULT NULL,
  `kitchen` int(11) DEFAULT NULL,
  `balcony` int(11) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '0：未发布 1：已发布 2：已分配 3：已回收',
  `isValid` int(11) DEFAULT NULL,
  PRIMARY KEY (`communityId`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblsuite
-- ----------------------------
INSERT INTO `tblsuite` VALUES ('1', '1', '15', '101', '20', '5000', '5', '2', '1', '1', '2', '优质房源', '/jx220108_back/upload/1656655716888.jpg', '2', '0');
INSERT INTO `tblsuite` VALUES ('2', '1', '15', '102', '21', '5000', '3', '3', '1', '1', '2', '垃圾房源', '/jx220108_back/upload/1656655753600.png', '2', '0');
INSERT INTO `tblsuite` VALUES ('3', '1', '15', '103', '22', '5000', '4', '2', '1', '1', '2', '中等房源', '/jx220108_back/upload/1656655722150.jpg', '2', '0');
INSERT INTO `tblsuite` VALUES ('4', '1', '7', '101', '23', '5000', '3', '1', '1', '1', '2', '好好先生', '/jx220108_back/upload/1656684289676.png', '1', '0');
INSERT INTO `tblsuite` VALUES ('5', '1', '5', '101', '24', '5000', '6', '2', '1', '1', '2', '哈哈哈哈', '/jx220108_back/upload/1656684289676.png', '1', '0');
INSERT INTO `tblsuite` VALUES ('6', '1', '3', '101', '25', '5000', '3', '2', '1', '1', '2', '嘻嘻嘻嘻', '/jx220108_back/upload/1656684375168.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('7', '2', '2', '101', '26', '5000', '3', '2', '1', '1', '2', '你好你好', '/jx220108_back/upload/1656684368072.jpg', '2', '0');
INSERT INTO `tblsuite` VALUES ('8', '2', '4', '105', '27', '3000', '5', '3', '1', '1', '2', '还行', '/jx220108_back/upload/1656684371902.jpg', '2', '0');
INSERT INTO `tblsuite` VALUES ('9', '3', '6', '106', '28', '6000', '4', '2', '1', '2', '2', '挺好的房子', '/jx220108_back/upload/1656684379817.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('10', '3', '8', '107', '29', '6005', '5', '5', '2', '2', '2', '还行的房子', '/jx220108_back/upload/1656684302057.jpg', '2', '0');
INSERT INTO `tblsuite` VALUES ('11', '3', '7', '108', '30', '7000', '6', '4', '2', '2', '2', '还可以的房子', '/jx220108_back/upload/1656684383814.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('12', '1', '1', '101', '31', '500', '2', '1', '1', '1', '-2', '套房11', '/jx220108_back/upload/1657355585112.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('13', '1', '1', '102', '32', '600', '2', '1', '1', '1', '-2', '套房11', '/jx220108_back/upload/1657355585112.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('14', '1', '1', '103', '33', '100', '2', '1', '1', '1', '-2', '套房11', '/jx220108_back/upload/1657355585112.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('15', '1', '2', '101', '34', '200', '2', '1', '1', '1', '-2', '套房11', '/jx220108_back/upload/1657355585112.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('16', '1', '2', '102', '10', '300', '2', '1', '1', '1', '-2', '套房11', '/jx220108_back/upload/1657355585112.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('17', '1', '2', '103', '11', '400', '2', '1', '1', '1', '-2', '套房11', '/jx220108_back/upload/1657355585112.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('34', '2', '1', '101', '12', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '2', '0');
INSERT INTO `tblsuite` VALUES ('35', '2', '1', '102', '20', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '0', '1');
INSERT INTO `tblsuite` VALUES ('36', '2', '1', '103', '22', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '1', '1');
INSERT INTO `tblsuite` VALUES ('37', '2', '1', '104', '25', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('38', '2', '1', '201', '24', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('39', '2', '1', '202', '23', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '2', '0');
INSERT INTO `tblsuite` VALUES ('40', '2', '1', '203', '22', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '3', '0');
INSERT INTO `tblsuite` VALUES ('41', '2', '1', '204', '30', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('42', '2', '2', '101', '26', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('43', '2', '2', '102', '25', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('44', '2', '2', '103', '22', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('45', '2', '2', '104', '23', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('46', '2', '2', '201', '30', '2000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('47', '2', '2', '202', '20', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('48', '2', '2', '203', '25', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('49', '2', '2', '204', '30', '1000', '2', '2', '2', '1', '2', '好的', '/jx220108_back/upload/1657356425722.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('50', '7', '12', '205', '70', '123', '2', '1', '2', '1', '1', '是的', '/jx220108_back/upload/1657441987799.png', '1', '0');
INSERT INTO `tblsuite` VALUES ('51', '9', '12', '202', '152', '3000', '1', '1', '1', '1', '1', '北京', '/jx220108_back/upload/1657442424795.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('52', '8', '12', '201', '30', '1000', '1', '1', '2', '2', '1', '小区', '/jx220108_back/upload/1657611046906.jpg', '2', '1');
INSERT INTO `tblsuite` VALUES ('53', '8', '1', '123', '28', '600', '2', '1', '2', '2', '2', '好', '/jx220108_back/upload/1657779496224.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('54', '9', '1', '101', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('55', '9', '1', '102', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('56', '9', '1', '103', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('57', '9', '1', '104', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('58', '9', '1', '201', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('59', '9', '1', '202', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('60', '9', '1', '203', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('61', '9', '1', '204', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('62', '9', '2', '101', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('63', '9', '2', '102', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('64', '9', '2', '103', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('65', '9', '2', '104', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('66', '9', '2', '201', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('67', '9', '2', '202', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('68', '9', '2', '203', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('69', '9', '2', '204', '42', '2000', '3', '2', '1', '1', '1', '很好', '/jx220108_back/upload/1657634331350.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('70', '12', '1', '101', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('71', '12', '1', '102', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('72', '12', '1', '103', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('73', '12', '1', '104', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('74', '12', '1', '201', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('75', '12', '1', '202', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('76', '12', '1', '203', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('77', '12', '1', '204', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('78', '12', '2', '101', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('79', '12', '2', '102', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('80', '12', '2', '103', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('81', '12', '2', '104', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('82', '12', '2', '201', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '3', '0');
INSERT INTO `tblsuite` VALUES ('83', '12', '2', '202', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('84', '12', '2', '203', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('85', '12', '2', '204', '60', '1000', '2', '2', '1', '2', '1', '房子一', '/jx220108_back/upload/1657694491898.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('86', '3', '1', '102', '36', '6000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657779444820.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('87', '13', '1', '101', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('88', '13', '1', '102', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('89', '13', '1', '103', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('90', '13', '1', '104', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('91', '13', '1', '201', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '1', '0');
INSERT INTO `tblsuite` VALUES ('92', '13', '1', '202', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('93', '13', '1', '203', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('94', '13', '1', '204', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('95', '13', '2', '101', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('96', '13', '2', '102', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('97', '13', '2', '103', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('98', '13', '2', '104', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1658037715086.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('99', '13', '2', '201', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '0', '0');
INSERT INTO `tblsuite` VALUES ('100', '13', '2', '202', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '1', '0');
INSERT INTO `tblsuite` VALUES ('101', '13', '2', '203', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '1', '0');
INSERT INTO `tblsuite` VALUES ('102', '13', '2', '204', '30', '2000', '2', '1', '1', '1', '1', '房子', '/jx220108_back/upload/1657850012190.gif', '1', '0');
INSERT INTO `tblsuite` VALUES ('103', '3', '12', '303', '50', '105', '2', '1', '1', '1', '1', 'dui ', '/jx220108_back/upload/1658037646776.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('104', '1', '10', '303', '50', '100', '2', '1', '2', '2', '1', '好', '/jx220108_back/upload/1658037671543.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('105', '33', '1', '101', '20', '1000', '2', '1', '1', '1', '0', '', '/jx220108_back/upload/1658158837951.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('106', '33', '1', '102', '20', '1000', '2', '1', '1', '1', '0', '', '/jx220108_back/upload/1658158837951.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('107', '33', '1', '201', '20', '1000', '2', '1', '1', '1', '0', '', '/jx220108_back/upload/1658158837951.jpg', '3', '0');
INSERT INTO `tblsuite` VALUES ('108', '33', '1', '202', '20', '1000', '2', '1', '1', '1', '0', '', '/jx220108_back/upload/1658158837951.jpg', '1', '0');
INSERT INTO `tblsuite` VALUES ('109', '33', '2', '101', '20', '1000', '2', '1', '1', '1', '0', '', '/jx220108_back/upload/1658158837951.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('110', '33', '2', '102', '20', '1000', '2', '1', '1', '1', '0', '', '/jx220108_back/upload/1658158837951.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('111', '33', '2', '201', '20', '1000', '2', '1', '1', '1', '0', '', '/jx220108_back/upload/1658158837951.jpg', '0', '0');
INSERT INTO `tblsuite` VALUES ('112', '33', '2', '202', '20', '1000', '2', '1', '1', '1', '0', '', '/jx220108_back/upload/1658158837951.jpg', '0', '1');

-- ----------------------------
-- Table structure for tblsuiteallocation
-- ----------------------------
DROP TABLE IF EXISTS `tblsuiteallocation`;
CREATE TABLE `tblsuiteallocation` (
  `allocationId` int(11) NOT NULL AUTO_INCREMENT,
  `communityId` int(11) DEFAULT NULL,
  `tenantId` int(11) DEFAULT NULL,
  `staffId` int(11) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`allocationId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblsuiteallocation
-- ----------------------------
INSERT INTO `tblsuiteallocation` VALUES ('3', '9', '6', '1', '2022-07-11');
INSERT INTO `tblsuiteallocation` VALUES ('4', '52', '13', '1', '2022-07-12');
INSERT INTO `tblsuiteallocation` VALUES ('12', '8', '8', '1', '2022-07-12');
INSERT INTO `tblsuiteallocation` VALUES ('13', '7', '7', '1', '2022-07-13');
INSERT INTO `tblsuiteallocation` VALUES ('14', '10', '14', '1', '2022-07-13');
INSERT INTO `tblsuiteallocation` VALUES ('15', '1', '5', '1', '2022-07-13');
INSERT INTO `tblsuiteallocation` VALUES ('16', '3', '9', '1', '2022-07-13');
INSERT INTO `tblsuiteallocation` VALUES ('17', '34', '15', '1', '2022-07-18');

-- ----------------------------
-- Table structure for tbltenant
-- ----------------------------
DROP TABLE IF EXISTS `tbltenant`;
CREATE TABLE `tbltenant` (
  `tenantId` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `IDNumber` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `isValid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tenantId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbltenant
-- ----------------------------
INSERT INTO `tbltenant` VALUES ('1', '10086', 'ICy5YqxZB1uWSwcVLSNLcA==', '吴', '1355512252', '35022231112', '福建', '0', '0');
INSERT INTO `tbltenant` VALUES ('2', '1008611', 'ICy5YqxZB1uWSwcVLSNLcA==', '吴', '13599873348', '350211665592631024', '漳州', '0', '0');
INSERT INTO `tbltenant` VALUES ('3', '002', 'ICy5YqxZB1uWSwcVLSNLcA==', '吴', '13566996232', '350225635256221111', '安徽地', '0', '0');
INSERT INTO `tbltenant` VALUES ('4', '003', 'ICy5YqxZB1uWSwcVLSNLcA==', '的', '13566996232', '350211665592631024', '的', '0', '0');
INSERT INTO `tbltenant` VALUES ('5', 'test001', 'ICy5YqxZB1uWSwcVLSNLcA==', '测试1', '13596995959', '350222366956231471', '福建', '0', '0');
INSERT INTO `tbltenant` VALUES ('6', 'test002', 'ICy5YqxZB1uWSwcVLSNLcA==', '马超', '13599662233', '350211665592631024', '厦门', '0', '0');
INSERT INTO `tbltenant` VALUES ('7', 'test003', 'ICy5YqxZB1uWSwcVLSNLcA==', '马可波罗', '13566996232', '350222366956231471', '赋值', '0', '0');
INSERT INTO `tbltenant` VALUES ('8', 'test004', 'ICy5YqxZB1uWSwcVLSNLcA==', '西楚霸王', '13566223369', '350222366956231471', '方法', '0', '0');
INSERT INTO `tbltenant` VALUES ('9', 'test005', 'ICy5YqxZB1uWSwcVLSNLcA==', '马克', '13599873348', '350211665592631024', '方法', '0', '0');
INSERT INTO `tbltenant` VALUES ('10', '005', 'ICy5YqxZB1uWSwcVLSNLcA==', '无', '13599873348', '350211665592631024', '福建', '0', '0');
INSERT INTO `tbltenant` VALUES ('11', 'test006', 'ICy5YqxZB1uWSwcVLSNLcA==', '006无', '13595959595', '350222366956231471', '15', '0', '0');
INSERT INTO `tbltenant` VALUES ('12', 'test007', 'ICy5YqxZB1uWSwcVLSNLcA==', '无002', '13599873348', '350222366956231471', '15', '0', '0');
INSERT INTO `tbltenant` VALUES ('13', 'test008', 'ICy5YqxZB1uWSwcVLSNLcA==', '无005', '13566996232', '350211665592631024', '15', '0', '0');
INSERT INTO `tbltenant` VALUES ('14', 'test009', 'ICy5YqxZB1uWSwcVLSNLcA==', '无006', '13566996232', '350211665592631024', '15', '0', '0');
INSERT INTO `tbltenant` VALUES ('15', '10088', 'ICy5YqxZB1uWSwcVLSNLcA==', '008wu', '1355512252', '35022231112', '福建', '0', '0');
INSERT INTO `tbltenant` VALUES ('16', '10093', 'ICy5YqxZB1uWSwcVLSNLcA==', '008wu', '1355512252', '35022231112', '福建', '0', '0');
INSERT INTO `tbltenant` VALUES ('17', '10089', 'ICy5YqxZB1uWSwcVLSNLcA==', '009wu', '1355512252', '35022231112', '福建', '0', '0');
INSERT INTO `tbltenant` VALUES ('18', '10090', 'ICy5YqxZB1uWSwcVLSNLcA==', '041wu', '1355512252', '35022231112', '福建', '0', '0');
INSERT INTO `tbltenant` VALUES ('19', '10091', 'ICy5YqxZB1uWSwcVLSNLcA==', '011wu', '1355512252', '35022231112', '福建', '0', '0');
INSERT INTO `tbltenant` VALUES ('20', '10092', 'ICy5YqxZB1uWSwcVLSNLcA==', '012wu', '1355512252', '35022231112', '福建', '0', '0');
INSERT INTO `tbltenant` VALUES ('21', 'test1', 'ICy5YqxZB1uWSwcVLSNLcA==', '测试人员', '13599873348', '350222366956231471', '号', '0', '0');
INSERT INTO `tbltenant` VALUES ('22', 'test2', 'ICy5YqxZB1uWSwcVLSNLcA==', '测试', '13599873348', '350222366956231471', '地址', '0', '0');

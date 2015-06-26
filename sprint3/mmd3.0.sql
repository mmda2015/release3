/*
Navicat MySQL Data Transfer

Source Server         : yy
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : mmdd

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-06-15 23:06:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `friendname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1', 'tcrnez', 'zsr');
INSERT INTO `friend` VALUES ('2', 'zsr', 'tcrnez');
INSERT INTO `friend` VALUES ('3', 'tcrnez', 'ru');
INSERT INTO `friend` VALUES ('4', 'ru', 'tcrnez');
INSERT INTO `friend` VALUES ('5', 'tcrnez', 'oqejns');
INSERT INTO `friend` VALUES ('6', 'oqejns', 'tcrnez');
INSERT INTO `friend` VALUES ('7', 'tcrnez', 'hpnmqg');
INSERT INTO `friend` VALUES ('8', 'hpnmqg', 'tcrnez');
INSERT INTO `friend` VALUES ('9', 'tcrnez', 'pslull');
INSERT INTO `friend` VALUES ('10', 'pslull', 'tcrnez');
INSERT INTO `friend` VALUES ('11', 'wfphvw', 'zsr');
INSERT INTO `friend` VALUES ('12', 'zsr', 'wfphvw');
INSERT INTO `friend` VALUES ('13', 'wfphvw', 'ru');
INSERT INTO `friend` VALUES ('14', 'ru', 'wfphvw');
INSERT INTO `friend` VALUES ('15', 'wfphvw', 'ww');
INSERT INTO `friend` VALUES ('16', 'ww', 'wfphvw');
INSERT INTO `friend` VALUES ('17', 'lxiwtp', 'zsr');
INSERT INTO `friend` VALUES ('18', 'zsr', 'lxiwtp');
INSERT INTO `friend` VALUES ('19', 'gjypnr', 'zsr');
INSERT INTO `friend` VALUES ('20', 'zsr', 'gjypnr');
INSERT INTO `friend` VALUES ('21', 'gjypnr', 'ru');
INSERT INTO `friend` VALUES ('22', 'ru', 'gjypnr');
INSERT INTO `friend` VALUES ('23', 'pxyizg', 'zsr');
INSERT INTO `friend` VALUES ('24', 'zsr', 'pxyizg');
INSERT INTO `friend` VALUES ('25', 'pxyizg', 'ru');
INSERT INTO `friend` VALUES ('26', 'ru', 'pxyizg');
INSERT INTO `friend` VALUES ('27', 'pxyizg', 'ww');
INSERT INTO `friend` VALUES ('28', 'ww', 'pxyizg');
INSERT INTO `friend` VALUES ('29', 'xualsp', 'zsr');
INSERT INTO `friend` VALUES ('30', 'zsr', 'xualsp');
INSERT INTO `friend` VALUES ('31', 'xualsp', 'ru');
INSERT INTO `friend` VALUES ('32', 'ru', 'xualsp');
INSERT INTO `friend` VALUES ('33', 'xualsp', 'ww');
INSERT INTO `friend` VALUES ('34', 'ww', 'xualsp');
INSERT INTO `friend` VALUES ('35', 'xualsp', 'oqejns');
INSERT INTO `friend` VALUES ('36', 'oqejns', 'xualsp');
INSERT INTO `friend` VALUES ('37', 'mtesns', 'zsr');
INSERT INTO `friend` VALUES ('38', 'zsr', 'mtesns');
INSERT INTO `friend` VALUES ('39', 'mtesns', 'ru');
INSERT INTO `friend` VALUES ('40', 'ru', 'mtesns');
INSERT INTO `friend` VALUES ('41', 'mtesns', 'ww');
INSERT INTO `friend` VALUES ('42', 'ww', 'mtesns');
INSERT INTO `friend` VALUES ('43', 'mtesns', 'oqejns');
INSERT INTO `friend` VALUES ('44', 'oqejns', 'mtesns');
INSERT INTO `friend` VALUES ('45', 'mtesns', 'hpnmqg');
INSERT INTO `friend` VALUES ('46', 'hpnmqg', 'mtesns');
INSERT INTO `friend` VALUES ('47', 'mtesns', 'pslull');
INSERT INTO `friend` VALUES ('48', 'pslull', 'mtesns');
INSERT INTO `friend` VALUES ('49', 'feadla', 'zsr');
INSERT INTO `friend` VALUES ('50', 'zsr', 'feadla');
INSERT INTO `friend` VALUES ('51', 'ylkrcv', 'ru');
INSERT INTO `friend` VALUES ('52', 'ru', 'ylkrcv');
INSERT INTO `friend` VALUES ('53', '', 'ru');
INSERT INTO `friend` VALUES ('54', 'ru', '');
INSERT INTO `friend` VALUES ('55', '', 'gjypnr');
INSERT INTO `friend` VALUES ('56', 'gjypnr', '');
INSERT INTO `friend` VALUES ('57', 'jxbsdv', 'ww');
INSERT INTO `friend` VALUES ('58', 'ww', 'jxbsdv');
INSERT INTO `friend` VALUES ('59', 'we', 'oqejns');
INSERT INTO `friend` VALUES ('60', 'oqejns', 'we');
INSERT INTO `friend` VALUES ('61', 'we', 'wvrgke');
INSERT INTO `friend` VALUES ('62', 'wvrgke', 'we');
INSERT INTO `friend` VALUES ('63', 'a', 'aaa');
INSERT INTO `friend` VALUES ('64', 'a', 'deltqy');
INSERT INTO `friend` VALUES ('65', 'a', 'sshrjx');
INSERT INTO `friend` VALUES ('66', 'test', 'aaa');
INSERT INTO `friend` VALUES ('67', 'aaa', 'test');
INSERT INTO `friend` VALUES ('68', 'yukjqc', 'aaa');
INSERT INTO `friend` VALUES ('69', 'aaa', 'yukjqc');
INSERT INTO `friend` VALUES ('70', 'yukjqc', 'deltqy');
INSERT INTO `friend` VALUES ('71', 'deltqy', 'yukjqc');
INSERT INTO `friend` VALUES ('72', 'thucge', 'aaa');
INSERT INTO `friend` VALUES ('73', 'aaa', 'thucge');
INSERT INTO `friend` VALUES ('74', 'thucge', 'deltqy');
INSERT INTO `friend` VALUES ('75', 'deltqy', 'thucge');
INSERT INTO `friend` VALUES ('76', 'rbrvka', 'jgasqs');
INSERT INTO `friend` VALUES ('77', 'jgasqs', 'rbrvka');
INSERT INTO `friend` VALUES ('78', 'rbrvka', 'hzqgpv');
INSERT INTO `friend` VALUES ('79', 'hzqgpv', 'rbrvka');

-- ----------------------------
-- Table structure for levels
-- ----------------------------
DROP TABLE IF EXISTS `levels`;
CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of levels
-- ----------------------------

-- ----------------------------
-- Table structure for prop
-- ----------------------------
DROP TABLE IF EXISTS `prop`;
CREATE TABLE `prop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `tip` int(11) NOT NULL,
  `heart` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `money` int(11) DEFAULT NULL,
  `stime` int(8) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prop
-- ----------------------------
INSERT INTO `prop` VALUES ('12', 'zsr', '4999', '4930', '30100', null, '41');
INSERT INTO `prop` VALUES ('13', 'ru', '3', '2', '300', null, '1000');
INSERT INTO `prop` VALUES ('14', 'ww', '1', '0', '450', '4913', '38');
INSERT INTO `prop` VALUES ('15', 'oqejns', '1', '1', '300', null, '100');
INSERT INTO `prop` VALUES ('16', 'boiwnl', '50', '115', '300', null, '100');
INSERT INTO `prop` VALUES ('17', 'jelcxp', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('18', 'hpnmqg', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('19', 'ceiucu', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('20', 'tzraoz', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('21', 'mmhisn', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('22', 'kgpajh', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('23', 'pslull', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('24', 'shfojz', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('25', 'wvrgke', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('26', 'yrlsjv', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('27', 'tcrnez', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('28', 'wfphvw', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('29', 'lxiwtp', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('122', 'we', '5', '5', '300', '0', '100');
INSERT INTO `prop` VALUES ('123', 'igfxyw', '5', '5', '300', '0', '100');
INSERT INTO `prop` VALUES ('124', 'zupxdw', '5', '5', '300', '0', '100');
INSERT INTO `prop` VALUES ('125', 'uovzle', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('126', 'pogcjs', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('127', 'slvjqk', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('128', 'jgqhtb', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('129', 'mmd', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('130', 'swktnm', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('131', 'lkpmdf', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('132', 'zwkcob', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('133', 'cflyae', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('134', 'qdklbw', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('135', 'test', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('136', 'yukjqc', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('137', 'thucge', '5', '5', '300', null, '100');
INSERT INTO `prop` VALUES ('138', 'rbrvka', '5', '5', '300', null, '100');

-- ----------------------------
-- Table structure for ques
-- ----------------------------
DROP TABLE IF EXISTS `ques`;
CREATE TABLE `ques` (
  `id` int(11) NOT NULL,
  `typeMain` int(11) NOT NULL,
  `typeMainName` varchar(255) NOT NULL,
  `typeSub` int(11) NOT NULL,
  `typeSubName` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `answer4` varchar(255) NOT NULL,
  `right` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ques
-- ----------------------------
INSERT INTO `ques` VALUES ('3', '3', 'game', '1', 'dota', 'DOTA中仙女龙的新月之痕最多可以沉默地方单位几秒?', '2s', '3s', '4s', '5s', '2');
INSERT INTO `ques` VALUES ('4', '3', 'game', '1', 'dota', 'DOTA中天堂之戟附带多少闪避?', '0.15', '0.2', '0.25', '0.3', '3');
INSERT INTO `ques` VALUES ('5', '3', 'game', '1', 'dota', 'DOTA中下列技能可以反隐的有?', '海妖之歌', '石化凝视', '束缚击', '沉默', '4');
INSERT INTO `ques` VALUES ('6', '3', 'game', '1', 'dota', 'DOTA中众神之王的什么技能可以让隐形目标短暂现形?', '弧状闪电', '雷击', '剑刃风暴', '移形换影', '2');
INSERT INTO `ques` VALUES ('7', '3', 'game', '1', 'dota', 'DOTA中隐形刺客的烟幕能降低地方英雄多少的移动速度？', '0.25', '0.3', '0.35', '0.3', '1');
INSERT INTO `ques` VALUES ('8', '3', 'game', '1', 'dota', 'DOTA中恶魔巫师的英文简称', 'ES', 'Lion', 'SS', 'VS', '2');
INSERT INTO `ques` VALUES ('9', '3', 'game', '1', 'dota', 'DOTA中下列道具可以减少建筑护甲的有', '黑皇杖', '血精石', '强袭装甲', '希瓦的守护', '3');
INSERT INTO `ques` VALUES ('10', '3', 'game', '1', 'dota', 'DOTA中幽魂权杖可以用来躲避下列哪个技能', '影压', '回音击', '无敌斩', '残影', '3');
INSERT INTO `ques` VALUES ('11', '3', 'game', '1', 'dota', 'DOTA中下列技能可对建筑物造成伤害的有', '投掷', '山崩', '混沌陨石', '火焰气息', '1');
INSERT INTO `ques` VALUES ('12', '3', 'game', '1', 'dota', 'DOTA中远程英雄使用碎骨锤攻击有多少概率让敌人眩晕', '0.1', '0.15', '0.2', '0.25', '1');
INSERT INTO `ques` VALUES ('13', '3', 'game', '1', 'dota', 'DOTA中漩涡的连锁闪电最多可以跳跃几次', '2', '3', '4', '5', '2');
INSERT INTO `ques` VALUES ('14', '3', 'game', '1', 'dota', 'DOTA中智力斗篷可以提供', '3点智力', '5点智力', '10点智力', '50点智力', '1');
INSERT INTO `ques` VALUES ('15', '3', 'game', '1', 'dota', 'DOTA中下列英雄不可以自杀的是', '屠夫', '地精工程师', '地狱领主', '半人马酋长', '4');
INSERT INTO `ques` VALUES ('16', '3', 'game', '1', 'dota', 'DOTA中凤凰的超级新星最多可以承受多少次攻击', '6次', '8次', '9次', '10次', '3');
INSERT INTO `ques` VALUES ('17', '3', 'game', '1', 'dota', '敌法师是谁冠名的', '820', 'B神', 'PIS', 'vigoss', '2');
INSERT INTO `ques` VALUES ('18', '3', 'game', '1', 'dota', 'DOTA中幽鬼是一个什么类型的英雄', ' 力量型', '敏捷型', '智力型', '脑残型', '2');
INSERT INTO `ques` VALUES ('19', '3', 'game', '1', 'dota', 'DOTA中幽鬼的大招最多能够持续多少秒', '5秒', '6秒', '7秒', '8秒', '2');
INSERT INTO `ques` VALUES ('20', '3', 'game', '1', 'dota', 'DOTA中斯嘉蒂之眼可以增加多少全属性', '15', '20', '25', '30', '3');
INSERT INTO `ques` VALUES ('21', '3', 'game', '1', 'dota', 'DOTA中屠夫使用大招时发出的声音来自', '暗黑', '地府', '地狱', '地牢', '1');
INSERT INTO `ques` VALUES ('22', '3', 'game', '1', 'dota', 'DOTA中不可以打断骨灰盒恢复状态的是', '敌方英雄攻击', '地方防御塔的攻击', 'Roshan的攻击', '巫医诅咒的伤害', '4');
INSERT INTO `ques` VALUES ('23', '3', 'game', '1', 'dota', 'DOTA中军团指挥官满级的决斗赢了之后能增加多少攻击力', '15', '16', '17', '18', '4');
INSERT INTO `ques` VALUES ('24', '3', 'game', '1', 'dota', 'DOTA中羊刀可以让目标变成', '一只羊', '一只鸡', '一只松鼠', '一个毛毛球', '1');
INSERT INTO `ques` VALUES ('25', '3', 'game', '1', 'dota', 'DOTA中夜叉无需卷轴就能合成的高级装备', '散夜对剑', '分身斧', '天堂之戟', '散失之刃', '1');
INSERT INTO `ques` VALUES ('26', '3', 'game', '1', 'dota', 'Dota中阿托斯之棍能让敌方英雄减速', '0.5', '0.6', '0.7', '0.8', '2');
INSERT INTO `ques` VALUES ('27', '3', 'game', '1', 'dota', 'DOTA中穷鬼盾能加多少属性', '3点敏捷', '6点敏捷', '9点敏捷', '3点力量', '2');
INSERT INTO `ques` VALUES ('28', '3', 'game', '1', 'dota', 'Dota中逃脱匕首最多可以瞬间移动多少距离', '1000', '1100', '1200', '1300', '3');
INSERT INTO `ques` VALUES ('29', '3', 'game', '1', 'dota', 'Dota中i am the darkness是哪个英雄说的', '暗夜魔王', '深渊领主', '半人猛犸', '地狱领主', '4');
INSERT INTO `ques` VALUES ('30', '3', 'game', '1', 'dota', 'Dota中TP是什么意思', '回城', '传送', '金币', '甜品', '2');
INSERT INTO `ques` VALUES ('31', '3', 'game', '1', 'dota', 'Dota中双倍神符的效果是', '增加一倍基础攻击力', '增加两倍基础攻击力', '增加三倍基础攻击力', '增加两倍法术穿透', '1');
INSERT INTO `ques` VALUES ('32', '3', 'game', '1', 'dota', '“喂奶，孩子在哭“出自某知名选手的视频， 请问，是哪个英雄打出的这句话', 'SK', 'SNK', 'POM', 'Kael', '3');
INSERT INTO `ques` VALUES ('33', '3', 'game', '2', '英雄联盟', '英雄联盟中首领之傲的名字叫做？', '布里茨', '雷迪加尔', '厄加特', '戴安娜', '3');
INSERT INTO `ques` VALUES ('34', '3', 'game', '2', '英雄联盟', '皎月女神的难度是几颗星？', '3', '4', '5', '6', '4');
INSERT INTO `ques` VALUES ('35', '3', 'game', '2', '英雄联盟', '盲僧的玩法可以是？', 'QRQE', 'QQER', 'QQRE', 'QREQ', '1');
INSERT INTO `ques` VALUES ('36', '3', 'game', '2', '英雄联盟', '会隐身的英雄？', '艾希', '龙女 ', '火男', 'VN', '4');
INSERT INTO `ques` VALUES ('37', '3', 'game', '2', '英雄联盟', '英雄联盟中被称谓奥巴马的是哪个英雄？ ', 'ez', '亚索', '德莱文', '卢锡安', '4');
INSERT INTO `ques` VALUES ('38', '3', 'game', '2', '英雄联盟', '德玛西亚无畏先锋军团的司令是谁？', '皇子', '盖伦', '赵信', '卡特琳娜', '2');
INSERT INTO `ques` VALUES ('39', '3', 'game', '2', '英雄联盟', '英雄S4总决赛将在哪个城市举行？', '首尔', '釜山 ', '巴黎', '新加坡', '1');
INSERT INTO `ques` VALUES ('40', '3', 'game', '2', '英雄联盟', '以下谁的5个技能只有一个有伤害？', '猴子', '剑圣', '蛮王', '炸弹人', '3');
INSERT INTO `ques` VALUES ('41', '3', 'game', '2', '英雄联盟', '以下选择哪一个是亚托克斯角色的定位？', '射手', '辅助', '战士', '法师', '3');
INSERT INTO `ques` VALUES ('42', '3', 'game', '2', '英雄联盟', '英雄联盟S2世界冠军是哪只队伍？', 'WE', 'TPA', 'TSM', 'AzubuFrost', '2');
INSERT INTO `ques` VALUES ('43', '3', 'game', '2', '英雄联盟', '下列哪位职业选手是adc？', 'Uzi ', '柚子', '无状态', 'Gogoing', '1');
INSERT INTO `ques` VALUES ('44', '3', 'game', '2', '英雄联盟', '蛮王的老婆是谁？', '琴瑟仙女', '寒冰射手', '不祥之刃 ', '皮城女警', '2');
INSERT INTO `ques` VALUES ('45', '3', 'game', '2', '英雄联盟', '娜美大招范围多少？', '2750', '2780', '2880', '3150', '1');
INSERT INTO `ques` VALUES ('46', '3', 'game', '2', '英雄联盟', '下列英雄谁不是用刀攻击敌人的？', '艾瑞利娅 ', '泰隆 ', '萨科', '德莱文', '4');
INSERT INTO `ques` VALUES ('47', '3', 'game', '2', '英雄联盟', '提莫的哪个皮肤的蘑菇效果是彩蛋？', '约德尔人的一大步', '兔宝宝', '熊猫', '军情五处', '2');
INSERT INTO `ques` VALUES ('48', '3', 'game', '2', '英雄联盟', '英雄联盟是由什么公司开发的', '暴雪', '任天堂', '腾讯', 'Riot Games', '4');
INSERT INTO `ques` VALUES ('49', '3', 'game', '2', '英雄联盟', '小鱼人使用的武器是什么？', '三叉戟', '狩猎刀 ', '长剑', '斧头', '1');
INSERT INTO `ques` VALUES ('50', '3', 'game', '2', '英雄联盟', '下列《英雄联盟》英雄中，哪一位英雄没有位移技能？', '乐芙兰 ', '安妮', '菲兹', '卡特琳娜', '2');
INSERT INTO `ques` VALUES ('51', '3', 'game', '2', '英雄联盟', '《英雄联盟》中，亚索的大招要在敌方什么情况下才能使用？', '晕眩', '禁锢', '击飞', '减速', '3');
INSERT INTO `ques` VALUES ('52', '3', 'game', '2', '英雄联盟', '特朗德尔的E技能是什么？', '迷雾', '冰柱', '沼泽', '火焰', '2');
INSERT INTO `ques` VALUES ('53', '3', 'game', '2', '英雄联盟', 'LOL中下面哪个英雄不能给队友加移动速度？', '璐璐', '风女', '轮子妈', '蛮王', '4');
INSERT INTO `ques` VALUES ('54', '3', 'game', '2', '英雄联盟', '英雄联盟里英雄最高等级是多少？', '16', '18', '20', '30', '2');
INSERT INTO `ques` VALUES ('55', '3', 'game', '2', '英雄联盟', '诺克萨斯之手最多给敌人叠加几次流血效果？', '2', '3', '4', '5', '4');
INSERT INTO `ques` VALUES ('56', '3', 'game', '2', '英雄联盟', '目前大龙是游戏什么时间出现？', '10分钟', '15分钟', '20分钟', '1分55秒', '3');
INSERT INTO `ques` VALUES ('57', '3', 'game', '2', '英雄联盟', '盲僧的眼睛怎么瞎的？', '自焚烧瞎的', '被人戳瞎的', '被法术弄瞎的', '天生就是瞎的', '1');
INSERT INTO `ques` VALUES ('58', '3', 'game', '2', '英雄联盟', '末日人机中机器人会伸出几个爪子？', '2', '3', '4', '5', '2');
INSERT INTO `ques` VALUES ('59', '3', 'game', '2', '英雄联盟', '消耗品中生命药水的价格是多少', '30', '35', '40', '45', '2');
INSERT INTO `ques` VALUES ('60', '3', 'game', '2', '英雄联盟', '统治战场专用的血色之刃价格是多少', '2516', '2617', '2718', '2900', '4');
INSERT INTO `ques` VALUES ('61', '3', 'game', '2', '英雄联盟', '统治战场专用的勘探者之刃价格是多少', '837', '748', '987', '950', '4');
INSERT INTO `ques` VALUES ('62', '3', 'game', '2', '英雄联盟', '下面哪个英雄施放技能需要法力值？', '深海泰坦', '机械公敌', '盲僧', '放逐之刃', '1');
INSERT INTO `ques` VALUES ('63', '4', 'education', '1', 'GRE词汇', 'Jaunty 的中文意思是', '讨厌的', '愉快的', '疲惫的', '憔悴的', '2');
INSERT INTO `ques` VALUES ('64', '4', 'education', '1', 'GRE词汇', 'reserve 的中文意思是', '开心', '兴奋', '谨慎', '愤怒', '3');
INSERT INTO `ques` VALUES ('65', '4', 'education', '1', 'GRE词汇', 'pylon 的中文意思是', '高压电线架', '水管', '玻璃杯', '牛奶容器', '1');
INSERT INTO `ques` VALUES ('66', '4', 'education', '1', 'GRE词汇', 'unrehearsed 的中文意思是', '可估计的', '不开心的', '令人愉悦的', '未经预演的', '4');
INSERT INTO `ques` VALUES ('67', '4', 'education', '1', 'GRE词汇', 'sodden 的中文意思是', '燃烧的', '浸透了的', '美丽的', '温柔的', '2');
INSERT INTO `ques` VALUES ('68', '4', 'education', '1', 'GRE词汇', 'gash 的中文意思是', '深长的伤口', '日历', '凉茶', '袜子', '1');
INSERT INTO `ques` VALUES ('69', '4', 'education', '1', 'GRE词汇', 'testy的中文意思是', '美味的', '性急的', '开心的', '无聊的', '2');
INSERT INTO `ques` VALUES ('70', '4', 'education', '1', 'GRE词汇', 'lethargy 的中文意思是', '倒车', '集装箱', '兴奋', '昏睡', '4');
INSERT INTO `ques` VALUES ('71', '4', 'education', '1', 'GRE词汇', 'hypnotic 的中文意思是', '伤心的', '反感的', '催眠的', '美好的', '3');
INSERT INTO `ques` VALUES ('72', '4', 'education', '1', 'GRE词汇', 'appropriate 的中文意思是', '拨款', '提出', '开发', '筹集', '1');
INSERT INTO `ques` VALUES ('73', '4', 'education', '1', 'GRE词汇', 'embezzlement 的中文意思是', '捐赠', '贪污', '屈服', '运送', '2');
INSERT INTO `ques` VALUES ('74', '4', 'education', '1', 'GRE词汇', 'crumple 的中文意思是', '变形', '润湿', '干燥', '弄皱', '4');
INSERT INTO `ques` VALUES ('75', '4', 'education', '1', 'GRE词汇', 'flexible 的中文意思是', '易弯曲的', '可拆卸的', '便携的', '易碎的', '1');
INSERT INTO `ques` VALUES ('76', '4', 'education', '1', 'GRE词汇', 'aroma 的中文意思是', '美味的', '刺痛', '芳香', '令人骄傲的', '3');
INSERT INTO `ques` VALUES ('77', '4', 'education', '1', 'GRE词汇', 'perfume 的中文意思是', '香味', '美感', '恶心', '忧伤', '1');
INSERT INTO `ques` VALUES ('78', '4', 'education', '1', 'GRE词汇', 'surmount 的中文意思是', '屈服', '克服', '不服', '衣服', '2');
INSERT INTO `ques` VALUES ('79', '4', 'education', '1', 'GRE词汇', 'maxim 的中文意思是', '散文', '最大化', '大的物体', '格言', '4');
INSERT INTO `ques` VALUES ('80', '4', 'education', '1', 'GRE词汇', 'showy 的中文意思是', '鲜艳的', '美好的', '美味的', '兴奋的', '1');
INSERT INTO `ques` VALUES ('81', '4', 'education', '1', 'GRE词汇', 'schlock 的中文意思是', '昂贵的', '廉价的', '平庸的', '有锁的', '2');
INSERT INTO `ques` VALUES ('82', '4', 'education', '1', 'GRE词汇', 'plead 的中文意思是', '厌倦', '喜欢', '恳求', '愤怒', '3');
INSERT INTO `ques` VALUES ('83', '4', 'education', '1', 'GRE词汇', 'bilk 的中文意思是', '杂技', '忽视', '无视', '诈骗', '4');
INSERT INTO `ques` VALUES ('84', '4', 'education', '1', 'GRE词汇', 'searing 的中文意思是', '灼热的', '冷酷的', '美好的', '现实的', '1');
INSERT INTO `ques` VALUES ('85', '4', 'education', '1', 'GRE词汇', 'betray 的中文意思是', '产生', '背叛', '发明', '重构', '2');
INSERT INTO `ques` VALUES ('86', '4', 'education', '1', 'GRE词汇', 'contempt 的中文意思是', '重点', '秘制', '轻视', '无礼', '3');
INSERT INTO `ques` VALUES ('87', '4', 'education', '1', 'GRE词汇', 'flout 的中文意思是', '蔑视', '流动', '数字', '厌倦', '1');
INSERT INTO `ques` VALUES ('88', '4', 'education', '1', 'GRE词汇', 'stimulant 的中文意思是', '镇定剂', '感冒药', '营养物质', '兴奋剂', '4');
INSERT INTO `ques` VALUES ('89', '4', 'education', '1', 'GRE词汇', 'reproach 的中文意思是', '祝贺', '谴责', '提问', '再讨论', '2');
INSERT INTO `ques` VALUES ('90', '4', 'education', '1', 'GRE词汇', 'berate 的中文意思是', '高效', '手舞足蹈', '猛烈责骂', '劣质的', '3');
INSERT INTO `ques` VALUES ('91', '4', 'education', '1', 'GRE词汇', 'rural 的中文意思是', '乡村的', '企业', '采购', '全麦面包', '1');
INSERT INTO `ques` VALUES ('92', '4', 'education', '1', 'GRE词汇', 'abeyance 的中文意思是', '开始', '终止', '调试', '运行', '2');
INSERT INTO `ques` VALUES ('93', '4', 'education', '2', '计算机原理', '电子计算机的算术/逻辑单元、控制单元及主存储器合称为', 'CPU', 'ALU　', '主机', 'UP', '3');
INSERT INTO `ques` VALUES ('94', '4', 'education', '2', '计算机原理', '用以指定待执行指令所在地址的是', '指令寄存器', '数据计数器', '程序计数器', '累加器', '3');
INSERT INTO `ques` VALUES ('95', '4', 'education', '2', '计算机原理', '计算机存储数据的基本单位为', '比特Bit', '字节Byte', '字组Word', '以上都不对', '2');
INSERT INTO `ques` VALUES ('96', '4', 'education', '2', '计算机原理', '计算机中有关ALU的描述，哪项是正确的', '只做算术运算', '只做加法', '能存放运算结果　', 'D、以上答案都不对', '4');
INSERT INTO `ques` VALUES ('97', '4', 'education', '2', '计算机原理', '计算机系统中的存储系统是指', 'RAM存储器', 'ROM存储器', '主存', '主存和辅存', '4');
INSERT INTO `ques` VALUES ('98', '4', 'education', '2', '计算机原理', '下列属于应用软件的是', '操作系统', '编译程序', '连接程序', '文本处理', '4');
INSERT INTO `ques` VALUES ('99', '4', 'education', '2', '计算机原理', '存放欲执行指令的寄存器是', 'MAE', 'PC　', 'MDR　IR', '', '4');
INSERT INTO `ques` VALUES ('100', '4', 'education', '2', '计算机原理', '寄存器间接寻址方式中，操作数在', '通用寄存器', '堆栈', '主存单元', '存储器', '3');
INSERT INTO `ques` VALUES ('101', '4', 'education', '2', '计算机原理', '总线复用方式可以', '提高总线的传输带宽 ', '增加总线的功能', '减少总线中信号线的数量', '避免出错', '3');
INSERT INTO `ques` VALUES ('102', '4', 'education', '2', '计算机原理', '程序员编程所用的地址叫做', '逻辑地址', '物理地址', '真实地址', '伪地址', '1');
INSERT INTO `ques` VALUES ('103', '4', 'education', '2', '计算机原理', '下列器件中存取速度最快的是', 'Cache　', '主存', '寄存器', '硬盘', '3');
INSERT INTO `ques` VALUES ('104', '4', 'education', '2', '计算机原理', '一个512KB的存储器，其地址线和数据线的总和是', '17', '19', '27', '39', '3');
INSERT INTO `ques` VALUES ('105', '4', 'education', '2', '计算机原理', '表示0－999中的任意一个十进制数，最少需多少位二进制数', '10', '1000', '1024', '32', '1');
INSERT INTO `ques` VALUES ('106', '4', 'education', '2', '计算机原理', '计算机操作的最小单位时间是', '时钟周期', '指令周期', 'CPU周期', '存取周期', '1');
INSERT INTO `ques` VALUES ('107', '4', 'education', '2', '计算机原理', '程序计数器PC属于', '运算器', '控制器', '存储器', '输入设备', '2');
INSERT INTO `ques` VALUES ('108', '4', 'education', '2', '计算机原理', 'I/O采用统一编址时，进行输入输出操作的指令是', '控制指令', '访存指令', '输入输出指令', '伪指令', '2');
INSERT INTO `ques` VALUES ('109', '4', 'education', '2', '计算机原理', 'CPU响应中断的时间是', '一条指令执行结束　 ', '外设提出中断', '取指周期结束　', '外设工作完成后', '1');
INSERT INTO `ques` VALUES ('110', '4', 'education', '2', '计算机原理', '垂直型微指令的特点是', '微指令格式垂直表示  ', '控制信号经过编码产生   ', '采用微操作码 ', '一次可以完成多个操作', '3');
INSERT INTO `ques` VALUES ('111', '4', 'education', '2', '计算机原理', '8086CPU内部的数据总线有多少条', '16', '32', '64', '128', '1');
INSERT INTO `ques` VALUES ('112', '4', 'education', '2', '计算机原理', '计算机指令是由哪种代码组成', '二进制', '八进制', '十进制', '十六进制', '1');
INSERT INTO `ques` VALUES ('113', '4', 'education', '2', '计算机原理', '计算机系统中采用补码运算的目的是为了 ', '与手工运算方式保持一致', '提高运算速度', '简化计算机的设计', '提高运算的精度', '2');
INSERT INTO `ques` VALUES ('114', '4', 'education', '2', '计算机原理', '当1与0或1进行何种运算时，结果均为1 ', '逻辑‘与’ ', '逻辑‘或’ ', '逻辑‘非’ ', '逻辑‘异或’', '1');
INSERT INTO `ques` VALUES ('115', '4', 'education', '2', '计算机原理', '在计算机中，有符号数是用什么表示的 ', '原码', '二进制码', '补码', '反码', '3');
INSERT INTO `ques` VALUES ('116', '4', 'education', '2', '计算机原理', '下面哪种语言能被计算机硬件直接识别兵执行', '汇编语言', '高级语言', 'C++语言', '机器语言', '4');
INSERT INTO `ques` VALUES ('117', '4', 'education', '2', '计算机原理', '在8086系统中，程序代码存放在逻辑分段的', '堆栈段', '数据段', '代码段', '附加数据段', '3');
INSERT INTO `ques` VALUES ('118', '4', 'education', '2', '计算机原理', '在8086系统中，一个基本的总线周期包括几个时钟周期', '2', '3', '4', '5', '3');
INSERT INTO `ques` VALUES ('119', '4', 'education', '2', '计算机原理', '8086发现READY引脚变为0时，它将在当前总线周期中插入', '时钟周期', '等待周期', '空闲周期', '查询周期', '2');
INSERT INTO `ques` VALUES ('120', '4', 'education', '2', '计算机原理', 'CPU可以直接执行的指令是', '伪指令', '机器指令', '宏指令', '汇编指令', '2');
INSERT INTO `ques` VALUES ('121', '4', 'education', '2', '计算机原理', '当计算机断电后，所存信息全部消失的存储器是', '电可擦除存储器', '只读存储器', '随机存储器', '外存储器', '3');
INSERT INTO `ques` VALUES ('122', '4', 'education', '2', '计算机原理', '输入接口应该具备的基本功能是', '译码', '三态', '锁存', '爆炸', '2');
INSERT INTO `ques` VALUES ('123', '5', 'Sports', '1', 'NBA', '第一个参加NBA赛事的中国球员是谁？', '姚明', '王治郅', '刘翔', '易建联', '2');
INSERT INTO `ques` VALUES ('124', '5', 'Sports', '1', 'NBA', 'NBA湖人队历史上获得过多少次总冠军？', '10', '13', '16', '19', '3');
INSERT INTO `ques` VALUES ('125', '5', 'Sports', '1', 'NBA', '科比共有几个NBA总冠军戒指？', '3', '4', '5', '6', '3');
INSERT INTO `ques` VALUES ('126', '5', 'Sports', '1', 'NBA', '姚明是哪一年进入的NBA？', '2002', '2004', '2006', '1998', '1');
INSERT INTO `ques` VALUES ('127', '5', 'Sports', '1', 'NBA', '乔丹的绰号是', '快鸟', '大块头', '飞人', '大力士', '3');
INSERT INTO `ques` VALUES ('128', '5', 'Sports', '1', 'NBA', 'NBA劲旅老鹰队坐落于哪座城市？', '纽约', '华盛顿', '洛杉矶', '耶特兰大', '4');
INSERT INTO `ques` VALUES ('129', '5', 'Sports', '1', 'NBA', 'NBA史上有“魔术师”之称的著名球星是谁？ ', '科比', '奥尼尔', '约翰逊', '安东尼', '3');
INSERT INTO `ques` VALUES ('130', '5', 'Sports', '1', 'NBA', '2011-2012赛季NBA美职篮总冠军是哪一只球队？', '湖人', '凯尔特人', '热火', '老鹰', '3');
INSERT INTO `ques` VALUES ('131', '5', 'Sports', '1', 'NBA', '绰号为“海军上将”的NBA传奇球星是谁？ ', '波什', '大卫.罗宾逊', '安德鲁·博古特 ', '兰博', '2');
INSERT INTO `ques` VALUES ('132', '5', 'Sports', '1', 'NBA', 'NBA中，山猫队的主场在美国的哪个城市？', '底特律', '旧金山', '夏洛特 ', '德克萨斯', '3');
INSERT INTO `ques` VALUES ('133', '5', 'Sports', '1', 'NBA', '2013年1月，美国总统奥巴马接见了哪支季夺冠的NBA球队？', '热火', '火箭', '湖人', '快船', '1');
INSERT INTO `ques` VALUES ('134', '5', 'Sports', '1', 'NBA', '首次设立最佳新秀奖是在那一年', '1949年', '1950年', '1951年', '1952年', '4');
INSERT INTO `ques` VALUES ('135', '5', 'Sports', '1', 'NBA', '我们常说的NBA热火“三巨头”指的是韦德、波什和谁？', '姚明', '盖伦', '詹姆斯', '科比', '3');
INSERT INTO `ques` VALUES ('136', '5', 'Sports', '1', 'NBA', '曾经凯尔特人三巨头之一的雷阿伦目前效力于NBA哪支球队？', '快船', '马刺', '八一', '热火', '4');
INSERT INTO `ques` VALUES ('137', '5', 'Sports', '1', 'NBA', '曾效力于西雅图超音速队的肖恩坎普 的绰号是', '雨人', '火男', '小法师', '吸血鬼', '1');
INSERT INTO `ques` VALUES ('138', '5', 'Sports', '1', 'NBA', '曾效力于公牛队的丹尼斯·罗德曼的绰号是什么？', '坦克', '鲨鱼', '大虫', '快车', '3');
INSERT INTO `ques` VALUES ('139', '5', 'Sports', '1', 'NBA', '著名NBA篮球新星林书豪毕业于哪所美国大学?', '麻省理工学院', '哈佛大学 ', '加州大学', '里海大学', '2');
INSERT INTO `ques` VALUES ('140', '5', 'Sports', '1', 'NBA', 'NBA芝加哥公牛队的法国主力中锋叫什么名字? ', '诺阿', '诺曼', '诺拉', '诺菲', '1');
INSERT INTO `ques` VALUES ('141', '5', 'Sports', '1', 'NBA', 'NBA中外号“绿旋风”的凯尔特人队的主力后卫球员是哪位球星?', '泰隆', '隆多', '蒙多', '多特', '2');
INSERT INTO `ques` VALUES ('142', '5', 'Sports', '1', 'NBA', '因为努力九年终获总冠军，美国迪斯尼公司将为NBA哪一个明星拍摄传记电影？', '勒布朗·詹姆斯', '林书豪', '奥尼尔', '科比', '1');
INSERT INTO `ques` VALUES ('143', '5', 'Sports', '1', 'NBA', 'NBA巨星迈克尔·乔丹曾效力于公牛队和哪支球队？  ', '火箭', '红牛', '76人', '奇才 ', '4');
INSERT INTO `ques` VALUES ('144', '5', 'Sports', '1', 'NBA', '在美国NBA有“小甜瓜”之称的现役著名球星是谁？', '尼克斯', '乔布斯', '安东尼', '汉密尔顿', '3');
INSERT INTO `ques` VALUES ('145', '5', 'Sports', '1', 'NBA', 'NBA篮球巨星乔丹在第一次退役后成为了哪一个项目的职业运动员？', '橄榄球', '棒球 ', '足球', '乒乓球', '3');
INSERT INTO `ques` VALUES ('146', '5', 'Sports', '1', 'NBA', 'NBA主场在芝加哥的球队是？', '马刺', '恒大', '公牛', '火箭', '3');
INSERT INTO `ques` VALUES ('147', '5', 'Sports', '1', 'NBA', '投中了NBA设立三分线后的第一个三分球的时间是哪一年？', '1979', '1980', '1981', '1982', '1');
INSERT INTO `ques` VALUES ('148', '5', 'Sports', '1', 'NBA', '姚明的身高是', '216cm', '226cm', '236cm', '256cm', '2');
INSERT INTO `ques` VALUES ('149', '5', 'Sports', '1', 'NBA', '2014年，成为NBA中国官方市场合作伙伴以及NBA授权商的是', '安踏', '匹克', '李宁', '双星', '1');
INSERT INTO `ques` VALUES ('150', '5', 'Sports', '1', 'NBA', 'NBA罚球线距离篮筐', '5.1米', '5.2米', '5.3米', '5.4米', '4');
INSERT INTO `ques` VALUES ('151', '5', 'Sports', '1', 'NBA', '季后赛包括总决赛一共有几轮', '4', '5', '8', '10', '1');
INSERT INTO `ques` VALUES ('152', '5', 'Sports', '1', 'NBA', '2006年开始，参加选秀的条件提高为至少年满', '18岁', '19岁', '20岁', '21岁', '2');
INSERT INTO `ques` VALUES ('153', '5', 'Sports', '2', '世界杯', '第一届世界杯的决赛在两只南美球队之间进行，他们是', '巴西，阿根廷', '阿根廷，乌拉圭  ', '巴西，乌拉圭', '巴西，意大利', '2');
INSERT INTO `ques` VALUES ('154', '5', 'Sports', '2', '世界杯', '截止2010年南非世界杯，南美球队一共获得过多少次世界杯冠军？', '7', '8', '9', '10', '3');
INSERT INTO `ques` VALUES ('155', '5', 'Sports', '2', '世界杯', '到目前为止，世界杯的最佳射手是', '罗马里奥 ', '马拉多纳   ', '盖德穆勒', '罗纳尔多', '4');
INSERT INTO `ques` VALUES ('156', '5', 'Sports', '2', '世界杯', '罗纳尔多在世界杯上打入多少球被评为最佳射手', '13', '14', '15', '16', '3');
INSERT INTO `ques` VALUES ('157', '5', 'Sports', '2', '世界杯', '第一届世界杯在哪个国家举办的？', '阿根廷   ', '巴西', '乌拉圭', '墨西哥', '3');
INSERT INTO `ques` VALUES ('158', '5', 'Sports', '2', '世界杯', '目前阿根廷的当家球星梅西在世界杯中共打进了几个球？', '0', '1', '2', '3', '2');
INSERT INTO `ques` VALUES ('159', '5', 'Sports', '2', '世界杯', '马拉多纳在哪年的世界杯上上演了“上帝之手”和“连过五人”？', '1978', '1982', '1986', '1990', '3');
INSERT INTO `ques` VALUES ('160', '5', 'Sports', '2', '世界杯', '巴西队的“3R”组合威力强大，“3R”组合不包括哪名球员', '罗纳尔多', '里瓦尔多', '罗纳尔迪尼奥', '罗伯特卡洛斯', '4');
INSERT INTO `ques` VALUES ('161', '5', 'Sports', '2', '世界杯', '02韩日世界杯，巴西第几次夺得世界杯冠军，请问当时的队长是谁？', '罗纳尔多', '里瓦尔多', '埃莫森', '卡福', '4');
INSERT INTO `ques` VALUES ('162', '5', 'Sports', '2', '世界杯', '阿根廷第一次夺得世界杯是在哪一年？', '1930', '1950', '1978', '1986', '3');
INSERT INTO `ques` VALUES ('163', '5', 'Sports', '2', '世界杯', '1978年世界杯在哪个国家举行', '乌拉圭', ' 巴西  ', '阿根廷', '墨西哥', '3');
INSERT INTO `ques` VALUES ('164', '5', 'Sports', '2', '世界杯', ' 国际足联每届世界杯给南美区多少个参赛名额？', '3.5', '4', '4.5', '5', '3');
INSERT INTO `ques` VALUES ('165', '5', 'Sports', '2', '世界杯', '2014年巴西世界杯南美区预选赛有多少支球队参加？', '8', '9', '10', '12', '2');
INSERT INTO `ques` VALUES ('166', '5', 'Sports', '2', '世界杯', '哥伦比亚时隔16年重回世界杯，但当家球星却因伤无缘，他是？', '瓜林 ', '法尔考 ', 'J. 罗德里格斯 ', '祖尼加', '2');
INSERT INTO `ques` VALUES ('167', '5', 'Sports', '2', '世界杯', ' 2010世界杯中，有5支南美球队参赛，其中有一支无缘，它是？', '智利', '乌拉圭   ', '巴拉圭', '厄瓜多尔', '3');
INSERT INTO `ques` VALUES ('168', '5', 'Sports', '2', '世界杯', '第一届世界杯决赛的比分是', '1比0', '2比0', '3比1', '4比2', '4');
INSERT INTO `ques` VALUES ('169', '5', 'Sports', '2', '世界杯', '下列南美国家中，哪个国家举办过世界杯', '厄瓜多尔   ', '巴拉圭 ', '智利', '玻利维亚', '3');
INSERT INTO `ques` VALUES ('170', '5', 'Sports', '2', '世界杯', '那一届世界杯没有决赛', '1938年法国', '1934年意大利', ' 1950年巴西', '1954年瑞士', '3');
INSERT INTO `ques` VALUES ('171', '5', 'Sports', '2', '世界杯', '到2014年巴西世界杯，这是南美洲的国家第几次举办世界杯？', '3', '4', '5', '6', '3');
INSERT INTO `ques` VALUES ('172', '5', 'Sports', '2', '世界杯', '02年韩日世界杯有哪支南美洲球队首次参赛', '巴拉圭 ', '厄瓜多尔', '秘鲁', '哥伦比亚', '3');
INSERT INTO `ques` VALUES ('173', '5', 'Sports', '2', '世界杯', '马拉多纳在1994年最后一次参加世界杯对阵的最后一个对手是？', '希腊', '罗马尼亚  ', '尼日利亚', '保加利亚', '3');
INSERT INTO `ques` VALUES ('174', '5', 'Sports', '2', '世界杯', '02年世界杯中国队首次参赛，最终排名是？', '30', '31', '32', '33', '2');
INSERT INTO `ques` VALUES ('175', '5', 'Sports', '2', '世界杯', '截止到目前，亚洲球队的最好成绩是？', '第三名', '第四名', '第五名', '第六名', '2');
INSERT INTO `ques` VALUES ('176', '5', 'Sports', '2', '世界杯', '日本队在哪届世界杯上首次参赛？', '1990年意大利世界杯  ', '1994年美国世界杯', '1998年法国世界杯', '2002年韩日世界杯', '3');
INSERT INTO `ques` VALUES ('177', '5', 'Sports', '2', '世界杯', '2010年南非世界杯中，唯一保持不败的球队是？', '西班牙', '新西兰', ' 荷兰', '德国', '2');
INSERT INTO `ques` VALUES ('178', '5', 'Sports', '2', '世界杯', ' 世界杯上年龄最大的进球球员是？', '巴尔德拉马', '米拉  ', '阿里代伊', '哈坎苏克', '2');
INSERT INTO `ques` VALUES ('179', '5', 'Sports', '2', '世界杯', '下列哪支球队是第一个代表非洲参加世界杯的球队？', '尼日利亚', '喀麦隆', '扎伊尔', '埃及', '4');
INSERT INTO `ques` VALUES ('180', '5', 'Sports', '2', '世界杯', '中国队首次冲击世界杯是在哪届', '1954年瑞士', '1958年瑞典', '1962年智利', '1966年英国', '2');
INSERT INTO `ques` VALUES ('181', '5', 'Sports', '2', '世界杯', ' 哪一位球员打破了世界杯386分钟没有犯规的世纪记录？', ' 胡安', '罗纳尔迪尼奥', '阿德里亚诺 ', '罗纳尔多', '2');
INSERT INTO `ques` VALUES ('182', '5', 'Sports', '2', '世界杯', '哪位巴西球员在17岁时就随队夺得世界杯冠军？', '贝利', '卡卡', '罗纳尔迪尼奥', '加林查', '1');
INSERT INTO `ques` VALUES ('183', '1', 'music', '1', '大陆音乐', '对你爱爱爱不完经典老歌是谁唱的', '郭富城', '郭甫晨', '郭富城', '郭富成', '2');
INSERT INTO `ques` VALUES ('184', '1', 'music', '1', '大陆音乐', '惊鸿一面是许嵩和谁唱的', '黄龄', '张韶涵', '孙燕姿', '梁静茹', '1');
INSERT INTO `ques` VALUES ('185', '1', 'music', '1', '大陆音乐', '下面哪一首哥是歌手魏晨唱过的', '我们要改变', '狂草', '我们会改变', '我们在改变', '4');
INSERT INTO `ques` VALUES ('186', '1', 'music', '1', '大陆音乐', '《同行》是哪位歌星的歌', '陈翔', '晨曦', '魏晨', '陈晓', '1');
INSERT INTO `ques` VALUES ('187', '1', 'music', '1', '大陆音乐', '以下哪首不是筷子兄弟的歌曲', '猛龙过江', '我们的路', '小苹果', '幸福', '4');
INSERT INTO `ques` VALUES ('188', '1', 'music', '1', '大陆音乐', '下列那首歌曲不是摇滚歌手许巍创作的歌', '执着', '旅行的意义', '像风一样自由', '蓝莲花', '2');
INSERT INTO `ques` VALUES ('189', '1', 'music', '1', '大陆音乐', '《宝贝》是谁唱的', '张杰', '邓紫棋', '易烊千玺', '张亮', '3');
INSERT INTO `ques` VALUES ('190', '1', 'music', '1', '大陆音乐', '下列哪首歌谢军没有唱过', '那一夜', '草原情歌', '再一夜', '又一夜', '3');
INSERT INTO `ques` VALUES ('191', '1', 'music', '1', '大陆音乐', 'Tfboys是什么时候出道的', '41124', '41127', '41492', '41493', '3');
INSERT INTO `ques` VALUES ('192', '1', 'music', '1', '大陆音乐', '常回家看看是谁谱曲', '陈国华', '顾嘉辉', '戚建波', '刘国明', '3');
INSERT INTO `ques` VALUES ('193', '1', 'music', '1', '大陆音乐', '《飞到城市另一边》是下列哪个乐队的歌曲', '好妹妹乐队', '水木年华', '零点乐队', '筷子兄弟', '1');
INSERT INTO `ques` VALUES ('194', '1', 'music', '1', '大陆音乐', '《海绵宝宝》的词曲作者是谁', '回音哥', '许嵩', '自动产出', '汪苏泷', '4');
INSERT INTO `ques` VALUES ('195', '1', 'music', '1', '大陆音乐', '众里寻它是谁唱的', '刘若英', '戚薇', '唐嫣', '杨幂', '3');
INSERT INTO `ques` VALUES ('196', '1', 'music', '1', '大陆音乐', '李建和孙俪在央视春晚上的合作曲目是', '风吹麦浪', '传奇', '陀螺', '贝加尔湖畔', '1');
INSERT INTO `ques` VALUES ('197', '1', 'music', '1', '大陆音乐', '歌曲《耳洞》是谁唱的', '卓依婷', '陈明', '大张伟', '赵薇', '4');
INSERT INTO `ques` VALUES ('198', '1', 'music', '1', '大陆音乐', '蒋明的苏州河是写给谁的', '老娘', '宋冬野', '小米', '贾宏声', '4');
INSERT INTO `ques` VALUES ('199', '1', 'music', '1', '大陆音乐', '中国好歌曲第二季杭盖乐队极限创作的歌曲是什么', '至死不渝', '轮回', '情歌2', '等飞来', '2');
INSERT INTO `ques` VALUES ('200', '1', 'music', '1', '大陆音乐', '还珠格格主题曲“当”，第一句有几个“喔”', '四个', '五个', '六个', '七个', '2');
INSERT INTO `ques` VALUES ('201', '1', 'music', '1', '大陆音乐', '就这样，陪你一直往前走。是哪个歌手的歌', '本兮', '邓紫棋', '张杰', '曹格', '1');
INSERT INTO `ques` VALUES ('202', '1', 'music', '1', '大陆音乐', '谁在春晚唱过《风吹麦浪》', '邓紫棋', '韩磊', '李建', '邓超', '3');
INSERT INTO `ques` VALUES ('203', '1', 'music', '1', '大陆音乐', '“雪糕在你手里，融化在艳阳天”是哪首歌的歌词', '想念', '还在你身边', '倒序的时光', '宠爱', '3');
INSERT INTO `ques` VALUES ('204', '1', 'music', '1', '大陆音乐', '最长的电影是谁的歌', '王菲', '陈奕迅', '周董', '路虎', '3');
INSERT INTO `ques` VALUES ('205', '1', 'music', '1', '大陆音乐', '李宇春的最新专辑叫什么名字', '冷暖', 'rock heart', '如初', '1987我不知会遇见你', '4');
INSERT INTO `ques` VALUES ('206', '1', 'music', '1', '大陆音乐', '苏打绿的“韦瓦第计划”中发现的第二张专辑mv是在哪里拍摄的', '台北', '伦敦', '北京', '上海', '2');
INSERT INTO `ques` VALUES ('207', '1', 'music', '1', '大陆音乐', '破恨南飞是谁唱的', '筷子兄弟', '梁逸峰', '徐良', '陈奕迅', '2');
INSERT INTO `ques` VALUES ('208', '1', 'music', '1', '大陆音乐', 'Tfboys的应援色是', '蓝色', '白色', '红色', '橙色', '4');
INSERT INTO `ques` VALUES ('209', '1', 'music', '1', '大陆音乐', '“哦，这首歌给你快乐，你有没有爱上我”是那首歌歌词', '青春之爱', '爱出发', '青春修炼手册', '爱情之星', '3');
INSERT INTO `ques` VALUES ('210', '1', 'music', '1', '大陆音乐', '“开始的开始，我们都是孩子”是哪首歌的歌词', '这就是爱', '童年', '北京东路的日子', '下个路口见', '3');
INSERT INTO `ques` VALUES ('211', '1', 'music', '1', '大陆音乐', '下面哪首不是魏晨的歌', 'ladylady', '向日葵的微笑', '在一起', '分身情人', '3');
INSERT INTO `ques` VALUES ('212', '1', 'music', '1', '大陆音乐', '痛苦是要带领我，并非要抛弃我。出自哪首歌', '芊芊', '上邪', '漫长的告别', '相思引', '3');
INSERT INTO `ques` VALUES ('213', '1', 'music', '2', '港台音乐', 'SHE哪首歌邀请了阿信担任mv男主角', '紫藤花', '五月天', '恋人未满', '她还是不懂', '2');
INSERT INTO `ques` VALUES ('214', '1', 'music', '2', '港台音乐', '那首歌里有转圈圈', '美人鱼', '新地球', '木乃伊', '小酒窝', '3');
INSERT INTO `ques` VALUES ('215', '1', 'music', '2', '港台音乐', '下面哪首是曲婉婷的歌', '明年今日', '你真的准备好了吗', '阴天快乐', '我是女生', '2');
INSERT INTO `ques` VALUES ('216', '1', 'music', '2', '港台音乐', '哪首歌是林俊杰所唱', '爱你没错', '妈妈的娜鲁娃', '懂得', '心海', '2');
INSERT INTO `ques` VALUES ('217', '1', 'music', '2', '港台音乐', '“跑车走开，怎舍得将你当朋友”出自容祖儿的', '跑步机上', '未知', '啜泣', '抱抱', '4');
INSERT INTO `ques` VALUES ('218', '1', 'music', '2', '港台音乐', '与王菲并成为四大天后的其他三人不包括', '彭佳慧', '林忆莲', '叶倩文', '梅艳芳', '1');
INSERT INTO `ques` VALUES ('219', '1', 'music', '2', '港台音乐', '一路曲折折，后面的歌词是', '人生分分合合', '我不管你是谁的', '爱情拉拉扯扯', '我还是期待', '4');
INSERT INTO `ques` VALUES ('220', '1', 'music', '2', '港台音乐', '“I love you 你会否听见嘛”出自谁的歌', '林峰', '陈小春', '黎明', '张智霖', '3');
INSERT INTO `ques` VALUES ('221', '1', 'music', '2', '港台音乐', '《怒男》是谁唱的', '张学友', '刘德华', '谭咏麟', '张国荣', '4');
INSERT INTO `ques` VALUES ('222', '1', 'music', '2', '港台音乐', '张学友的妻子是', '罗美薇', '关之琳', '陈慧娴', '梅艳芳', '1');
INSERT INTO `ques` VALUES ('223', '1', 'music', '2', '港台音乐', '《追梦人》是罗大佑为纪念谁制作的', '三毛', '黄家驹', '张国荣', '梅艳芳', '1');
INSERT INTO `ques` VALUES ('224', '1', 'music', '2', '港台音乐', '“王子白马，显示神话，都不属于他”唱这首歌的人来自', '香港', '新加坡', '马来西亚', '台湾', '3');
INSERT INTO `ques` VALUES ('225', '1', 'music', '2', '港台音乐', '哪首歌不是f.i.r的歌曲', '我要飞', '我的爱', '我们的爱', 'fly away', '2');
INSERT INTO `ques` VALUES ('226', '1', 'music', '2', '港台音乐', '哪首歌不是唐禹哲唱过的', 'I\'m back', '灰色河堤', '全世界失眠', '开往明天的旅行', '3');
INSERT INTO `ques` VALUES ('227', '1', 'music', '2', '港台音乐', '我们每个人都有罪出自周杰伦的哪首歌', '夜曲', '黑色毛衣', '以父之名', '枫', '3');
INSERT INTO `ques` VALUES ('228', '1', 'music', '2', '港台音乐', '五月天使以哪首歌录制有2014年新版本', '拥抱', '伤心的人别听慢歌', '恋爱ing', '离开地球表面', '1');
INSERT INTO `ques` VALUES ('229', '1', 'music', '2', '港台音乐', '《傻笑》是周杰伦与哪位歌手合唱的', '袁咏琳', '温岚', '蔡依林', '侯佩岑', '1');
INSERT INTO `ques` VALUES ('230', '1', 'music', '2', '港台音乐', '“我要的人为何不能像我一样的那么忠诚”出自', '蔡依林', '孙燕姿', '张惠妹', '戴佩妮', '4');
INSERT INTO `ques` VALUES ('231', '1', 'music', '2', '港台音乐', '手掌心是谁唱的', '叮当', '丁当', '丁铛', '叮铛', '2');
INSERT INTO `ques` VALUES ('232', '1', 'music', '2', '港台音乐', '卫兰的E11专辑共有几首歌曲', '10', '21', '15', '11', '4');
INSERT INTO `ques` VALUES ('233', '1', 'music', '2', '港台音乐', '林俊杰自己创立了哪个品牌', 'SMG', 'PDC', 'SGMM', 'KKG', '1');
INSERT INTO `ques` VALUES ('234', '1', 'music', '2', '港台音乐', 'My love my heart是哪位歌手演唱的', '卫兰', '茜拉', '卫红', '邓紫棋', '1');
INSERT INTO `ques` VALUES ('235', '1', 'music', '2', '港台音乐', '《高调爱》是哪位歌手唱的', '阿宝', '周杰伦', '王力宏', '罗志祥', '4');
INSERT INTO `ques` VALUES ('236', '1', 'music', '2', '港台音乐', '《倒带》的原唱是', '林宥嘉', '周杰伦', '萧敬腾', '蔡依林', '2');
INSERT INTO `ques` VALUES ('237', '1', 'music', '2', '港台音乐', '哪首歌不是谢霆锋唱的', '玉蝴蝶', '沉默是金', '非走不可', '前前后后左左右右', '2');
INSERT INTO `ques` VALUES ('238', '1', 'music', '2', '港台音乐', '林俊杰的首张专辑是', '江南', '编号89757', '乐行者', '曹操', '3');
INSERT INTO `ques` VALUES ('239', '1', 'music', '2', '港台音乐', '“来年陌生的是昨日最亲的某某”这句歌词来自以下哪首歌', '富士山下', '你瞒我瞒', '最佳损友', '七友', '3');
INSERT INTO `ques` VALUES ('240', '1', 'music', '2', '港台音乐', '罗志祥和王心凌合作的一首歌叫', '陪我到以后', '陪着你走', '陪你到最后', '陪我到最后', '1');
INSERT INTO `ques` VALUES ('241', '1', 'music', '2', '港台音乐', '周杰伦的烟花易冷被哪位男歌手翻唱过', '林志炫', '古巨基', '张宇', '张杰', '1');
INSERT INTO `ques` VALUES ('242', '1', 'music', '2', '港台音乐', '《传奇》的原唱是', '张学友', '陈奕迅', '李建', '王铮亮', '3');
INSERT INTO `ques` VALUES ('243', '2', 'movie', '1', '哈利波特', '罗恩的哥哥理查是做什么工作的', '魔法部职员', '驯养火龙', '古灵阁职员', '魁地奇队的找球手', '3');
INSERT INTO `ques` VALUES ('244', '2', 'movie', '1', '哈利波特', '在电影中谁诱骗了马尔福给了多比一只袜子使其重获自由', '罗恩', '哈利', '赫敏', '海格', '2');
INSERT INTO `ques` VALUES ('245', '2', 'movie', '1', '哈利波特', '奇洛心底的欲望是什么', '成为最厉害的魔法师', '杀了哈利', '得到魔法石', '当上校长', '3');
INSERT INTO `ques` VALUES ('246', '2', 'movie', '1', '哈利波特', '电影中哈利等人喝的变身水是谁制作出来的', '海格', '赫敏', '麦格教授', '邓布利多', '2');
INSERT INTO `ques` VALUES ('247', '2', 'movie', '1', '哈利波特', '在禁林中，谁从蜘蛛的围困中将哈利和罗恩救出？', '海格的狗牙', '罗恩老爸的汽车', '邓布利多的凤凰', '赫敏', '2');
INSERT INTO `ques` VALUES ('248', '2', 'movie', '1', '哈利波特', '哈利波特的眼睛是什么颜色的', '绿色', '黄色', '黑色', '紫色', '1');
INSERT INTO `ques` VALUES ('249', '2', 'movie', '1', '哈利波特', '哈利的教父是哪一季死的？', '第五季', '第四季', '第六季', '第三季', '1');
INSERT INTO `ques` VALUES ('250', '2', 'movie', '1', '哈利波特', '在哈利波特电影的第一季中哈利波特表现出了什么特殊能力？', '蛇佬腔', '化石点金', '飞翔', '变身', '1');
INSERT INTO `ques` VALUES ('251', '2', 'movie', '1', '哈利波特', '哈利波特里哈利用的守护神之咒是什么小动物？', '马', '蛇', '鹿', '兔子', '3');
INSERT INTO `ques` VALUES ('252', '2', 'movie', '1', '哈利波特', '下列哪项魔法不能在霍格沃茨魔法学院使用？', '移形换影', '开门咒', '漂浮咒', '荧光咒', '1');
INSERT INTO `ques` VALUES ('253', '2', 'movie', '1', '哈利波特', '霍格沃茨学院的管理员叫什么？', '海格', '费尔奇 ', '邓布利多', '克拉', '2');
INSERT INTO `ques` VALUES ('254', '2', 'movie', '1', '哈利波特', '在魔法学院与哈利和罗恩都是好朋友的女生是', '金妮', '汉娜', '赫敏', '秋张', '3');
INSERT INTO `ques` VALUES ('255', '2', 'movie', '1', '哈利波特', '多比的武器是什么？', '魔杖', '没有武器', '小精灵宝剑', '匕首', '2');
INSERT INTO `ques` VALUES ('256', '2', 'movie', '1', '哈利波特', '哈利第一次在那见到小天狼星', '女贞路外广场', '格兰芬多休息室', '尖叫棚屋', '魁地奇球场', '1');
INSERT INTO `ques` VALUES ('257', '2', 'movie', '1', '哈利波特', '圣诞节时罗恩得到了什么礼物', '魔法棒', '扫帚', '一件毛衣', '隐形衣', '2');
INSERT INTO `ques` VALUES ('258', '2', 'movie', '1', '哈利波特', '家养小精灵多比是为谁家服务的', '罗恩韦斯莱', '德拉科马尔福', '阿不思邓布利多', '小天狼星布莱克', '2');
INSERT INTO `ques` VALUES ('259', '2', 'movie', '1', '哈利波特', '哈利一行在魔法森林中，谁与他们分开了', '哈利', '赫敏', '罗恩', '马尔福', '3');
INSERT INTO `ques` VALUES ('260', '2', 'movie', '1', '哈利波特', '第一部中三人组最初是在哪里见到尼可勒梅这个名字的', '巧克力蛙的卡片', '赫敏的书', '禁书区的书', '海格的预言家日报剪纸', '1');
INSERT INTO `ques` VALUES ('261', '2', 'movie', '1', '哈利波特', '哈利和罗恩在蜘蛛洞中遇到什么麻烦？', '被千万蜘蛛盯上', '魔法杖遗失', '和队友走散', '找不到出口', '1');
INSERT INTO `ques` VALUES ('262', '2', 'movie', '1', '哈利波特', '电影中哈利入学后第一次收到的邮件是什么？', '扫帚', '校服', '魔法杖', '一封信', '1');
INSERT INTO `ques` VALUES ('263', '2', 'movie', '1', '哈利波特', '电影中那条眼镜蛇是什么颜色的？', '黑色', '红色', '绿色', '棕色', '3');
INSERT INTO `ques` VALUES ('264', '2', 'movie', '1', '哈利波特', '哈利最后是从谁的手里收到魔法学校的入学信？', '克拉', '邓布利多', '小天狼星布莱克', '海格', '4');
INSERT INTO `ques` VALUES ('265', '2', 'movie', '1', '哈利波特', '电影中哈利是怎么战胜奇洛的？', '用剑刺死', '将他毒死', '将他淹死', '将他石化', '4');
INSERT INTO `ques` VALUES ('266', '2', 'movie', '1', '哈利波特', '哈利波特中提到的中国城市', '上海', '北京', '铁岭', '广州', '2');
INSERT INTO `ques` VALUES ('267', '2', 'movie', '1', '哈利波特', '电影中是谁把哈利带到了对角巷？', '小天狼星', '多比', '海格', '马尔福', '3');
INSERT INTO `ques` VALUES ('268', '2', 'movie', '1', '哈利波特', '很高明，但很可怕”说的是谁？', '赫敏', '罗恩', '哈利', '韦斯莱', '1');
INSERT INTO `ques` VALUES ('269', '2', 'movie', '1', '哈利波特', '格兰芬多三人组是哪三个人？', '哈利、海格、罗恩', '哈利、赫敏、韦斯莱', '罗恩、赫敏、罗恩', '哈利、赫敏、罗恩', '4');
INSERT INTO `ques` VALUES ('270', '2', 'movie', '1', '哈利波特', '小天狼星的猫头鹰有什么特点？', '飞的很快', '会说话', '爱咬人', '吃的很多', '3');
INSERT INTO `ques` VALUES ('271', '2', 'movie', '1', '哈利波特', '哈利波特里面家养小精灵多比是怎么死的？', '被施了魔法', '被刀戳死', '从悬崖跌落摔死', '毒死的', '2');
INSERT INTO `ques` VALUES ('272', '2', 'movie', '1', '哈利波特', '赫敏出事时手里拿着什么？', '魔法杖', '镜子', '石头', '书', '2');
INSERT INTO `ques` VALUES ('273', '2', 'movie', '2', '速度与激情7', '政府要多米尼克帮他们做什么', '致命武器', '寻找追踪器', '机密文件', '超级跑车', '2');
INSERT INTO `ques` VALUES ('274', '2', 'movie', '2', '速度与激情7', '布莱恩的团队把车子降落在哪里', '阿布扎比', '纽约', '中东', '阿塞拜疆', '4');
INSERT INTO `ques` VALUES ('275', '2', 'movie', '2', '速度与激情7', '影片中的红色Lykan超跑全球限量多少部', '7', '8', '9', '10', '1');
INSERT INTO `ques` VALUES ('276', '2', 'movie', '2', '速度与激情7', '多米尼克在高度还有多少的时候打开了降落伞', '800', '1000', '1200', '1400', '2');
INSERT INTO `ques` VALUES ('277', '2', 'movie', '2', '速度与激情7', '电影最后两辆车在公路上的背景音乐你知道是什么歌吗', 'My Angel ', 'I Will Return ', 'See You Again', 'Ride Out ', '3');
INSERT INTO `ques` VALUES ('278', '2', 'movie', '2', '速度与激情7', '在《速度与激情2》中布莱恩的卧底身份怎样了', '被击穿了', '受到了怀疑', '一点都没被发觉', '电影中没有说', '1');
INSERT INTO `ques` VALUES ('279', '2', 'movie', '2', '速度与激情7', '多米尼克和布莱恩为什么开车冲进另一座大厦里', '快速到达目的地', '为了快速逃跑', '追求刺激', '车子没有刹车', '4');
INSERT INTO `ques` VALUES ('280', '2', 'movie', '2', '速度与激情7', '《速度与激情7》若发生在中国大城市里，飙车时最有可能发生', '堵车，飚不起来', '被警察拦截', '车毁人亡', '被“碰瓷”', '1');
INSERT INTO `ques` VALUES ('281', '2', 'movie', '2', '速度与激情7', '肖在警察局放的炸弹是什么形状的', '圆形', '正方形', '长方形', '菱形', '1');
INSERT INTO `ques` VALUES ('282', '2', 'movie', '2', '速度与激情7', '红色Lklan超跑值多少钱', '320万美元', '340万美元', '360万美元', '400万美元', '2');
INSERT INTO `ques` VALUES ('283', '2', 'movie', '2', '速度与激情7', '霍布斯递一份什么给埃莱娜', '机密文件', '辞职信', '地图', '推荐信', '4');
INSERT INTO `ques` VALUES ('284', '2', 'movie', '2', '速度与激情7', '《速度与激情7》在中国上映首日的票房是', '3.81亿元', '3.91亿元', '4.91亿元', '3.92亿元', '2');
INSERT INTO `ques` VALUES ('285', '2', 'movie', '2', '速度与激情7', '在天台上布莱恩他们商议是什么', '用奥康纳作为诱饵', '用莱蒂作为诱饵', '用拉姆塞作为诱饵', '用霍布斯做诱饵', '3');
INSERT INTO `ques` VALUES ('286', '2', 'movie', '2', '速度与激情7', '多米尼克霍布斯火攻时他开车去做了什么', '救人', '逃跑', '帮助夺回天眼', '帮助火攻', '1');
INSERT INTO `ques` VALUES ('287', '2', 'movie', '2', '速度与激情7', '《速度与激情7》是关于什么的故事', '反派复仇', '拯救世界', '惩奸除恶', '激情赛车', '1');
INSERT INTO `ques` VALUES ('288', '2', 'movie', '2', '速度与激情7', '《速度与激情7》的导演是谁', '李安', '史蒂文·斯皮尔伯格', '詹姆斯·温', '詹姆斯·卡梅隆', '3');
INSERT INTO `ques` VALUES ('289', '2', 'movie', '2', '速度与激情7', '韩死在哪里', '纽约', '东京', '北京', '阿塞拜疆', '2');
INSERT INTO `ques` VALUES ('290', '2', 'movie', '2', '速度与激情7', '霍布斯住院后说的第一句话是', 'oh，my god', 'help me', 'run！run！', 'dom', '4');
INSERT INTO `ques` VALUES ('291', '2', 'movie', '2', '速度与激情7', '米娅为什么换房子', '房子被炸了', '被人骚扰', '房子漏水', '工作需求', '1');
INSERT INTO `ques` VALUES ('292', '2', 'movie', '2', '速度与激情7', '《速度与激情7》开始时，多米尼克用什么方式帮米歇尔恢复记忆', '让她去见朋友', '带她去旅游', '让她去赛车', '带她看她自己的墓', '3');
INSERT INTO `ques` VALUES ('293', '2', 'movie', '2', '速度与激情7', '霍布斯的身份是', '特工', '外交安全局行动组长官', '特警', '平民', '2');
INSERT INTO `ques` VALUES ('294', '2', 'movie', '2', '速度与激情7', '为了不拖累奥康纳，米娅隐瞒了什么秘密', '自己怀孕的消息', '胎儿流产的消息', '自己重病的消息', '出卖了奥康纳', '1');
INSERT INTO `ques` VALUES ('295', '2', 'movie', '2', '速度与激情7', '速7片尾打出的保罗沃克精彩片段剪以辑悼念，它包括', '第7部', '第1到6部', '第1到7部', '第2到6部', '3');
INSERT INTO `ques` VALUES ('296', '2', 'movie', '2', '速度与激情7', '片中精彩刺激的飙车戏取景于何处', '东京', '纽约', '中东', '阿布扎比', '4');
INSERT INTO `ques` VALUES ('297', '2', 'movie', '2', '速度与激情7', '速度与激情系列7部历时多少年', '12年', '13年', '14年', '15年', '3');
INSERT INTO `ques` VALUES ('298', '2', 'movie', '2', '速度与激情7', '在韩出事的现场除了找到照片之外还有什么', '钱包', '十字架项链', '手镯', '作案工具', '2');
INSERT INTO `ques` VALUES ('299', '2', 'movie', '2', '速度与激情7', '道恩-强森毕业学院是', '迈阿密大学', '牛津大学', '斯坦福大学', '纽约大学', '1');
INSERT INTO `ques` VALUES ('300', '2', 'movie', '2', '速度与激情7', '托莱多驾驶一辆红色Lykan超跑连续穿越几座摩天大楼', '2', '3', '4', '5', '2');
INSERT INTO `ques` VALUES ('301', '2', 'movie', '2', '速度与激情7', '谁砸了托莱多家的房子', '德卡特·肖的手下', '他的邻居', '美国警察', '德卡特·肖', '4');
INSERT INTO `ques` VALUES ('302', '2', 'movie', '2', '速度与激情7', '谁杀死了韩', '德卡特·肖', '德卡特·肖的手下', '美国警察', '街头混混', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `head` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'a', 'a', '3001', null);
INSERT INTO `user` VALUES ('2', 'aaa', 'aaa', '3000', null);
INSERT INTO `user` VALUES ('3', 'deltqy', '131999', '3000', '0');
INSERT INTO `user` VALUES ('4', 'jgasqs', '373543', '3000', '0');
INSERT INTO `user` VALUES ('5', 'hzqgpv', '769674', '3000', '0');
INSERT INTO `user` VALUES ('6', 'sshrjx', '382444', '3000', '0');
INSERT INTO `user` VALUES ('7', 'xhzbpz', '127272', '3000', '0');
INSERT INTO `user` VALUES ('8', 'ngwvhx', '483882', '3000', '0');
INSERT INTO `user` VALUES ('9', 'idnzlc', '763295', '3000', '0');
INSERT INTO `user` VALUES ('10', 'fbmfzh', '527192', '3000', '0');
INSERT INTO `user` VALUES ('11', 'nupqbd', '399884', '3000', '0');
INSERT INTO `user` VALUES ('12', 'hplhuz', '696334', '3000', '0');
INSERT INTO `user` VALUES ('13', 'wunnix', '571888', '3000', '0');
INSERT INTO `user` VALUES ('14', 'ngtglp', '821322', '3000', '0');
INSERT INTO `user` VALUES ('15', 'uovzle', '844867', '3001', null);
INSERT INTO `user` VALUES ('16', 'pogcjs', '211311', '3000', null);
INSERT INTO `user` VALUES ('17', 'slvjqk', '728134', '3000', null);
INSERT INTO `user` VALUES ('18', 'jgqhtb', '618936', '3000', null);
INSERT INTO `user` VALUES ('19', 'mmd', 'mmd', '3000', null);
INSERT INTO `user` VALUES ('20', 'swktnm', '283553', '3000', null);
INSERT INTO `user` VALUES ('21', 'lkpmdf', '851867', '3000', null);
INSERT INTO `user` VALUES ('22', 'zwkcob', '282586', '3001', null);
INSERT INTO `user` VALUES ('23', 'cflyae', '925126', '3001', null);
INSERT INTO `user` VALUES ('24', 'qdklbw', '316749', '3000', null);
INSERT INTO `user` VALUES ('25', 'test', 'test', '3000', null);
INSERT INTO `user` VALUES ('26', 'yukjqc', '692839', '3000', null);
INSERT INTO `user` VALUES ('27', 'thucge', '116271', '3001', null);
INSERT INTO `user` VALUES ('28', 'rbrvka', '724624', '3000', null);

/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : maoyan

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2018-12-18 17:37:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `films`
-- ----------------------------
DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
  `name` varchar(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `released` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `people` int(11) NOT NULL,
  `box_office` bigint(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of films
-- ----------------------------
INSERT INTO `films` VALUES ('21克拉', '喜剧,爱情', '中国大陆', '96分钟', '2018-04-20', '8.3分', '122000', '110000000');
INSERT INTO `films` VALUES ('24小时：末路重生', '犯罪,动作', '美国,中国大陆,南非', '93分钟', '2018-01-26', '7.9分', '11425', '9770000');
INSERT INTO `films` VALUES ('S4侠降魔记', '喜剧', '中国大陆', '98分钟', '2018-01-26', '7.9分', '2647', '3630000');
INSERT INTO `films` VALUES ('一个人的课堂', '剧情,家庭', '中国大陆', '105分钟', '2018-01-16', '9.1分', '1350', '1370000');
INSERT INTO `films` VALUES ('一出好戏', '剧情,喜剧', '中国大陆', '134分钟', '2018-08-10', '8.3分', '896000', '1355000000');
INSERT INTO `films` VALUES ('一百年很长吗', '纪录片', '中国大陆', '106分钟', '2018-12-01', '8.2分', '1423', '1200000');
INSERT INTO `films` VALUES ('一纸婚约', '剧情,爱情', '中国大陆', '91分钟', '2018-06-08', '6.4分', '2183', '750000');
INSERT INTO `films` VALUES ('七号公馆', '喜剧,惊悚', '中国大陆', '94分钟', '2018-05-11', '4.9分', '1416', '620000');
INSERT INTO `films` VALUES ('三只小猪2', '动画', '中国大陆', '70分钟', '2018-12-08', '8.3分', '24032', '26680000');
INSERT INTO `films` VALUES ('三国杀·幻', '爱情,动作,悬疑', '中国大陆', '94分钟', '2018-11-09', '7.0分', '2792', '1050000');
INSERT INTO `films` VALUES ('三块广告牌', '剧情,犯罪', '美国,英国', '115分钟', '2018-03-02', '8.6分', '34304', '64980000');
INSERT INTO `films` VALUES ('东北偏北', '剧情,喜剧,悬疑', '中国大陆', '103分钟', '2015-12-11', '7.1分', '1001', '930000');
INSERT INTO `films` VALUES ('两个俏公主', '动画,奇幻,家庭', '中国大陆', '89分钟', '2018-11-10', '7.6分', '5034', '2220000');
INSERT INTO `films` VALUES ('中国蓝盔', '剧情,动作,战争', '中国大陆', '96分钟', '2018-11-23', '7.6分', '17757', '16950000');
INSERT INTO `films` VALUES ('为你写诗', '喜剧,爱情,奇幻', '中国大陆', '105分钟', '2018-10-26', '7.9分', '13101', '12780000');
INSERT INTO `films` VALUES ('二十岁', '剧情,喜剧', '中国大陆', '98分钟', '2018-11-30', '6.9分', '4408', '3160000');
INSERT INTO `films` VALUES ('亡命救赎', '动作,犯罪', '法国', '88分钟', '2018-11-30', '8.0分', '9593', '14110000');
INSERT INTO `films` VALUES ('亲爱的，我要和别人结婚了', '爱情,灾难', '中国大陆', '92分钟', '2018-05-12', '8.1分', '5036', '1940000');
INSERT INTO `films` VALUES ('人怕出名猪怕壮', '喜剧', '中国大陆', '97分钟', '2018-02-20', '8.2分', '1273', '8380000');
INSERT INTO `films` VALUES ('伊阿索密码', '惊悚,悬疑', '中国大陆', '88分钟', '2018-06-22', '6.8分', '2003', '1310000');
INSERT INTO `films` VALUES ('传奇的诞生', '剧情', '美国', '107分钟', '2018-09-07', '9.3分', '21989', '28280000');
INSERT INTO `films` VALUES ('低压槽：欲望之城', '动作,犯罪', '中国大陆,中国香港', '112分钟', '2018-04-28', '7.2分', '31468', '34900000');
INSERT INTO `films` VALUES ('你好，之华', '剧情,爱情', '中国大陆', '114分钟', '2018-11-09', '7.9分', '39498', '80040000');
INSERT INTO `films` VALUES ('你美丽了我的人生', '爱情,歌舞', '中国大陆', '91分钟', '2018-11-02', '8.9分', '3637', '3630000');
INSERT INTO `films` VALUES ('侏罗纪世界2', '动作,冒险,科幻', '美国', '128分钟', '2018-06-15', '8.6分', '917000', '1696000000');
INSERT INTO `films` VALUES ('兄弟班', '剧情,喜剧', '中国香港,中国大陆', '102分钟', '2018-07-20', '8.6分', '3959', '1910000');
INSERT INTO `films` VALUES ('光影之战', '剧情', '中国大陆', '96分钟', '2017-10-04', '6.3分', '1621', '880000');
INSERT INTO `films` VALUES ('克隆人', '悬疑,科幻,犯罪', '英国,中国大陆,波多黎各,美国', '107分钟', '2018-11-23', '8.4分', '4206', '5290000');
INSERT INTO `films` VALUES ('公牛历险记', '喜剧,动画,冒险', '美国', '108分钟', '2018-01-19', '9.1分', '101000', '172000000');
INSERT INTO `films` VALUES ('冒牌搭档', '喜剧', '中国大陆', '86分钟', '2018-11-30', '5.4分', '1411', '1370000');
INSERT INTO `films` VALUES ('冬', '剧情', '中国大陆', '77分钟', '2016-07-08', '8.4分', '875', '330000');
INSERT INTO `films` VALUES ('冰封侠:时空行者', '剧情,动作', '中国大陆,中国香港', '87分钟', '2018-11-02', '4.3分', '48049', '34490000');
INSERT INTO `films` VALUES ('冰封迷案', '惊悚,悬疑', '中国大陆', '95分钟', '2018-04-20', '5.8分', '790', '520000');
INSERT INTO `films` VALUES ('冰雪女王3：火与冰', '喜剧,动画,冒险', '俄罗斯', '90分钟', '2018-04-05', '8.5分', '50028', '74220000');
INSERT INTO `films` VALUES ('冷恋时代', '喜剧,爱情', '中国大陆', '93分钟', '2018-09-21', '7.3分', '1413', '3350000');
INSERT INTO `films` VALUES ('凌晨两点半', '恐怖,惊悚', '中国大陆', '86分钟', '2018-04-13', '2.7分', '7310', '1870000');
INSERT INTO `films` VALUES ('凤凰城遗忘录', '悬疑,科幻', '美国', '87分钟', '2018-06-22', '6.4分', '893', '750000');
INSERT INTO `films` VALUES ('初恋浅规则', '爱情', '中国大陆', '90分钟', '2012-05-11', '2.9分', '60', '1220000');
INSERT INTO `films` VALUES ('功夫联盟', '动作,喜剧,爱情', '中国大陆', '102分钟', '2018-10-26', '7.3分', '16007', '17970000');
INSERT INTO `films` VALUES ('动物世界', '动作,悬疑,冒险', '中国大陆,美国', '132分钟', '2018-06-29', '8.5分', '501000', '509999999');
INSERT INTO `films` VALUES ('勇敢者游戏：决战丛林', '动作,冒险', '美国', '119分钟', '2018-01-12', '8.6分', '302000', '492000000');
INSERT INTO `films` VALUES ('北方一片苍茫', '剧情', '中国大陆', '113分钟', '2018-07-20', '8.1分', '1898', '730000');
INSERT INTO `films` VALUES ('十二公民', '剧情,悬疑,犯罪', '中国大陆', '106分钟', '2015-05-15', '8.1分', '21232', '13980000');
INSERT INTO `films` VALUES ('千锤百炼', '运动,纪录片', '加拿大,中国大陆,芬兰,日本,英国', '89分钟', '2013-12-20', '7.7分', '46', '120000');
INSERT INTO `films` VALUES ('午夜十二点', '恐怖,惊悚', '中国大陆', '87分钟', '2018-04-28', '4.4分', '6221', '2360000');
INSERT INTO `films` VALUES ('午夜幽灵', '恐怖,惊悚,悬疑', '中国大陆', '79分钟', '2018-10-12', '3.8分', '6448', '3370000');
INSERT INTO `films` VALUES ('南极之恋', '爱情,冒险', '中国大陆', '114分钟', '2018-02-01', '8.9分', '200000', '234000000');
INSERT INTO `films` VALUES ('卧底巨星', '喜剧,动作', '中国大陆,中国香港', '98分钟', '2018-01-12', '6.7分', '50065', '39280000');
INSERT INTO `films` VALUES ('厉害了，我的国', '纪录片', '中国大陆', '90分钟', '2018-03-02', '9.6分', '115000', '480000000');
INSERT INTO `films` VALUES ('厕所英雄', '剧情,爱情', '印度', '150分钟', '2018-06-08', '8.5分', '64996', '94610000');
INSERT INTO `films` VALUES ('反贪风暴3', '剧情,动作,犯罪', '中国大陆,中国香港', '100分钟', '2018-09-14', '8.8分', '212000', '443000000');
INSERT INTO `films` VALUES ('古剑奇谭之流月昭明', '奇幻,动作', '中国大陆', '105分钟', '2018-10-01', '7.7分', '15088', '14120000');
INSERT INTO `films` VALUES ('古墓丽影：源起之战', '动作,冒险', '美国', '118分钟', '2018-03-16', '8.3分', '304000', '497000000');
INSERT INTO `films` VALUES ('吃货宇宙', '喜剧,动画,科幻', '中国大陆', '89分钟', '2018-06-16', '8.0分', '4051', '4860000');
INSERT INTO `films` VALUES ('名侦探柯南：零的执行人', '动画,动作,悬疑', '日本', '111分钟', '2018-11-09', '8.4分', '110000', '127000000');
INSERT INTO `films` VALUES ('后来的我们', '剧情,爱情', '中国大陆,中国台湾', '120分钟', '2018-04-28', '8.3分', '1283000', '1361000000');
INSERT INTO `films` VALUES ('告诉他们，我随白鹤去了', '剧情', '中国大陆', '108分钟', '2018-01-01', '7.4分', '55', '80000');
INSERT INTO `films` VALUES ('命运速递', '剧情,喜剧,犯罪', '中国大陆', '90分钟', '2018-05-25', '7.2分', '1528', '1410000');
INSERT INTO `films` VALUES ('哆啦A梦：大雄的金银岛', '动画,冒险', '日本', '109分钟', '2018-06-01', '8.2分', '128000', '209000000');
INSERT INTO `films` VALUES ('哥斯拉：怪兽行星', '动画,动作,科幻', '日本', '88分钟', '2018-09-21', '7.9分', '2283', '1620000');
INSERT INTO `films` VALUES ('唐人街探案2', '喜剧,动作,悬疑', '中国大陆', '121分钟', '2018-02-16', '9.0分', '2315000', '3397999999');
INSERT INTO `films` VALUES ('嗝嗝老师', '剧情,喜剧', '印度', '117分钟', '2018-10-12', '9.4分', '102000', '149000000');
INSERT INTO `films` VALUES ('嘻哈英熊', '喜剧,动画,冒险', '中国大陆', '86分钟', '2018-10-04', '8.7分', '3946', '3810000');
INSERT INTO `films` VALUES ('因果启示录', '剧情', '中国大陆', '90分钟', '2018-06-08', '8.0分', '1832', '1330000');
INSERT INTO `films` VALUES ('坏爸爸', '剧情,家庭', '中国大陆', '92分钟', '2018-02-02', '8.4分', '13608', '24480000');
INSERT INTO `films` VALUES ('塔洛', '剧情', '中国大陆', '120分钟', '2017-08-01', '8.5分', '1378', '1120000');
INSERT INTO `films` VALUES ('复仇者联盟3：无限战争', '动作,冒险,科幻', '美国', '150分钟', '2018-05-11', '8.9分', '1587000', '2390000000');
INSERT INTO `films` VALUES ('大三儿', '纪录片', '中国大陆', '106分钟', '2018-08-20', '8.8分', '1881', '1300000');
INSERT INTO `films` VALUES ('大世界', '喜剧,动画,犯罪', '中国大陆', '77分钟', '2018-01-12', '7.1分', '2769', '2620000');
INSERT INTO `films` VALUES ('大坏狐狸的故事', '动画,家庭', '法国', '83分钟', '2018-03-16', '8.3分', '9572', '16090000');
INSERT INTO `films` VALUES ('大寒', '剧情,战争', '中国大陆', '110分钟', '2018-08-14', '9.4分', '4085', '6700000');
INSERT INTO `films` VALUES ('大师兄', '喜剧,动作', '中国大陆,中国香港', '100分钟', '2018-08-24', '8.6分', '103000', '146000000');
INSERT INTO `films` VALUES ('大闹西游', '喜剧,动画,家庭', '中国大陆', '92分钟', '2018-09-22', '8.3分', '20068', '37850000');
INSERT INTO `films` VALUES ('天津闲人', '剧情,喜剧', '中国大陆', '90分钟', '2012-08-18', '8.1分', '27', '0');
INSERT INTO `films` VALUES ('天籁梦想', '剧情', '中国大陆', '85分钟', '2018-01-09', '8.8分', '1568', '330000');
INSERT INTO `films` VALUES ('太空救援', '动作,冒险,科幻', '俄罗斯', '104分钟', '2018-01-12', '8.3分', '18103', '16860000');
INSERT INTO `films` VALUES ('头号玩家', '动作,冒险,科幻', '美国', '140分钟', '2018-03-30', '9.0分', '922000', '1397000000');
INSERT INTO `films` VALUES ('夺命来电', '恐怖,灾难', '美国', '95分钟', '2018-04-13', '6.6分', '1919', '1220000');
INSERT INTO `films` VALUES ('奇葩朵朵', '喜剧,爱情', '中国大陆', '98分钟', '2018-04-04', '8.1分', '35686', '30210000');
INSERT INTO `films` VALUES ('奇迹男孩', '剧情,家庭', '美国,中国香港', '114分钟', '2018-01-19', '9.2分', '128000', '192000000');
INSERT INTO `films` VALUES ('妈妈咪呀2', '喜剧,歌舞', '美国', '114分钟', '2018-08-03', '8.8分', '4039', '4150000');
INSERT INTO `films` VALUES ('妈妈咪鸭', '动画,冒险,家庭', '中国大陆,美国', '90分钟', '2018-03-09', '8.8分', '32030', '37230000');
INSERT INTO `films` VALUES ('姽婳', '恐怖,惊悚', '中国大陆', '92分钟', '2018-06-29', '4.3分', '1872', '760000');
INSERT INTO `films` VALUES ('宇宙有爱浪漫同游', '喜剧,爱情,科幻', '中国香港', '92分钟', '2018-03-02', '7.3分', '6143', '1550000');
INSERT INTO `films` VALUES ('守望一生', '剧情', '中国大陆', '94分钟', '2018-09-10', '7.0分', '33', '150000');
INSERT INTO `films` VALUES ('完美陌生人', '剧情', '意大利', '96分钟', '2018-05-25', '8.5分', '35522', '53510000');
INSERT INTO `films` VALUES ('宝贝儿', '剧情', '中国大陆', '98分钟', '2018-10-19', '5.6分', '46437', '24710000');
INSERT INTO `films` VALUES ('家在水草丰茂的地方', '剧情,家庭', '中国大陆', '103分钟', '2015-10-23', '8.6分', '682', '810000');
INSERT INTO `films` VALUES ('寂静之地', '剧情,恐怖,惊悚', '美国', '91分钟', '2018-05-18', '7.7分', '200000', '221000000');
INSERT INTO `films` VALUES ('寻找罗麦', '剧情,爱情', '中国大陆,法国', '83分钟', '2018-04-13', '7.1分', '8086', '4020000');
INSERT INTO `films` VALUES ('小偷家族', '剧情,犯罪', '日本', '117分钟', '2018-08-03', '8.1分', '55540', '96750000');
INSERT INTO `films` VALUES ('小公主艾薇拉与神秘王国', '动画,冒险,家庭', '中国大陆', '78分钟', '2018-05-12', '6.7分', '9055', '6610000');
INSERT INTO `films` VALUES ('小悟空', '喜剧,动画,冒险', '中国大陆,中国香港', '85分钟', '2018-07-14', '8.5分', '7399', '8810000');
INSERT INTO `films` VALUES ('小狗奶瓶', '剧情,家庭', '中国大陆', '92分钟', '2018-02-02', '9.0分', '2384', '1650000');
INSERT INTO `films` VALUES ('小萝莉的猴神大叔', '剧情,喜剧', '印度', '141分钟', '2018-03-02', '9.5分', '314000', '286000000');
INSERT INTO `films` VALUES ('小马宝莉大电影', '喜剧,动画,歌舞,冒险', '美国,加拿大', '100分钟', '2018-02-02', '8.7分', '32397', '46810000');
INSERT INTO `films` VALUES ('尖叫直播', '喜剧', '中国大陆', '101分钟', '2018-04-29', '7.5分', '8165', '3110000');
INSERT INTO `films` VALUES ('尼斯：疯狂的心', '剧情,历史,传记', '巴西', '109分钟', '2018-01-05', '8.3分', '808', '1030000');
INSERT INTO `films` VALUES ('山河故人', '剧情,爱情,家庭', '中国大陆,法国,日本', '126分钟', '2015-10-30', '7.9分', '69133', '32260000');
INSERT INTO `films` VALUES ('巨齿鲨', '动作,冒险,科幻', '美国,中国香港,中国大陆', '115分钟', '2018-08-10', '8.7分', '602000', '1052000000');
INSERT INTO `films` VALUES ('巴霍巴利王2：终结', '剧情,动作,奇幻', '印度', '141分钟', '2018-05-04', '8.8分', '82176', '76840000');
INSERT INTO `films` VALUES ('师父', '剧情,动作,武侠', '中国大陆', '109分钟', '2015-12-10', '8.0分', '42618', '54720000');
INSERT INTO `films` VALUES ('帝企鹅日记2：召唤', '纪录片', '法国', '85分钟', '2018-10-12', '8.5分', '2965', '5400000');
INSERT INTO `films` VALUES ('幕后玩家', '剧情,悬疑,犯罪', '中国大陆', '114分钟', '2018-04-28', '8.4分', '211000', '359000000');
INSERT INTO `films` VALUES ('幸福马上来', '剧情,喜剧', '中国大陆', '91分钟', '2018-06-08', '7.2分', '44112', '101000000');
INSERT INTO `films` VALUES ('开学悸', '惊悚,悬疑', '中国大陆', '86分钟', '2018-11-09', '5.6分', '1706', '1370000');
INSERT INTO `films` VALUES ('张艺谋和他的“影”', '纪录片', '中国大陆', '94分钟', '2018-10-12', '8.9分', '1986', '820000');
INSERT INTO `films` VALUES ('影', '剧情,动作,古装', '中国大陆', '118分钟', '2018-09-30', '8.2分', '356000', '629000000');
INSERT INTO `films` VALUES ('忌日快乐', '喜剧,恐怖,惊悚', '美国', '96分钟', '2018-02-02', '8.3分', '53204', '61260000');
INSERT INTO `films` VALUES ('快乐星球之三十六号', '冒险,科幻', '中国大陆', '90分钟', '2018-06-30', '7.7分', '2430', '690000');
INSERT INTO `films` VALUES ('快把我哥带走', '喜剧,奇幻', '中国大陆', '115分钟', '2018-08-17', '9.0分', '369000', '375000000');
INSERT INTO `films` VALUES ('念念手纪', '剧情,爱情', '日本', '116分钟', '2018-09-14', '8.7分', '6035', '4470000');
INSERT INTO `films` VALUES ('恋爱回旋', '喜剧,爱情,运动', '日本', '119分钟', '2018-03-09', '8.7分', '20875', '18540000');
INSERT INTO `films` VALUES ('恐怖浴室', '恐怖,惊悚', '中国大陆', '90分钟', '2018-06-08', '4.9分', '5512', '2540000');
INSERT INTO `films` VALUES ('恐龙王', '喜剧,动画,冒险', '中国大陆', '95分钟', '2018-11-10', '8.9分', '14338', '28310000');
INSERT INTO `films` VALUES ('您一定不要错过', '纪录片', '中国大陆', '99分钟', '2018-07-06', '8.8分', '20411', '5280000');
INSERT INTO `films` VALUES ('悲伤逆流成河', '剧情,爱情,家庭', '中国大陆', '105分钟', '2018-09-21', '9.0分', '386000', '357000000');
INSERT INTO `films` VALUES ('惊慌失色之诡寓', '恐怖,惊悚', '中国大陆', '86分钟', '2018-08-24', '4.8分', '3915', '2070000');
INSERT INTO `films` VALUES ('惊涛飓浪', '爱情,灾难', '美国', '96分钟', '2018-12-07', '7.3分', '6319', '9150000');
INSERT INTO `films` VALUES ('憨豆特工3', '喜剧,动作,冒险', '法国,美国,英国', '88分钟', '2018-11-23', '8.6分', '73904', '170000000');
INSERT INTO `films` VALUES ('我不是药神', '剧情,喜剧', '中国大陆', '117分钟', '2018-07-05', '9.6分', '2456000', '3100000000');
INSERT INTO `films` VALUES ('我心雀跃', '剧情,爱情', '中国大陆', '96分钟', '2017-06-09', '7.8分', '898', '480000');
INSERT INTO `films` VALUES ('我是你妈', '剧情,喜剧', '中国大陆', '104分钟', '2018-05-11', '8.3分', '30011', '36820000');
INSERT INTO `films` VALUES ('我是哪吒', '动画,冒险,奇幻', '中国大陆', '83分钟', '2016-10-01', '8.5分', '11372', '9930000');
INSERT INTO `films` VALUES ('我的冤家是条狗', '喜剧,家庭', '英国', '95分钟', '2018-11-09', '8.4分', '2521', '2320000');
INSERT INTO `films` VALUES ('我的宠物恐龙', '冒险,科幻,家庭', '澳大利亚', '88分钟', '2018-05-31', '7.6分', '5467', '8640000');
INSERT INTO `films` VALUES ('我的诗篇', '纪录片', '中国大陆', '104分钟', '2017-05-01', '8.4分', '657', '3190000');
INSERT INTO `films` VALUES ('我的间谍前男友', '喜剧,动作', '美国', '117分钟', '2018-10-19', '8.1分', '36757', '61720000');
INSERT INTO `films` VALUES ('我说的都是真的', '喜剧,动作,悬疑', '中国大陆', '99分钟', '2018-03-30', '7.8分', '18039', '17840000');
INSERT INTO `films` VALUES ('战犬瑞克斯', '剧情,战争', '美国', '116分钟', '2018-05-11', '8.3分', '6487', '6710000');
INSERT INTO `films` VALUES ('战神纪', '爱情,动作,冒险', '中国大陆', '119分钟', '2018-04-28', '6.8分', '53579', '38070000');
INSERT INTO `films` VALUES ('找到你', '剧情', '中国大陆', '102分钟', '2018-10-05', '9.0分', '178000', '285000000');
INSERT INTO `films` VALUES ('捉妖记2', '喜剧,奇幻', '中国大陆,中国香港', '110分钟', '2018-02-16', '8.1分', '1593000', '2237000000');
INSERT INTO `films` VALUES ('摇摇晃晃的人间', '纪录片,传记', '中国大陆', '89分钟', '2017-06-26', '8.7分', '348', '1810000');
INSERT INTO `films` VALUES ('摘金奇缘', '喜剧,爱情', '美国', '119分钟', '2018-11-30', '8.3分', '7145', '11230000');
INSERT INTO `films` VALUES ('摩天营救', '动作,惊悚,冒险', '美国', '102分钟', '2018-07-20', '9.1分', '454000', '670000000');
INSERT INTO `films` VALUES ('新乌龙院之笑闹江湖', '剧情,喜剧,动作', '中国大陆', '103分钟', '2018-08-17', '7.5分', '129000', '131000000');
INSERT INTO `films` VALUES ('新大头儿子和小头爸爸3：俄罗斯奇遇记', '动画,冒险,奇幻', '中国大陆', '80分钟', '2018-07-06', '8.6分', '104000', '158000000');
INSERT INTO `films` VALUES ('新灰姑娘', '动画,冒险,奇幻', '中国大陆,美国', '87分钟', '2018-10-01', '8.1分', '31089', '60140000');
INSERT INTO `films` VALUES ('无双', '动作,惊悚,犯罪', '中国大陆,中国香港', '130分钟', '2018-09-30', '8.9分', '527000', '1274000000');
INSERT INTO `films` VALUES ('无名之辈', '剧情,喜剧,犯罪', '中国大陆', '108分钟', '2018-11-16', '9.1分', '325000', '755000000');
INSERT INTO `films` VALUES ('无敌原始人', '喜剧,动画,冒险', '英国,法国,美国', '85分钟', '2018-10-19', '7.9分', '1869', '3590000');
INSERT INTO `films` VALUES ('无敌破坏王2：大闹互联网', '喜剧,动画,冒险', '美国', '113分钟', '2018-11-23', '8.9分', '86558', '268000000');
INSERT INTO `films` VALUES ('无眸之杀', '惊悚,悬疑', '中国大陆', '82分钟', '2018-03-23', '5.6分', '1498', '980000');
INSERT INTO `films` VALUES ('无迹可寻', '惊悚,悬疑', '中国大陆', '90分钟', '2018-02-09', '4.5分', '639', '360000');
INSERT INTO `films` VALUES ('无问西东', '爱情,战争', '中国大陆', '138分钟', '2018-01-12', '8.6分', '502000', '754000000');
INSERT INTO `films` VALUES ('时空终点', '惊悚,悬疑,科幻', '中国大陆', '95分钟', '2018-01-12', '5.8分', '390', '420000');
INSERT INTO `films` VALUES ('星球大战：最后的绝地武士', '动作,冒险,科幻', '美国', '152分钟', '2018-01-05', '7.9分', '135000', '268000000');
INSERT INTO `films` VALUES ('昨日青空', '剧情,动画', '中国大陆', '85分钟', '2018-10-26', '8.5分', '99078', '83820000');
INSERT INTO `films` VALUES ('昼颜', '剧情,爱情', '日本', '126分钟', '2018-05-18', '8.2分', '14804', '14340000');
INSERT INTO `films` VALUES ('暮光巴黎', '剧情,爱情,奇幻', '中国大陆,法国', '91分钟', '2018-10-26', '6.8分', '3768', '2090000');
INSERT INTO `films` VALUES ('暴裂无声', '惊悚,悬疑,犯罪', '中国大陆', '120分钟', '2018-04-04', '8.1分', '43310', '54250000');
INSERT INTO `films` VALUES ('暹罗决：九神战甲', '动画,动作,奇幻', '泰国', '104分钟', '2018-06-29', '8.6分', '3304', '2530000');
INSERT INTO `films` VALUES ('最后一球', '剧情,运动', '俄罗斯', '138分钟', '2018-06-29', '8.9分', '7134', '6090000');
INSERT INTO `films` VALUES ('最后的棒棒', '纪录片', '中国大陆', '99分钟', '2018-08-17', '9.0分', '6269', '1010000');
INSERT INTO `films` VALUES ('有五个姐姐的我就注定要单身了啊', '喜剧,爱情', '中国台湾', '97分钟', '2018-11-16', '7.1分', '1162', '850000');
INSERT INTO `films` VALUES ('未择之路', '剧情,冒险', '中国大陆', '113分钟', '2018-09-14', '7.8分', '5522', '7450000');
INSERT INTO `films` VALUES ('李宗伟：败者为王', '剧情,运动,传记', '马来西亚', '110分钟', '2018-09-07', '9.1分', '8846', '6620000');
INSERT INTO `films` VALUES ('李茶的姑妈', '喜剧', '中国大陆', '115分钟', '2018-09-30', '7.9分', '347000', '604000000');
INSERT INTO `films` VALUES ('欧洲攻略', '爱情,喜剧,动作', '中国大陆', '100分钟', '2018-08-17', '7.3分', '157000', '153000000');
INSERT INTO `films` VALUES ('毒液：致命守护者', '动作,惊悚,科幻', '美国', '107分钟', '2018-11-09', '9.2分', '931000', '1859000000');
INSERT INTO `films` VALUES ('比得兔', '喜剧,动画,冒险', '美国', '95分钟', '2018-03-02', '8.9分', '149000', '168000000');
INSERT INTO `films` VALUES ('毕业作品', '剧情,爱情,冒险', '中国大陆', '86分钟', '2018-04-13', '7.6分', '8207', '4570000');
INSERT INTO `films` VALUES ('毕业旅行笑翻天', '剧情,喜剧,爱情', '中国大陆,中国台湾', '98分钟', '2018-02-01', '7.8分', '1016', '220000');
INSERT INTO `films` VALUES ('毛骨悚然之红衣男孩', '惊悚,悬疑', '中国大陆', '86分钟', '2018-06-01', '5.3分', '2979', '1480000');
INSERT INTO `films` VALUES ('水形物语', '剧情,爱情,奇幻', '美国', '123分钟', '2018-03-16', '8.0分', '91387', '105000000');
INSERT INTO `films` VALUES ('江湖儿女', '爱情,犯罪', '中国大陆', '136分钟', '2018-09-21', '7.7分', '43214', '69930000');
INSERT INTO `films` VALUES ('汪星卧底', '剧情,喜剧', '美国', '93分钟', '2018-07-20', '8.5分', '10534', '14990000');
INSERT INTO `films` VALUES ('河', '剧情', '中国大陆', '94分钟', '2016-04-18', '8.2分', '164', '0');
INSERT INTO `films` VALUES ('泄密者', '动作,悬疑,犯罪', '中国香港', '102分钟', '2018-06-15', '8.0分', '60332', '70820000');
INSERT INTO `films` VALUES ('泡芙小姐', '剧情,爱情', '中国大陆', '96分钟', '2018-02-09', '7.4分', '23689', '19340000');
INSERT INTO `films` VALUES ('流浪猫鲍勃', '剧情,喜剧,传记', '英国', '103分钟', '2018-11-02', '8.9分', '30436', '52980000');
INSERT INTO `films` VALUES ('浪矢解忧杂货店', '剧情,奇幻', '日本', '129分钟', '2018-02-02', '8.4分', '34635', '28760000');
INSERT INTO `films` VALUES ('海王', '动作,冒险,奇幻', '美国', '143分钟', '2018-12-07', '9.5分', '342000', '765000000');
INSERT INTO `films` VALUES ('淘气大侦探', '剧情,动画,冒险', '英国,美国', '86分钟', '2018-07-20', '8.5分', '6280', '10410000');
INSERT INTO `films` VALUES ('深海历险记', '喜剧,动画,冒险', '美国,中国大陆', '92分钟', '2018-08-24', '8.3分', '8964', '17600000');
INSERT INTO `films` VALUES ('深海越狱', '剧情,动作,犯罪', '美国', '104分钟', '2018-06-08', '7.0分', '48124', '51370000');
INSERT INTO `films` VALUES ('清水里的刀子', '剧情', '中国大陆', '93分钟', '2018-04-04', '8.0分', '984', '580000');
INSERT INTO `films` VALUES ('游侠索罗：星球大战外传', '动作,科幻', '美国', '135分钟', '2018-05-25', '8.1分', '49726', '106000000');
INSERT INTO `films` VALUES ('湮灭', '剧情,动作,科幻', '美国,英国', '114分钟', '2018-04-13', '7.3分', '56547', '66070000');
INSERT INTO `films` VALUES ('滴答屋', '喜剧,冒险,奇幻', '美国', '105分钟', '2018-11-01', '7.7分', '8986', '19050000');
INSERT INTO `films` VALUES ('潜艇总动员：海底两万里', '动画', '中国大陆', '75分钟', '2018-06-01', '8.4分', '35205', '72660000');
INSERT INTO `films` VALUES ('灵魂契约', '恐怖,惊悚,悬疑', '中国大陆', '89分钟', '2018-10-26', '5.4分', '3699', '2740000');
INSERT INTO `films` VALUES ('灵魂当铺之时间典当', '爱情,悬疑,科幻', '中国大陆', '86分钟', '2018-03-09', '5.6分', '2665', '1280000');
INSERT INTO `films` VALUES ('熊出没·变形记', '喜剧,动画,冒险', '中国大陆', '90分钟', '2018-02-16', '9.1分', '408000', '606000000');
INSERT INTO `films` VALUES ('爱在记忆消逝前', '剧情,喜剧,爱情', '意大利,法国', '112分钟', '2018-02-23', '9.0分', '6049', '6560000');
INSERT INTO `films` VALUES ('爱情公寓', '喜剧,爱情', '中国大陆', '116分钟', '2018-08-10', '6.8分', '1177000', '555000000');
INSERT INTO `films` VALUES ('爱猫之城', '家庭,纪录片', '土耳其,美国', '79分钟', '2018-09-22', '8.4分', '2362', '2820000');
INSERT INTO `films` VALUES ('爸，我一定行的', '剧情,喜剧', '中国大陆', '100分钟', '2018-08-24', '9.0分', '97296', '47070000');
INSERT INTO `films` VALUES ('犬之岛', '喜剧,动画,冒险', '美国', '97分钟', '2018-04-20', '7.9分', '32799', '43520000');
INSERT INTO `films` VALUES ('狂暴巨兽', '动作,冒险,科幻', '美国', '108分钟', '2018-04-13', '8.9分', '838000', '1003999999');
INSERT INTO `films` VALUES ('狄仁杰之四大天王', '动作,悬疑,奇幻,武侠,古装', '中国大陆', '132分钟', '2018-07-27', '8.1分', '340000', '606000000');
INSERT INTO `films` VALUES ('狗十三', '剧情', '中国大陆', '121分钟', '2018-12-07', '8.2分', '13432', '24070000');
INSERT INTO `films` VALUES ('狗狗的疯狂假期', '喜剧,动画', '西班牙', '90分钟', '2018-02-02', '8.4分', '6487', '10600000');
INSERT INTO `films` VALUES ('猛虫过江', '喜剧,动作', '中国大陆', '99分钟', '2018-06-15', '8.1分', '185000', '204000000');
INSERT INTO `films` VALUES ('猫与桃花源', '动画,冒险,家庭', '中国大陆', '105分钟', '2018-04-05', '8.6分', '14169', '21800000');
INSERT INTO `films` VALUES ('玛丽与魔女之花', '动画,冒险', '日本', '103分钟', '2018-04-28', '8.2分', '15004', '20620000');
INSERT INTO `films` VALUES ('玛雅蜜蜂历险记', '动画,喜剧,冒险', '德国', '88分钟', '2018-10-12', '8.8分', '3641', '6900000');
INSERT INTO `films` VALUES ('环太平洋：雷霆再起', '动作,冒险,科幻', '美国', '111分钟', '2018-03-23', '8.1分', '475000', '633000000');
INSERT INTO `films` VALUES ('玲珑井', '恐怖,惊悚', '中国大陆', '81分钟', '2018-03-16', '3.5分', '5459', '1980000');
INSERT INTO `films` VALUES ('生存家族', '剧情,喜剧,家庭', '日本', '117分钟', '2018-06-22', '8.5分', '12063', '11410000');
INSERT INTO `films` VALUES ('生活万岁', '纪录片', '中国大陆', '94分钟', '2018-11-27', '9.1分', '1949', '4300000');
INSERT INTO `films` VALUES ('生门', '纪录片', '中国大陆', '105分钟', '2016-12-16', '9.1分', '1313', '1580000');
INSERT INTO `films` VALUES ('男生宿舍', '恐怖,惊悚', '中国大陆', '85分钟', '2018-08-31', '4.0分', '6198', '2390000');
INSERT INTO `films` VALUES ('疯狂丑小鸭', '动画,冒险', '中国大陆', '81分钟', '2016-10-03', '8.0分', '5054', '23390000');
INSERT INTO `films` VALUES ('的士速递5', '喜剧,动作', '法国', '102分钟', '2018-08-03', '7.3分', '24876', '31210000');
INSERT INTO `films` VALUES ('监狱犬计划', '剧情,喜剧', '中国大陆', '98分钟', '2018-06-21', '7.3分', '2294', '1250000');
INSERT INTO `films` VALUES ('盲·道', '剧情,悬疑,犯罪', '中国大陆', '110分钟', '2018-02-02', '7.5分', '772', '520000');
INSERT INTO `films` VALUES ('瞳灵公馆', '恐怖,惊悚', '中国大陆', '85分钟', '2018-11-02', '5.0分', '3010', '2310000');
INSERT INTO `films` VALUES ('碟中谍6：全面瓦解', '动作,惊悚,冒险', '美国', '148分钟', '2018-08-31', '9.0分', '464000', '1245000000');
INSERT INTO `films` VALUES ('祖宗十九代', '喜剧,奇幻', '中国大陆', '95分钟', '2018-02-16', '7.6分', '164000', '170000000');
INSERT INTO `films` VALUES ('神奇动物：格林德沃之罪', '冒险,奇幻,家庭', '美国,英国', '134分钟', '2018-11-16', '7.6分', '148000', '398000000');
INSERT INTO `films` VALUES ('神奇马戏团之动物饼干', '喜剧,动画,家庭', '美国,西班牙,中国大陆,韩国', '94分钟', '2018-07-21', '8.4分', '29831', '64880000');
INSERT INTO `films` VALUES ('神秘世界历险记4', '动画,冒险,奇幻', '中国大陆', '83分钟', '2018-08-03', '8.7分', '53243', '105000000');
INSERT INTO `films` VALUES ('神秘巨星', '剧情,喜剧,音乐', '印度', '150分钟', '2018-01-19', '9.3分', '622000', '747000000');
INSERT INTO `films` VALUES ('移动迷宫3：死亡解药', '动作,惊悚,科幻', '美国', '142分钟', '2018-01-26', '8.0分', '188000', '315000000');
INSERT INTO `films` VALUES ('第一夫人', '剧情,悬疑,传记', '美国,法国,智利', '100分钟', '2018-01-19', '7.9分', '2204', '2130000');
INSERT INTO `films` VALUES ('第七个小矮人', '喜剧,动画,冒险', '德国', '87分钟', '2018-06-16', '8.5分', '20417', '25490000');
INSERT INTO `films` VALUES ('第三度嫌疑人', '悬疑', '日本', '125分钟', '2018-03-30', '7.7分', '3468', '4520000');
INSERT INTO `films` VALUES ('米花之味', '剧情', '中国大陆', '95分钟', '2018-04-20', '8.4分', '984', '2270000');
INSERT INTO `films` VALUES ('精灵旅社3：疯狂假期', '喜剧,动画,奇幻', '美国', '98分钟', '2018-08-17', '8.7分', '116000', '224000000');
INSERT INTO `films` VALUES ('红海行动', '剧情,动作', '中国大陆,中国香港', '138分钟', '2018-02-16', '9.4分', '2525000', '3651000000');
INSERT INTO `films` VALUES ('红高粱', '剧情,爱情,战争', '中国大陆,中国香港', '91分钟', '1988-10-10', '8.7分', '896', '860000');
INSERT INTO `films` VALUES ('纯洁心灵·逐梦演艺圈', '剧情,喜剧', '中国大陆', '98分钟', '2018-02-09', '6.8分', '5858', '2340000');
INSERT INTO `films` VALUES ('细思极恐', '恐怖,惊悚', '中国大陆', '92分钟', '2018-07-06', '3.9分', '4714', '1500000');
INSERT INTO `films` VALUES ('给19岁的我自己', '爱情', '中国大陆', '98分钟', '2018-05-29', '8.1分', '6942', '4390000');
INSERT INTO `films` VALUES ('绝命时钟2:22', '爱情,悬疑', '美国,澳大利亚', '98分钟', '2018-01-26', '7.8分', '1303', '2260000');
INSERT INTO `films` VALUES ('美食大冒险之英雄烩', '喜剧,动画,家庭', '中国大陆', '98分钟', '2018-08-17', '8.7分', '6982', '5020000');
INSERT INTO `films` VALUES ('老爸102岁', '喜剧,剧情,家庭', '印度', '102分钟', '2018-11-30', '8.7分', '26827', '29920000');
INSERT INTO `films` VALUES ('肆式青春', '动画', '中国大陆,日本', '75分钟', '2018-08-04', '7.7分', '7258', '2830000');
INSERT INTO `films` VALUES ('胖子行动队', '喜剧,动作', '中国大陆', '109分钟', '2018-09-30', '8.4分', '165000', '261000000');
INSERT INTO `films` VALUES ('胡桃夹子和四个王国', '动作,冒险,奇幻', '美国', '100分钟', '2018-11-02', '7.9分', '46668', '112999999');
INSERT INTO `films` VALUES ('脱单告急', '剧情,喜剧,爱情', '中国大陆', '101分钟', '2018-04-20', '8.4分', '25993', '35020000');
INSERT INTO `films` VALUES ('脱皮爸爸', '剧情,喜剧,奇幻', '中国大陆,中国香港', '103分钟', '2018-03-23', '7.0分', '10987', '8030000');
INSERT INTO `films` VALUES ('舌尖上的新年', '纪录片', '中国大陆', '89分钟', '2016-01-07', '8.7分', '3669', '1940000');
INSERT INTO `films` VALUES ('花滑女王', '剧情,喜剧,爱情', '俄罗斯', '90分钟', '2018-03-30', '8.6分', '23817', '17170000');
INSERT INTO `films` VALUES ('苏丹', '剧情,爱情,动作', '印度', '139分钟', '2018-08-31', '9.2分', '37715', '36140000');
INSERT INTO `films` VALUES ('英雄本色2018', '剧情,动作', '中国大陆', '110分钟', '2018-01-18', '7.9分', '75738', '63070000');
INSERT INTO `films` VALUES ('荒城纪', '剧情', '中国大陆', '104分钟', '2018-05-18', '7.9分', '1795', '1370000');
INSERT INTO `films` VALUES ('莫斯科陷落', '爱情,科幻,灾难', '俄罗斯', '119分钟', '2018-02-02', '7.9分', '2199', '2380000');
INSERT INTO `films` VALUES ('萌犬好声音', '喜剧,音乐,冒险', '加拿大', '92分钟', '2018-03-24', '8.1分', '6509', '9800000');
INSERT INTO `films` VALUES ('藏北秘岭-重返无人区', '纪录片', '中国大陆', '86分钟', '2018-08-31', '8.2分', '5023', '20580000');
INSERT INTO `films` VALUES ('虎皮萌企鹅', '喜剧,动画,冒险', '法国', '97分钟', '2018-03-16', '8.4分', '5905', '8680000');
INSERT INTO `films` VALUES ('虎胆追凶', '剧情,动作,犯罪', '美国', '97分钟', '2018-09-21', '8.5分', '14976', '22420000');
INSERT INTO `films` VALUES ('蚁人2：黄蜂女现身', '动作,冒险,科幻', '美国', '119分钟', '2018-08-24', '8.8分', '383000', '832000000');
INSERT INTO `films` VALUES ('西北风云', '剧情,犯罪', '中国大陆', '98分钟', '2018-04-13', '6.6分', '4438', '4030000');
INSERT INTO `films` VALUES ('西小河的夏天', '剧情,家庭', '中国大陆', '102分钟', '2018-05-25', '7.8分', '1367', '1920000');
INSERT INTO `films` VALUES ('西游记女儿国', '喜剧,爱情,动作', '中国大陆,中国香港', '116分钟', '2018-02-16', '7.9分', '574000', '727000000');
INSERT INTO `films` VALUES ('西虹市首富', '喜剧', '中国大陆', '118分钟', '2018-07-27', '9.2分', '1483000', '2548000000');
INSERT INTO `films` VALUES ('解码游戏', '喜剧,动作,犯罪', '中国大陆', '99分钟', '2018-08-03', '7.4分', '14365', '9690000');
INSERT INTO `films` VALUES ('让我怎么相信你', '喜剧', '中国大陆', '88分钟', '2018-09-14', '8.1分', '666', '1840000');
INSERT INTO `films` VALUES ('说走就走之不说再见', '喜剧,爱情,冒险', '中国大陆', '106分钟', '2018-09-14', '8.3分', '10444', '9870000');
INSERT INTO `films` VALUES ('谜巢', '动作,冒险', '中国大陆,澳大利亚', '91分钟', '2018-01-19', '7.0分', '59717', '49500000');
INSERT INTO `films` VALUES ('赛尔号大电影6：圣者无敌', '喜剧,动画,冒险', '中国大陆', '98分钟', '2017-08-18', '8.9分', '94767', '109000000');
INSERT INTO `films` VALUES ('起跑线', '剧情,喜剧', '印度', '131分钟', '2018-04-04', '9.0分', '161000', '210000000');
INSERT INTO `films` VALUES ('超人总动员2', '动画,动作,冒险', '美国', '126分钟', '2018-06-22', '8.9分', '184000', '354000000');
INSERT INTO `films` VALUES ('超大号美人', '剧情,喜剧', '美国,中国大陆', '110分钟', '2018-08-28', '8.1分', '1827', '1480000');
INSERT INTO `films` VALUES ('超时空同居', '喜剧,爱情,奇幻', '中国大陆', '101分钟', '2018-05-18', '8.7分', '622000', '900000000');
INSERT INTO `films` VALUES ('超能太阳鸭', '喜剧,动画,冒险', '俄罗斯,美国,中国大陆', '86分钟', '2016-07-15', '8.1分', '20083', '20030000');
INSERT INTO `films` VALUES ('超能泰坦', '科幻', '美国,英国', '97分钟', '2018-10-12', '5.8分', '15048', '14280000');
INSERT INTO `films` VALUES ('足球王者', '动画,运动,家庭', '中国大陆', '90分钟', '2018-08-31', '8.4分', '1426', '1850000');
INSERT INTO `films` VALUES ('跨越8年的新娘', '剧情,爱情', '日本', '120分钟', '2018-10-19', '8.7分', '3304', '3120000');
INSERT INTO `films` VALUES ('路过未来', '剧情', '中国大陆', '127分钟', '2018-05-17', '7.5分', '2442', '2540000');
INSERT INTO `films` VALUES ('迷镇凶案', '喜剧,悬疑,犯罪', '美国,英国', '105分钟', '2018-01-12', '7.1分', '7392', '5670000');
INSERT INTO `films` VALUES ('追鹰日记', '剧情,冒险,家庭', '奥地利', '98分钟', '2018-10-26', '9.2分', '1651', '1750000');
INSERT INTO `films` VALUES ('通勤营救', '剧情,动作,悬疑', '美国,英国', '104分钟', '2018-03-30', '8.4分', '34725', '45400000');
INSERT INTO `films` VALUES ('遇见你真好', '剧情,喜剧,爱情', '中国大陆', '99分钟', '2018-03-29', '8.1分', '56577', '51010000');
INSERT INTO `films` VALUES ('道高一丈', '剧情,悬疑,犯罪', '中国大陆', '96分钟', '2018-09-06', '7.8分', '8777', '12070000');
INSERT INTO `films` VALUES ('那些女人', '剧情', '中国大陆', '114分钟', '2018-09-03', '8.5分', '3608', '4960000');
INSERT INTO `films` VALUES ('邪不压正', '剧情,喜剧,动作', '中国大陆', '137分钟', '2018-07-13', '7.4分', '390000', '583000000');
INSERT INTO `films` VALUES ('金蝉脱壳2', '动作,惊悚,犯罪', '美国', '93分钟', '2018-06-29', '6.1分', '125000', '91320000');
INSERT INTO `films` VALUES ('金钱世界', '剧情,犯罪,传记', '美国,英国', '124分钟', '2018-03-02', '8.1分', '8784', '11160000');
INSERT INTO `films` VALUES ('金龟子', '动画,冒险,家庭', '中国大陆', '77分钟', '2018-02-02', '8.5分', '21641', '27710000');
INSERT INTO `films` VALUES ('铁血战士', '动作,冒险,科幻', '美国', '106分钟', '2018-10-26', '7.7分', '112000', '217000000');
INSERT INTO `films` VALUES ('镰仓物语', '剧情,奇幻', '日本', '120分钟', '2018-09-14', '8.5分', '34012', '48500000');
INSERT INTO `films` VALUES ('闺蜜2', '喜剧,爱情', '中国香港,中国大陆', '109分钟', '2018-03-02', '6.6分', '83238', '64340000');
INSERT INTO `films` VALUES ('阿修罗', '动作,爱情,奇幻', '中国大陆', '141分钟', '2018-07-13', '6.4分', '62039', '49840000');
INSERT INTO `films` VALUES ('阿凡提之奇缘历险', '动画,冒险', '中国大陆', '85分钟', '2018-10-01', '8.5分', '27013', '76740000');
INSERT INTO `films` VALUES ('阿尔法：狼伴归途', '动作,冒险,家庭', '美国', '97分钟', '2018-09-07', '8.3分', '61615', '114999999');
INSERT INTO `films` VALUES ('阿拉姜色', '剧情', '中国大陆', '109分钟', '2018-10-26', '8.7分', '2898', '2440000');
INSERT INTO `films` VALUES ('阿飞正传', '剧情,爱情,犯罪', '中国香港', '94分钟', '2018-06-25', '8.8分', '21262', '19740000');
INSERT INTO `films` VALUES ('雪怪大冒险', '喜剧,动画,奇幻', '美国', '96分钟', '2018-10-19', '9.2分', '33673', '75030000');
INSERT INTO `films` VALUES ('青年马克思', '剧情,历史,传记', '德国,法国,比利时', '115分钟', '2018-05-05', '8.4分', '2804', '20780000');
INSERT INTO `films` VALUES ('青蛙总动员', '动画,冒险', '中国大陆,中国台湾', '74分钟', '2016-04-30', '7.4分', '13185', '12550000');
INSERT INTO `films` VALUES ('风语咒', '动画,冒险,奇幻', '中国大陆', '105分钟', '2018-08-03', '9.1分', '145000', '112999999');
INSERT INTO `films` VALUES ('飓风奇劫', '动作,犯罪,灾难', '美国', '103分钟', '2018-11-02', '8.4分', '46226', '95110000');
INSERT INTO `films` VALUES ('飞鸟历险记', '动画,冒险,家庭', '法国', '91分钟', '2018-03-08', '8.3分', '1426', '1310000');
INSERT INTO `films` VALUES ('马戏之王', '剧情,传记,歌舞', '美国', '106分钟', '2018-02-01', '8.9分', '75472', '101000000');
INSERT INTO `films` VALUES ('魔镜奇缘2', '动画,冒险,家庭', '中国大陆', '77分钟', '2018-06-01', '7.8分', '13937', '20610000');
INSERT INTO `films` VALUES ('鹰笛·雪莲', '冒险,家庭', '中国大陆', '94分钟', '2015-08-19', '6.8分', '129', '80000');
INSERT INTO `films` VALUES ('麦兵兵之夺宝联“萌”', '喜剧,冒险,奇幻', '中国大陆', '87分钟', '2018-01-27', '7.4分', '12305', '6060000');
INSERT INTO `films` VALUES ('黄金兄弟', '剧情,动作,犯罪', '中国大陆', '100分钟', '2018-09-21', '8.5分', '217000', '317000000');
INSERT INTO `films` VALUES ('黄金花', '剧情,爱情,家庭', '中国大陆,中国香港', '91分钟', '2018-04-28', '8.5分', '13385', '1510000');
INSERT INTO `films` VALUES ('黑子的篮球·终极一战', '动画,运动', '日本', '91分钟', '2018-08-24', '9.1分', '20280', '6790000');
INSERT INTO `films` VALUES ('黑暗深处之惊魂夜', '恐怖,惊悚,悬疑', '中国大陆', '92分钟', '2018-10-19', '5.2分', '4049', '2280000');
INSERT INTO `films` VALUES ('黑暗迷宫', '悬疑,犯罪', '中国大陆', '97分钟', '2018-10-31', '7.7分', '3640', '4120000');
INSERT INTO `films` VALUES ('黑豹', '剧情,动作,科幻', '美国', '135分钟', '2018-03-09', '8.4分', '493000', '662000000');
INSERT INTO `films` VALUES ('龙凤斗', '剧情,喜剧,爱情', '中国香港', '91分钟', '2018-02-10', '7.8分', '1279', '14920000');
INSERT INTO `films` VALUES ('龙在哪里？', '喜剧,动画,冒险', '中国大陆,中国香港', '97分钟', '2015-10-23', '8.6分', '11217', '24620000');
INSERT INTO `films` VALUES ('龙虾刑警', '喜剧,动作,犯罪', '中国大陆', '93分钟', '2018-06-22', '7.8分', '49040', '68790000');

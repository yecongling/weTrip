/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : wetrip

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-03-06 17:02:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_num` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '大侠', 'd41d8cd98f 0b2 4e980 998ecf8427e', '15760011822');
INSERT INTO `admin` VALUES ('2', '叶丛林', 'd41d8cd98f 0b2 4e980 998ecf8427e', '15808203316');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '北京');
INSERT INTO `city` VALUES ('2', '成都');
INSERT INTO `city` VALUES ('3', '上海');
INSERT INTO `city` VALUES ('4', '广州');
INSERT INTO `city` VALUES ('5', '深圳');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(512) DEFAULT NULL,
  `comment_time` date DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `scenic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `scenic_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `collection_time` date DEFAULT NULL,
  PRIMARY KEY (`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES ('1', '3', '1', '2019-02-28');

-- ----------------------------
-- Table structure for flow
-- ----------------------------
DROP TABLE IF EXISTS `flow`;
CREATE TABLE `flow` (
  `flow_id` int(11) NOT NULL AUTO_INCREMENT,
  `flow_num` varchar(255) DEFAULT NULL,
  `trade_price` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `order_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flow
-- ----------------------------

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `operator` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `use_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `pay_price` varchar(255) DEFAULT NULL,
  `buy_counts` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `paid_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `scenic_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '20192019', '50', '5000', '2', '2019-02-24 14:57:33', '2019-02-25 09:57:51', '1', '1', '1');
INSERT INTO `orders` VALUES ('2', '20190226', '20', '1000', '1', '2019-02-25 10:04:02', '2019-02-25 10:04:05', '1', '3', '1');

-- ----------------------------
-- Table structure for passengers
-- ----------------------------
DROP TABLE IF EXISTS `passengers`;
CREATE TABLE `passengers` (
  `passenger_id` int(11) NOT NULL AUTO_INCREMENT,
  `passenger_name` varchar(255) DEFAULT NULL,
  `phone_num` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `trip_time` datetime DEFAULT NULL,
  PRIMARY KEY (`passenger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of passengers
-- ----------------------------
INSERT INTO `passengers` VALUES ('1', '张学友', '', null, '513901199608782323', '男', '1', null);

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `picture_id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('1', 'qiandaohu.jpg');
INSERT INTO `picture` VALUES ('2', 'songcheng.jpg');
INSERT INTO `picture` VALUES ('3', 'daban.jpg');
INSERT INTO `picture` VALUES ('4', 'pujidao.jpg');
INSERT INTO `picture` VALUES ('5', 'ningjingdao.jpg');
INSERT INTO `picture` VALUES ('6', 'balidao.jpg');
INSERT INTO `picture` VALUES ('7', 'emeishan.jpg');
INSERT INTO `picture` VALUES ('8', 'xiaweiyi.jpg');
INSERT INTO `picture` VALUES ('9', 'luodai.jpg');
INSERT INTO `picture` VALUES ('10', 'saibandao.jpg');
INSERT INTO `picture` VALUES ('11', 'sanya.jpg');
INSERT INTO `picture` VALUES ('12', 'daocheng.jpg');
INSERT INTO `picture` VALUES ('13', 'jiuzhaigou.jpg');
INSERT INTO `picture` VALUES ('14', 'dafo.jpg');
INSERT INTO `picture` VALUES ('15', 'kangding.jpg');
INSERT INTO `picture` VALUES ('16', 'qingchengshan.jpg');
INSERT INTO `picture` VALUES ('17', 'jinli.jpg');
INSERT INTO `picture` VALUES ('18', 'lijiang.jpg');
INSERT INTO `picture` VALUES ('19', 'huangshan.jpg');
INSERT INTO `picture` VALUES ('20', 'guilin.jpg');
INSERT INTO `picture` VALUES ('21', 'gulangyu.jpg');
INSERT INTO `picture` VALUES ('22', 'changcheng.jpg');
INSERT INTO `picture` VALUES ('23', 'zhangjiajie.jpg');
INSERT INTO `picture` VALUES ('24', 'weinisi.jpg');
INSERT INTO `picture` VALUES ('25', 'balitieta.jpg');
INSERT INTO `picture` VALUES ('26', 'huanghouzhen.jpg');
INSERT INTO `picture` VALUES ('27', 'pingdingshan.jpg');
INSERT INTO `picture` VALUES ('28', 'dizhiPark.jpg');
INSERT INTO `picture` VALUES ('29', 'zijingguangchang.jpg');
INSERT INTO `picture` VALUES ('30', 'zizhucan.jpg');
INSERT INTO `picture` VALUES ('31', 'gangzhuaobrige.jpg');
INSERT INTO `picture` VALUES ('32', 'huangdaxianci.jpg');
INSERT INTO `picture` VALUES ('33', 'nanyadao.jpg');
INSERT INTO `picture` VALUES ('34', 'laxiangguan.jpg');
INSERT INTO `picture` VALUES ('35', 'feieshan.jpg');
INSERT INTO `picture` VALUES ('36', 'wanzaimatou.jpg');
INSERT INTO `picture` VALUES ('37', 'huanglong.jpg');
INSERT INTO `picture` VALUES ('38', 'jinchuan.jpg');
INSERT INTO `picture` VALUES ('39', 'bipenggou.jpg');
INSERT INTO `picture` VALUES ('40', 'hailuogou.jpg');
INSERT INTO `picture` VALUES ('41', 'xiannvshan.jpg');
INSERT INTO `picture` VALUES ('42', 'fourGirl.jpg');
INSERT INTO `picture` VALUES ('43', 'shenmulei.png');
INSERT INTO `picture` VALUES ('44', 'wawushan.jpg');
INSERT INTO `picture` VALUES ('45', 'dagubongchuan.jpg');
INSERT INTO `picture` VALUES ('46', 'bifengxia.jpg');

-- ----------------------------
-- Table structure for scenic
-- ----------------------------
DROP TABLE IF EXISTS `scenic`;
CREATE TABLE `scenic` (
  `scenic_id` int(11) NOT NULL AUTO_INCREMENT,
  `scenic_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `scenic_type_id` int(11) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`scenic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenic
-- ----------------------------
INSERT INTO `scenic` VALUES ('1', '千岛湖', '千岛湖', '335', '住千岛湖温馨岛蝶来湖景度假酒店，享精美自助早餐•四面环湖，拥有儿童乐园、泳池、湖边沙滩', '1', '1', '1', '1');
INSERT INTO `scenic` VALUES ('2', '杭州宋城景区', '杭州西湖', '700', '宋城千古情主题酒店(杭州西湖店) + 杭州宋城景区/宋城千古情演出 + 千古情演出贵宾席 ', '1', '1', '2', '1');
INSERT INTO `scenic` VALUES ('3', '日本六日自由行', '日本大阪', '4000', '日本大阪旅游', '1', '2', '3', '1');
INSERT INTO `scenic` VALUES ('4', '普吉岛', '泰国', '2500', '泰国普吉岛+皮皮岛+珊瑚岛7日5晚跟团游', '1', '2', '4', '1');
INSERT INTO `scenic` VALUES ('5', '宁静岛', '马尔代夫', '22000', '马尔代夫W宁静岛7日5晚自由行(5钻)', '1', '2', '5', '1');
INSERT INTO `scenic` VALUES ('6', '巴厘岛', '印度尼西亚', '4000', '巴厘岛8日6晚自由行', '1', '2', '6', '1');
INSERT INTO `scenic` VALUES ('7', '峨眉山', '四川乐山', '20000', '乐山+峨眉山2日1晚跟团游·【四川青旅，质量保证】真纯玩', '1', '3', '7', '1');
INSERT INTO `scenic` VALUES ('8', '夏威夷', '美国', '3000', '基拉韦厄火山是世界上最活跃的活火山之一', '1', '2', '8', '1');
INSERT INTO `scenic` VALUES ('9', '洛带', '四川成都', '100', '洛带古镇位于成都市龙泉驿区，距离市区约18公里，是成都近郊保存最为完整的客家古镇', '1', '3', '9', '1');
INSERT INTO `scenic` VALUES ('10', '塞班岛', '美国', '7000', '美国塞班岛6日4晚自由行', '1', '2', '10', '1');
INSERT INTO `scenic` VALUES ('11', '三亚', '中国海南', '3000', '三亚6日自由行(5钻)·【春季心动价 早订礼遇】高星价优5晚连住·超人气度假型酒店任选', '1', '1', '11', '1');
INSERT INTO `scenic` VALUES ('12', '稻城亚丁', '四川省甘孜藏族自治州', '1800', '稻城亚丁三日游【真纯玩VIP10人小团、进入亚丁核心景区】', '1', '3', '12', '1');
INSERT INTO `scenic` VALUES ('13', '九寨沟', '四川省阿坝藏族羌族自治州', '1200', '成都+九寨沟3日2晚跟团游·双飞三日游 【飞机进出,不浪费浏览时间】', '1', '3', '13', '1');
INSERT INTO `scenic` VALUES ('14', '乐山大佛', '四川乐山', '500', '峨眉山+乐山+都江堰+青城山3日2晚跟团游·纯玩 纯玩 纯玩团', '1', '3', '14', '1');
INSERT INTO `scenic` VALUES ('15', '康定', '四川', '500', '★ 门票+观光车+5星酒店+4天商务专车+成都接送机...一价全含！', '1', '3', '15', '1');
INSERT INTO `scenic` VALUES ('16', '青城山', '四川成都', '300', '世界文化遗产、全国重点文物保护单位、国家重点风景名胜区、国家AAAAA级旅游景区', '1', '3', '16', '1');
INSERT INTO `scenic` VALUES ('17', '锦里古镇', '四川成都', '100', '锦里是成都武侯祠博物馆（三国历史遗迹区、锦里民俗区、西区）的一部分', '1', '3', '17', '1');
INSERT INTO `scenic` VALUES ('18', '丽江', '云南丽江', '500', '丽江市区中心海拔高度为2418米国中贵原，云中丽江', '1', '1', '18', '1');
INSERT INTO `scenic` VALUES ('19', '黄山', '安徽省黄山市', '1000', '黄山为三山五岳中三山的之一。日出，奇松、怪石、云海、温泉素称黄山“五绝”', '1', '1', '19', '1');
INSERT INTO `scenic` VALUES ('20', '桂林', '桂林市', '500', '桂林是举世闻名的旅游城市，甲天下的山水勾勒出一幅唯美的中国画卷', '1', '1', '20', '1');
INSERT INTO `scenic` VALUES ('21', '鼓浪屿', '厦门岛西南面', '3000', '鼓浪屿有许多幽谷和峭崖，沙滩、礁石、峭壁、岩峰，外形奇丽俊秀，其街道纵横交错', '1', '1', '21', '1');
INSERT INTO `scenic` VALUES ('22', '万里长城', '北京市', '200', '万里长城是中国古代的伟大建筑，是中华民族的象征。', '1', '1', '22', '1');
INSERT INTO `scenic` VALUES ('23', '张家界', '中国湖南省', '2000', '张家界是中国湖南省的省辖地级市，位于湖南西北部，澧水中上游，属武陵山脉腹地', '1', '1', '23', '1');
INSERT INTO `scenic` VALUES ('24', '威尼斯', '意大利', '2000', '意大利的威尼斯也是在世界各地都很著名的，这是一座海上的城市，风景也是很优美的。', '1', '2', '24', '1');
INSERT INTO `scenic` VALUES ('25', '巴黎铁塔', '法国巴黎', '2000', '埃菲尔铁塔是世界著名建筑、法国文化象征之一、巴黎城市地标之一', '1', '2', '25', '1');
INSERT INTO `scenic` VALUES ('26', '皇后镇', '新西兰', '3000', '皇后镇坐落在水晶般澄澈的瓦卡蒂普湖畔,四周环绕雄伟群山', '1', '2', '26', '1');
INSERT INTO `scenic` VALUES ('27', '香港太平山顶', '香港', '295', '香港太平山顶+凌霄阁+香港杜莎夫人蜡像馆半日游', '1', '4', '27', '1');
INSERT INTO `scenic` VALUES ('28', '野柳地质公园', '台湾', '118', '台北野柳地质公园+阴阳海+黄金瀑布+九份老街+猴硐一日游', '1', '4', '28', '1');
INSERT INTO `scenic` VALUES ('29', '紫荆广场', '香港', '444', '香港金紫荆广场+太平山顶+浅水湾+海洋公园一日游', '1', '4', '29', '1');
INSERT INTO `scenic` VALUES ('30', '自助餐', '澳门', '159', '澳门威尼斯人酒店沨竹Bambu自助餐', '1', '4', '30', '1');
INSERT INTO `scenic` VALUES ('31', '港珠澳大桥', '广东珠海', '398', '港珠澳大桥一日游【珠海出发-游新香港-太平山+夜游维港', '1', '4', '31', '1');
INSERT INTO `scenic` VALUES ('32', '黄大仙祠', '香港', '258', '香港+黄大仙祠+尖沙咀+太平山顶+浅水湾+金紫荆广场一日游【可选升级香港杜莎夫人蜡像馆', '1', '4', '32', '1');
INSERT INTO `scenic` VALUES ('33', '南丫岛', '香港', '364', '香港南丫岛+榕树湾渡轮码头+索罟湾一日游【 周润发故乡 离岛风情 】', '1', '4', '33', '1');
INSERT INTO `scenic` VALUES ('34', '杜莎夫人蜡像馆', '香港', '498', '香港杜莎夫人蜡像馆+维多利亚港+太平山顶一日游', '1', '4', '34', '1');
INSERT INTO `scenic` VALUES ('35', '飞鹅山', '香港', '2265', '飞鹅山观景台半日游【世界三大夜景之一 高端定制 户外之旅】', '1', '4', '35', '1');
INSERT INTO `scenic` VALUES ('36', '湾仔码头', '珠海', '108', '珠海湾仔码头/澳门环岛游/珠澳海湾游/近距离观赏港珠澳大桥', '1', '4', '36', '1');
INSERT INTO `scenic` VALUES ('37', '黄龙风景名胜区', '四川', '1458', '黄龙风景名胜区+牟尼沟风景区+都江堰+青城山4日3晚跟团游', '1', '5', '37', '1');
INSERT INTO `scenic` VALUES ('38', '金川', '四川', '380', '金川+丹巴3日2晚跟团游·3月纯玩赏金川梨花', '1', '5', '38', '1');
INSERT INTO `scenic` VALUES ('39', '毕棚沟', '四川', '330', '毕棚沟2日1晚跟团游·【毕棚沟+鹧鸪山】含价值98元·1小时滑雪', '1', '5', '39', '1');
INSERT INTO `scenic` VALUES ('40', '海螺沟', '四川', '495', '海螺沟3日2晚跟团游·', '1', '5', '40', '1');
INSERT INTO `scenic` VALUES ('41', '仙女山', '重庆', '798', '重庆+武隆3日2晚跟团游·仙女山+天坑 地缝', '1', '5', '41', '1');
INSERT INTO `scenic` VALUES ('42', '四姑娘山', '四川', '273', '四姑娘山2日1晚跟团游·纯玩 3.8节出行免女士门票', '1', '5', '42', '1');
INSERT INTO `scenic` VALUES ('43', '神木垒', '四川雅安', '285', '达瓦更扎+神木垒2日1晚跟团游', '1', '5', '43', '1');
INSERT INTO `scenic` VALUES ('44', '瓦屋山', '四川', '362', '瓦屋山+柳江古镇2日1晚跟团游', '1', '5', '44', '1');
INSERT INTO `scenic` VALUES ('45', '达古冰山地址公园', '四川', '387', '黑水+达古冰山地质公园+沟彩林谷2日1晚跟团游·观冰川雪山 纯玩团 达古冰川', '1', '5', '45', '1');
INSERT INTO `scenic` VALUES ('46', '碧峰峡', '四川雅安', '498', 'Q加·碧峰峡雲海美宿(原杨家园主题酒店)1晚+碧峰峡野生动物园门票2张', '1', '5', '46', '1');

-- ----------------------------
-- Table structure for scenictype
-- ----------------------------
DROP TABLE IF EXISTS `scenictype`;
CREATE TABLE `scenictype` (
  `scenic_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `scenic_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`scenic_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenictype
-- ----------------------------
INSERT INTO `scenictype` VALUES ('1', '国内游');
INSERT INTO `scenictype` VALUES ('2', '国外游');
INSERT INTO `scenictype` VALUES ('3', '省内游');
INSERT INTO `scenictype` VALUES ('4', '港澳台游');
INSERT INTO `scenictype` VALUES ('5', '周边游');

-- ----------------------------
-- Table structure for tickettype
-- ----------------------------
DROP TABLE IF EXISTS `tickettype`;
CREATE TABLE `tickettype` (
  `ticket_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ticket_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tickettype
-- ----------------------------
INSERT INTO `tickettype` VALUES ('1', '商务座');
INSERT INTO `tickettype` VALUES ('2', '一等座');
INSERT INTO `tickettype` VALUES ('3', '二等座');
INSERT INTO `tickettype` VALUES ('4', '硬座');
INSERT INTO `tickettype` VALUES ('5', '软卧');
INSERT INTO `tickettype` VALUES ('6', '硬卧');

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `train_id` int(11) NOT NULL AUTO_INCREMENT,
  `train_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`train_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES ('1', 'G11');
INSERT INTO `train` VALUES ('2', 'G1867');
INSERT INTO `train` VALUES ('3', 'G1677');
INSERT INTO `train` VALUES ('4', 'G1620');
INSERT INTO `train` VALUES ('5', 'G8266');

-- ----------------------------
-- Table structure for trainticket
-- ----------------------------
DROP TABLE IF EXISTS `trainticket`;
CREATE TABLE `trainticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_from` varchar(255) DEFAULT NULL,
  `ticket_to` varchar(255) DEFAULT NULL,
  `train_id` int(11) DEFAULT NULL,
  `ticket_typea` varchar(255) DEFAULT NULL,
  `ticket_typeb` varchar(255) DEFAULT NULL,
  `ticket_typec` varchar(255) DEFAULT NULL,
  `ticketa_number` int(11) DEFAULT NULL,
  `ticketb_number` int(11) DEFAULT NULL,
  `ticketc_number` int(11) DEFAULT NULL,
  `ticketa_price` varchar(255) DEFAULT NULL,
  `ticketb_price` varchar(255) DEFAULT NULL,
  `ticketc_price` varchar(255) DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trainticket
-- ----------------------------
INSERT INTO `trainticket` VALUES ('1', '北京', '成都', '1', '商务座', '一等座', '二等座', '200', '300', '400', '2000.00', '1200.00', '900.00', '06:10:00', '17:10:17');
INSERT INTO `trainticket` VALUES ('2', '成都', '北京', '1', '商务座', '一等座', '二等座', '200', '300', '400', '2000.00', '1200.00', '900.00', '08:10:05', '20:11:06');
INSERT INTO `trainticket` VALUES ('3', '成都', '上海', '2', '商务座', '一等座', '二等座', '100', '20', '0', '1922.00', '1000.00', '895.00', '10:10:11', '20:11:19');
INSERT INTO `trainticket` VALUES ('4', '北京', '成都', '3', '商务座', '一等座', '二等座', '30', '5', '2', '1500.00', '800.00', '545.00', '02:26:08', '16:26:26');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `phone_num` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', '刘德华', '15761111822', '123456', '88297379@qq.com', '1', null);
INSERT INTO `users` VALUES ('3', '张学友', '15760011822', '123456', '1209728314@qq.com', '0', null);
INSERT INTO `users` VALUES ('4', '叶丛林', '15808203316', '123456', '499475142@qq.com', '1', null);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', 'com.mp4');

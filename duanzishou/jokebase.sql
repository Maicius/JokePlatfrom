/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : jokebase

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2016-07-28 15:32:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `joke`
-- ----------------------------
DROP TABLE IF EXISTS `joke`;
CREATE TABLE `joke` (
  `jokeID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jokeID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joke
-- ----------------------------
INSERT INTO `joke` VALUES ('27', '123456', '不要看见别人长的胖了点就叫人家－－粗人', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628132226271$`ZI~5L$K8@71N8U231[(TQ.jpg', 'life');
INSERT INTO `joke` VALUES ('28', '123456', '祝那些复习得很好还想着挂科的孩子心想事成！', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628132246100$]X2{}HP[2N_6524G9CV`MV.jpg', 'school');
INSERT INTO `joke` VALUES ('29', '123456', '室友今天问我：每次遇到乞丐，他们都向我抖一下碗里的钱。。。难道这是炫耀吗？', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\201662813233131$J{~~L5`]KSC~7]C{LA}}WQ.jpg', 'sundry');
INSERT INTO `joke` VALUES ('30', '123456', '同学A：“这首词是辛弃疾写的……” 同学B：“我怎么知道，星期天吧。”.', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628132328467$FA)1F6F2FSSUJQ6A21658Y.jpg', 'others');
INSERT INTO `joke` VALUES ('31', 'admin', '人生就像打电话，不是你先挂就是我先挂.', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628141129498$@{2D}X2Z$(5R54ATD_W2WU.gif', 'life');
INSERT INTO `joke` VALUES ('32', 'admin', '「平时你都用什么手段避孕」「我的外貌」', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628141145822$]F[[CD7Z)MX1UQ7K83RH~E.gif', 'life');
INSERT INTO `joke` VALUES ('33', 'admin', '不要看见别人长的胖了点就叫人家－－粗人', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628141158660$$JTQ3A(D@IC{8(710AWD~M.jpg', 'life');
INSERT INTO `joke` VALUES ('34', 'admin', '祝那些复习得很好还想着挂科的孩子心想事成！', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\201662814121474$@{2D}X2Z$(5R54ATD_W2WU.gif', 'school');
INSERT INTO `joke` VALUES ('35', 'admin', '室友今天问我：每次遇到乞丐，他们都向我抖一下碗里的钱。。。难道这是炫耀吗？', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628141225869$`ZI~5L$K8@71N8U231[(TQ.jpg', 'life');
INSERT INTO `joke` VALUES ('36', 'admin', '同学A：“这首词是辛弃疾写的……” 同学B：“我怎么知道，星期天吧。”.', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628141237927$8BI)PLU%8S5KH_~%JNS[~U.jpg', 'others');
INSERT INTO `joke` VALUES ('37', 'admin', '一、毕业后才知道校园恋爱是最纯洁的；二、毕业后才知道知识是最重要的；三、毕业后才知道校园生活是最幸福的；四、毕业后才知道宿舍生活是最好的；五、毕业后才知道上学是最美妙的事；六、毕业后才知道学生花钱最大手大脚', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628142655418$A4VP_KMQ~{5~G[I0HDL7XJ.jpg', 'school');
INSERT INTO `joke` VALUES ('38', 'admin', '老师问学生：人生自古谁无屎，你接下一句。学生答：有谁大便不用纸。老师很生气，叫学生罚站。这时，老师看见窗外下着雪，就遗憾的说：上天下雪不下雨，雪到地上变成雨。变成雨时多麻烦，为何当初不下雨。学生说：老师吃饭不吃屎，饭到肚里变成屎。变成屎时多麻烦，为何当初不吃屎。', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628142718605$R[($WG{~(X`L)LW[MR9{{1.jpg', 'school');
INSERT INTO `joke` VALUES ('39', 'admin', '上联：话费路费宽带费费费待缴;下联：饭卡水卡公交卡卡卡等充。横批：开学破财', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628142733956$9}E5@K7M$Z[WXG7D1P7}(Y.jpg', 'school');
INSERT INTO `joke` VALUES ('40', 'admin', '生活就是要这种态度，牙再大，也要笑！', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628142749587$8BI)PLU%8S5KH_~%JNS[~U.jpg', 'life');
INSERT INTO `joke` VALUES ('41', 'admin', '妈妈语重心长的对女儿说，“从小你就不聪明，累死累活的才考上个大学，毕业后还找不到工作，现在司机要男的、编辑要男的、会计要男的、连秘书也指定要男的，妈实在为你操碎了心啊。”妈妈一抹脸，坚定的说，“所以趁现在老婆还能是女人，赶紧上岗，要不然过两年……”', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628142815435%}E~V2WKDKKJO5LM96KV68V.jpg', 'life');
INSERT INTO `joke` VALUES ('42', 'admin', '某论坛有人发帖问：喜欢上一个银行柜台MM，有啥好办法追求吗？回帖：去存钱，然后存折不拿，她会叫住你...：嗨，你的存折！楼主回眸一笑：是你的存折！！', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628142841611$5BCM%97]UUK81JB2X628%0.jpg', 'life');
INSERT INTO `joke` VALUES ('43', 'admin', '买了个变态的闹钟，重10KG。每天早上要举30下才会停叫', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628142914106(1_C2Q@V`W6]Q653M)RKHIC.jpg', 'life');
INSERT INTO `joke` VALUES ('44', 'admin', '有位非常漂亮的女同事，有天起晚了没有时间化妆便急忙冲到公司。结果那天她被记旷工了…', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628142955965)F678REPLL0`}NB5WITE`06.jpg', 'life');
INSERT INTO `joke` VALUES ('45', 'admin', '一生至少该有一次，为了某个人而忘了自己，不求有结果，不求同行，不求曾经拥有，甚至不求你爱我，只求在我最美的年华里，遇到你。------ 徐志摩', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628143037346~AH)XZBSU}YYRY9ZM~XKVKT.jpg', 'life');
INSERT INTO `joke` VALUES ('46', 'admin', '一生至少该有一次，为了某个人而忘了自己，不求有结果，不求同行，不求曾经拥有，甚至不求你爱我，只求在我最美的年华里，遇到你。------ 徐志摩', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628143056557$A{~C@VXMGO$_IAKZ{]FFNE.jpg', 'sundry');
INSERT INTO `joke` VALUES ('47', 'admin', '人生就像弈棋，一次重大的失误，则满盘皆输；人生还不如弈棋，不可能再来一局，也不能够悔棋', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\201662814319179$E82K1V{DE5~U1Q4}XHQYQE.jpg', 'sundry');
INSERT INTO `joke` VALUES ('48', 'admin', '一个小偷半夜溜进了一个戒备森严的地方 经过千辛万苦打开保险库之后，发现里面居然全都是果冻……又累又饿的小偷一怒之下吃掉所有果冻离开了，第二天当地报纸新闻头条：《震惊！精子库疯狂被盗》', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628143137453$6SW~X@RPR{)BSEVLAYB$(G.jpg', 'others');
INSERT INTO `joke` VALUES ('49', 'admin', '我有一哥们得了癌症，弥留之际把我叫到跟前说：“我死后你千万别说我是得癌症死的，得说我是得爱滋病死的...”我奇怪：“为什么？爱滋病多难听啊！”哥们说：“只有这样说才没人敢打我老婆主意。', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\201662814328201)B8SK5L9@V$1[PH0ZG6{0KW.jpg', 'others');
INSERT INTO `joke` VALUES ('50', 'admin', '最近发现一个发泄解压的好办法。那就是上厕所，上完之后，面部狰狞的对着马桶说：“你给我吃屎吧你！”然后猛冲厕所！', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628143235200_74N2SZH$JL~4@RRC)RL[05.gif', 'others');
INSERT INTO `joke` VALUES ('51', '789456123', '一只猫掉进河里，另外一只猫把它救了起来\r\n请问猫上岸后第一句话是什么?\r\n--喵~~ ', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\pictures\\2016628152533131$$JTQ3A(D@IC{8(710AWD~M.jpg', 'others');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `headImg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('7', 'admin', '123456', '10', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\images\\index_head.jpg');
INSERT INTO `user` VALUES ('8', 'lichunhui', '123456', '10', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\images\\index_head.jpg');
INSERT INTO `user` VALUES ('9', '789456123', '123456', '10', 'E:\\Java EE workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\duanzishou\\images\\index_head.jpg');

-- ----------------------------
-- Table structure for `user_joke`
-- ----------------------------
DROP TABLE IF EXISTS `user_joke`;
CREATE TABLE `user_joke` (
  `userID` int(11) NOT NULL,
  `jokeID` int(11) NOT NULL,
  PRIMARY KEY (`userID`,`jokeID`),
  KEY `jokeID` (`jokeID`),
  CONSTRAINT `jokeID` FOREIGN KEY (`jokeID`) REFERENCES `joke` (`jokeID`),
  CONSTRAINT `userID` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_joke
-- ----------------------------

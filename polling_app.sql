/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : polling_app

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2020-01-21 16:13:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for api_list
-- ----------------------------
DROP TABLE IF EXISTS `api_list`;
CREATE TABLE `api_list` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `visitor_id` int(11) DEFAULT NULL COMMENT '访问评论id(被选择的id)',
  `owner` varchar(255) DEFAULT NULL COMMENT '评论人(被选择的)',
  `subDescription` varchar(255) DEFAULT NULL COMMENT '描述',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `updatedAt` varchar(255) DEFAULT NULL COMMENT '日期',
  `user_id` int(11) DEFAULT NULL COMMENT '登陆id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '图片',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_list
-- ----------------------------
INSERT INTO `api_list` VALUES ('00000000001', '208', '卡色', '那是一种内在的东西， 他们到达不了，也无法触及的', 'Alipay', '2019-07-11', '1', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png');
INSERT INTO `api_list` VALUES ('00000000002', '209', 'cipchk', '希望是一个好东西，也许是最好的，好东西是不会消亡的', 'Angular', '2019-07-11', '1', 'https://gw.alipayobjects.com/zos/rmsportal/zOsKZmFRdUtvpqCImOVY.png', 'https://gw.alipayobjects.com/zos/rmsportal/zOsKZmFRdUtvpqCImOVY.png');
INSERT INTO `api_list` VALUES ('00000000003', '210', '瑞大昌', '生命就像一盒巧克力，结果往往出人意料', 'Ant Design', '2019-07-11', '1', 'https://gw.alipayobjects.com/zos/rmsportal/dURIMkkrRFpPgTuzkwnB.png', 'https://gw.alipayobjects.com/zos/rmsportal/dURIMkkrRFpPgTuzkwnB.png');
INSERT INTO `api_list` VALUES ('00000000004', '211', '猴赛雷', '城镇中有那么多的酒馆，她却偏偏走进了我的酒馆', 'Ant Design Pro', '2019-07-11', '1', 'https://gw.alipayobjects.com/zos/rmsportal/sfjbOqnsXXJgNCjCzDBL.png', 'https://gw.alipayobjects.com/zos/rmsportal/sfjbOqnsXXJgNCjCzDBL.png');
INSERT INTO `api_list` VALUES ('00000000005', '1', 'hahajj', '那时候我只会想自己想要什么，从不想自己拥有什么', 'Bootstrap', '2019-07-11', '1', 'https://gw.alipayobjects.com/zos/rmsportal/siCrBXXhmvTQGWPNLBow.png', 'https://gw.alipayobjects.com/zos/rmsportal/siCrBXXhmvTQGWPNLBow.png');
INSERT INTO `api_list` VALUES ('00000000006', '1', 'hahajj', '天意如此，如欲何为', 'Spring', '2019-07-11', '1', 'http://pic0.tianmaying.com/tags/8bc5a16dbbeb127c043b3c5106a08ff7.png', 'http://pic0.tianmaying.com/tags/8bc5a16dbbeb127c043b3c5106a08ff7.png');
INSERT INTO `api_list` VALUES ('00000000007', '1', 'hahajj', '天意如此，如欲何为', 'Spring', '2019-07-11', '1', 'http://pic0.tianmaying.com/tags/8bc5a16dbbeb127c043b3c5106a08ff7.png', 'http://pic0.tianmaying.com/tags/8bc5a16dbbeb127c043b3c5106a08ff7.png');
INSERT INTO `api_list` VALUES ('00000000008', '208', '卡色', '那是一种内在的东西， 他们到达不了，也无法触及的', 'Alipay', '2019-07-11', '207', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png');
INSERT INTO `api_list` VALUES ('00000000009', '208', '卡色', '那是一种内在的东西， 他们到达不了，也无法触及的', 'Alipay', '2019-07-11', '207', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png');
INSERT INTO `api_list` VALUES ('00000000010', '208', '卡色', '那是一种内在的东西， 他们到达不了，也无法触及的', 'Alipay', '2019-07-11', '207', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png');
INSERT INTO `api_list` VALUES ('00000000011', '208', '卡色', '那是一种内在的东西， 他们到达不了，也无法触及的', 'Alipay', '2019-07-11', '207', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png');
INSERT INTO `api_list` VALUES ('00000000012', '208', '卡色', '那是一种内在的东西， 他们到达不了，也无法触及的', 'Alipay', '2019-07-11', '207', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png');
INSERT INTO `api_list` VALUES ('00000000013', '208', '卡色', '那是一种内在的东西，他们到达不了，也无法触及的', 'Alipay', '2019-07-11', '207', 'https://gw.alipayobjects.com/zos/rmsportal/dURIMkkrRFpPgTuzkwnB.png', 'https://gw.alipayobjects.com/zos/rmsportal/dURIMkkrRFpPgTuzkwnB.png');
INSERT INTO `api_list` VALUES ('00000000014', '210', '瑞大昌', '1', '1', '2019-07-11', '207', null, null);
INSERT INTO `api_list` VALUES ('00000000015', '208', '卡色', '瑞达昌是傻吊', '瑞达成', '2019-07-11', '207', null, null);
INSERT INTO `api_list` VALUES ('00000000016', '208', '卡色', '瑞达昌是傻吊', '12', '2019-07-11', '207', null, null);
INSERT INTO `api_list` VALUES ('00000000017', '210', '瑞大昌', '瑞达昌是傻吊', '1', '2019-07-11', '207', null, null);
INSERT INTO `api_list` VALUES ('00000000018', '210', '瑞大昌', '瑞达昌是傻吊', '12', '2019-08-06', '210', 'https://gw.alipayobjects.com/zos/rmsportal/dURIMkkrRFpPgTuzkwnB.png', 'https://gw.alipayobjects.com/zos/rmsportal/dURIMkkrRFpPgTuzkwnB.png');
INSERT INTO `api_list` VALUES ('00000000019', '210', '瑞大昌', '瑞达昌是傻吊', '1212', '2019-08-06', '210', null, null);
INSERT INTO `api_list` VALUES ('00000000020', '210', '瑞大昌', '瑞达昌是傻吊', '12', '2019-08-06', '210', null, null);
INSERT INTO `api_list` VALUES ('00000000021', '210', '瑞大昌', '瑞达昌是傻吊', '11', '2019-08-06', '210', null, null);
INSERT INTO `api_list` VALUES ('00000000022', '210', '瑞大昌', '瑞达昌是傻吊', '1c', '2019-08-06', '210', null, null);
INSERT INTO `api_list` VALUES ('00000000023', '210', '瑞大昌', '瑞达昌是傻吊', '122', '2019-08-06', '210', null, null);
INSERT INTO `api_list` VALUES ('00000000024', '210', '瑞大昌', '瑞达昌是傻吊', '1ff', '2019-08-06', '210', null, null);
INSERT INTO `api_list` VALUES ('00000000025', '208', '卡色', '瑞达昌是傻吊', '你去死吧', '2019-08-06', '210', null, null);
INSERT INTO `api_list` VALUES ('00000000026', '210', '瑞大昌', '瑞达昌是傻吊', '你去死吧', '2019-08-21', '210', null, null);
INSERT INTO `api_list` VALUES ('00000000027', '210', '瑞大昌', '12', '12', '2019-08-07', '210', null, null);
INSERT INTO `api_list` VALUES ('00000000030', '208', '??', '12', '????', '2019-07-31', '1', null, null);
INSERT INTO `api_list` VALUES ('00000000031', '1', 'hahajj', '12', '12', '2019-08-15', '1', null, null);
INSERT INTO `api_list` VALUES ('00000000032', '210', '瑞大昌', '快来与尔等决一死战', '吾乃河北上将颜良', '2019-08-16', '207', null, null);
INSERT INTO `api_list` VALUES ('00000000033', '1', 'hahajj', '吾即大灾变', '必须有人浴血奋战，世上才有自由可言', '2019-08-29', '207', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/timg.jpg', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/timg.jpg');
INSERT INTO `api_list` VALUES ('00000000034', '1', 'hahajj', '12', '天意如此', '2019-08-07', '207', null, null);

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `articles_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `articles_contents` varchar(20000) DEFAULT NULL COMMENT '文章内容',
  `articles_writer_name` varchar(255) DEFAULT NULL COMMENT '作者',
  `articles_writer_id` int(11) DEFAULT NULL COMMENT '作者id',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `star` int(11) DEFAULT '0',
  `likes` int(11) DEFAULT '0',
  `message` int(11) DEFAULT '0',
  `updatedAt` datetime DEFAULT NULL,
  `articles_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('但为君故(76)', ' 布宁霍然起身，眼中流露出难以置信的表情，“有人……有人启动了磁场！” \r\n\r\n        这时那乍听类似“风声”的响动越发地清晰起来，更像是什么巨型的设备在运转。 \r\n\r\n        布宁冲到窗边，掀起窗帘往外看去，他们所在的这座环形建筑正一盏一盏地亮起红灯，此刻如果从天空里俯瞰下去，密集的红灯呈同心圆的结构。 \r\n\r\n        路明非这才记起布宁曾经说过的，023号城市被建立的目的是在强磁场下实现可控的核聚变，它的核心是一座跨时代的超强磁场，也就是他们此刻所在的这座建筑。 \r\n\r\n        这时他面前杯中的银质搅棒已经震动起来了，屋子里每件银质餐具都在震荡，到处都是叮叮当当的声音。女士们脖子间的项链也悬浮起来，男士们的家徽戒指上传来一阵阵的电麻感。 \r\n\r\n        布宁看到的更为可怕，门外的铲雪车虽然喷着黑烟高声吼叫，却被某种看不见的力量拖向他们的门口。 ', '瑞大昌', '210', '1', '1', '1', '2', '2019-08-06 16:49:23', 'https://www.baidu.com/');
INSERT INTO `articles` VALUES ('但为君故(77)', '瓦洛佳，捡起他的枪，回忆一下这东西怎么用，然后跟上我。”安娜刚刚撂倒了一名格鲁乌战士，把他的武器踢给了瓦洛佳。\r \r \r 瓦洛佳的娃娃脸上仍旧带着几分腼腆羞涩，但检查枪支的麻利手法足以说明这家伙也曾在战场上出生入死过，紧跟着他抬手一枪，子弹从安娜的肩膀上方飞过，打穿了一名格鲁乌战士的大腿。安娜上前几步，高跟靴子踩着那名战士的头，补一枪要了他的命', '瑞大昌', '210', '2', '2', '1', '8', '2019-08-06 13:49:35', 'https://www.baidu.com/');
INSERT INTO `articles` VALUES ('但为君故(78)', '中国日报网8月7日电 北京时间8月6日，美国财政部宣布将中国列为“汇率操纵国”。数小时后，中国人民银行发表声明回应称，这一标签不符合美财政部自己制订的所谓“汇率操纵国”的量化标准，是任性的单边主义和保护主义行为，严重破坏国际规则，将对全球经济金融产生重大影响。中方对此深表遗憾。', '瑞大昌', '210', '3', '30', '228', '16', '2019-08-05 17:10:22', 'https://www.baidu.com/');
INSERT INTO `articles` VALUES ('但为君故(79)', '美国财政部的任性之举也在美国国内引发了不满和焦虑。美国媒体认为，美财政部把中国列为“汇率操纵国”的举动不仅没有任何意义，而且会削弱美国政府的公信力、损害美国经济的发展前景。', '瑞大昌', '210', '4', '28', '331', '10', '2019-08-04 17:11:29', 'https://www.baidu.com/');
INSERT INTO `articles` VALUES ('汝等看好了', '《中国电《中国电影报》今早（8月7日）引述中国国家电影局的消息指出，将暂停大陆影片和人员参与2019年第56届金马影展影报》今早（8月7日）引述中国国家电影局的消息指出，将暂停大陆影片和人员参与2019年第56届金马影展。', 'hahajj', '1', '5', '0', '0', '0', '2019-08-30 17:30:08', 'https://www.tslang.cn/');
INSERT INTO `articles` VALUES ('我来自虚空', '消息一出，消息一出，激起台湾千层浪。蓝绿营媒体都大力报道此事，但表态大相径庭激起台湾千层浪。蓝绿营媒体都大力报道此事，但表态大相径庭。', 'hahajj', '1', '6', '0', '0', '0', '2019-08-22 17:31:34', 'https://www.tslang.cn/');
INSERT INTO `articles` VALUES ('隆中对', '亮躬耕陇亩，好为《梁父吟》。身高八尺，每自比于管仲、乐毅，时人莫之许也。惟博陵崔州平、颍川徐庶元直与亮友善，谓为信然。\r\n时先主屯新野。徐庶见先主，先主器之，谓先主曰：“诸葛孔明者，卧龙也，将军岂愿见之乎？”先主曰：“君与俱来。”庶曰：“此人可就见，不可屈致也。将军宜枉驾顾之。”由是先主遂诣亮，凡三往，乃见。因屏人日：“汉室倾颓，奸臣窃命，主上蒙尘。孤不度德量力，欲信大义于天大，而智太短浅，遂用猖獗，至于今日。然志犹未已，君谓计将安出？', '孔明', '207', '7', '888', '999', '1000', '2019-08-01 10:21:46', 'https://www.longzhongdui.cn/');
INSERT INTO `articles` VALUES ('出师表', '先帝创业未半而中道崩殂，今天下三分，益州疲弊，此诚危急存亡之秋也。然侍卫之臣不懈于内，忠志之士忘身于外者，盖追先帝之殊遇，欲报之于陛下也。诚宜开张圣听，以光先帝遗德，恢弘志士之气，不宜妄自菲薄，引喻失义，以塞忠谏之路也。\r\n\r\n宫中府中，俱为一体，陟罚臧否，不宜异同。若有作奸犯科及为忠善者，宜付有司论其刑赏，以昭陛下平明之理，不宜偏私，使内外异法也。\r\n\r\n侍中、侍郎郭攸之、费祎、董允等，此皆良实，志虑忠纯，是以先帝简拔以遗陛下。愚以为宫中之事，事无大小，悉以咨之，然后施行，必能裨补阙漏，有所广益。\r\n\r\n将军向宠，性行淑均，晓畅军事，试用于昔日，先帝称之曰能，是以众议举宠为督。愚以为营中之事，悉以咨之，必能使行阵和睦，优劣得所。\r\n\r\n亲贤臣，远小人，此先汉所以兴隆也；亲小人，远贤臣，此后汉所以倾颓也。先帝在时，每与臣论此事，未尝不叹息痛恨于桓、灵也。侍中、尚书、长史、参军，此悉贞良死节之臣，愿陛下亲之信之，则汉室之隆，可计日而待也。\r\n\r\n臣本布衣，躬耕于南阳，苟全性命于乱世，不求闻达于诸侯。先帝不以臣卑鄙，猥自枉屈，三顾臣于草庐之中，咨臣以当世之事，由是感激，遂许先帝以驱驰。后值倾覆，受任于败军之际，奉命于危难之间，尔来二十有一年矣。\r\n\r\n先帝知臣谨慎，故临崩寄臣以大事也。受命以来，夙夜忧叹，恐托付不效，以伤先帝之明，故五月渡泸，深入不毛。今南方已定，兵甲已足，当奖率三军，北定中原，庶竭驽钝，攘除奸凶，兴复汉室，还于旧都。此臣所以报先帝而忠陛下之职分也。至于斟酌损益，进尽忠言，则攸之、祎、允之任也。\r\n\r\n愿陛下托臣以讨贼兴复之效，不效，则治臣之罪，以告先帝之灵。若无兴德之言，则责攸之、祎、允等之慢，以彰其咎；陛下亦宜自谋，以咨诹善道，察纳雅言，深追先帝遗诏，臣不胜受恩感激。\r\n\r\n今当远离，临表涕零，不知所言。', '孔明', '207', '8', '666', '1000', '999', '2019-08-13 10:24:26', 'https://www.qqsanguocn/');
INSERT INTO `articles` VALUES ('出师再表', '先帝深虑汉、贼不两立，王业不偏安，故托臣以讨贼也。以先帝之明，量臣之才，固知臣伐贼，才弱敌强也。然不伐贼，王业亦亡。惟坐而待亡，孰与伐之？是故托臣而弗疑也。臣受命之日，寝不安席，食不甘味。思惟北征。宜先入南。故五月渡泸，深入不毛，并日而食；臣非不自惜也，顾王业不可得偏安于蜀都，故冒危难，以奉先帝之遗意也，而议者谓为非计。今贼适疲于西，又务于东，兵法乘劳，此进趋之时也。谨陈其事如左：\r\n\r\n高帝明并日月，谋臣渊深，然涉险被创，危然后安。今陛下未及高帝，谋臣不如良、平，而欲以长策取胜，坐定天下，此臣之未解一也。\r\n\r\n刘繇、王朗各据州郡，论安言计，动引圣人，群疑满腹，众难塞胸，今岁不战，明年不征，使孙策坐大，遂并江东，此臣之未解二也。\r\n\r\n曹操智计，殊绝于人，其用兵也，仿佛孙、吴，然困于南阳，险于乌巢，危于祁连，逼于黎阳，几败北山，殆死潼关，然后伪定一时耳。况臣才弱，而欲以不危而定之，此臣之未解三也。曹操五攻昌霸不下，四越巢湖不成，任用李服而李服图之，委任夏侯而夏侯败亡，先帝每称操为能，犹有此失，况臣驽下，何能必胜？此臣之未解四也。\r\n\r\n自臣到汉中，中间期年耳，然丧赵云、阳群、马玉、阎芝、丁立、白寿、刘郃、邓铜等及曲长、屯将七十余人，突将、无前、賨叟、青羌、散骑、武骑一千余人。此皆数十年之内所纠合四方之精锐，非一州之所有；若复数年，则损三分之二也，当何以图敌？此臣之未解五也。\r\n\r\n今民穷兵疲，而事不可息；事不可息，则住与行劳费正等。而不及今图之，欲以一州之地，与贼持久，此臣之未解六也。\r\n\r\n夫难平者，事也。昔先帝败军于楚，当此时，曹操拊手，谓天下以定。然后先帝东连吴越，西取巴蜀，举兵北征，夏侯授首，此操之失计，而汉事将成也。然后吴更违盟，关羽毁败，秭归蹉跌，曹丕称帝。凡事如是，难可逆见。臣鞠躬尽瘁，死而后已。至于成败利钝，非臣之明所能逆睹也', '孔明', '207', '9', '777', '888', '998', '2019-08-07 10:25:09', 'https://www.tssbs.cn/');
INSERT INTO `articles` VALUES ('生活不易，喵喵叹气', '无能的靴子在罗马迷失方向\n愚钝，愚钝的人啊\n买卖汗水\n将思想磨成面粉\n摒弃柔风\n鞭笞羸弱的花\n\n心中的银子被谎言火化\n黄金打的镣铐锁住了疲乏\n层叠的欲望，脱缰的马\n火把不停地干呕着:\n你拼了命地唾弃鲜活的瑕疵\n嘲笑那些溺水野鸭\n\n将金箔贴在脸上\n佯装成母亲的宠儿吧\n这无可救药的蠢材:\n滚出罗马\n去追寻昨日\n被你早已燃尽的柔风\n与火把', '杨武阳', '212', '10', '0', '0', '0', '2019-07-30 11:27:38', 'https://www.qq_wx.cn/');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `pub_date` date NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  KEY `FKpxk2jtysqn41oop7lvxcp6dqq` (`user_id`),
  CONSTRAINT `FKpxk2jtysqn41oop7lvxcp6dqq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `用户名` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', '你真帅', '成功完成任务！奖励100W美刀', '7', '2020-10-18', null);
INSERT INTO `blog` VALUES ('2', '你真好', '成功完成任务！奖励杀手套装碎片*100', '8', '2018-10-12', null);
INSERT INTO `blog` VALUES ('3', '33', '充值成功！200毛', '4', '2018-10-20', null);
INSERT INTO `blog` VALUES ('0', '1去11', '充值成功！200兆', '2', '2018-10-18', null);
INSERT INTO `blog` VALUES ('4', '123', '充值成功！200W', '2', '2018-11-16', null);

-- ----------------------------
-- Table structure for chart
-- ----------------------------
DROP TABLE IF EXISTS `chart`;
CREATE TABLE `chart` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `create_time` varchar(0) NOT NULL,
  `room_id` int(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_type` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chart
-- ----------------------------
INSERT INTO `chart` VALUES ('0000000001', '1', '1', '111', '', '1', '0', '2');
INSERT INTO `chart` VALUES ('0000000002', '1', '1', '222', '', '1', '0', '2');
INSERT INTO `chart` VALUES ('0000000004', 'hahajj', '2', 'hahajj已连接', '', '1', '0', '0');
INSERT INTO `chart` VALUES ('0000000005', 'hahajj', '2', '121212', '', '1', '0', '1');
INSERT INTO `chart` VALUES ('0000000006', '1', '1', '222', '', '1', '0', '2');
INSERT INTO `chart` VALUES ('0000000007', '1', '1', '1已连接', '', '1', '0', '2');
INSERT INTO `chart` VALUES ('0000000008', 'hahajj', '2', 'hahajj已连接', '', '1', '0', '0');
INSERT INTO `chart` VALUES ('0000000009', '1', '1', '1已连接', '', '1', '0', '2');
INSERT INTO `chart` VALUES ('0000000010', 'hahajj', '2', 'hahajj已连接', '', '2', '0', '0');
INSERT INTO `chart` VALUES ('0000000011', '小夫胖虎', '1', '小夫胖虎已连接', '', '2', '0', '0');
INSERT INTO `chart` VALUES ('0000000012', 'hahajj', '2', '胖虎你个煞笔', '', '2', '0', '1');
INSERT INTO `chart` VALUES ('0000000013', '小夫胖虎', '1', '你妈死了', '', '2', '0', '2');
INSERT INTO `chart` VALUES ('0000000014', 'hahajj', '2', 'hahajj已连接', '', '3', '0', '0');
INSERT INTO `chart` VALUES ('0000000015', 'hahajj', '2', '', '', '3', '0', '1');
INSERT INTO `chart` VALUES ('0000000016', 'hahajj', '2', '111', '', '3', '0', '1');
INSERT INTO `chart` VALUES ('0000000017', 'hahajj', '2', '你吗炸了', '', '3', '0', '1');
INSERT INTO `chart` VALUES ('0000000018', '小夫胖虎', '1', '小夫胖虎已连接', '', '3', '0', '0');
INSERT INTO `chart` VALUES ('0000000019', '小夫胖虎', '1', '你妈死了', '', '3', '0', '2');
INSERT INTO `chart` VALUES ('0000000020', 'hahajj', '2', '狗比玩意', '', '3', '0', '1');
INSERT INTO `chart` VALUES ('0000000021', '小夫胖虎', '1', 'fuck U', '', '3', '0', '2');
INSERT INTO `chart` VALUES ('0000000022', 'hahajj', '2', 'hahajj已进入4号房间', '', '4', '0', '0');
INSERT INTO `chart` VALUES ('0000000023', '小夫', '1', '小夫已进入[object HTMLInputElement]号房间', '', '4', '0', '0');
INSERT INTO `chart` VALUES ('0000000024', '小夫', '1', '煞笔', '', '4', '0', '2');
INSERT INTO `chart` VALUES ('0000000025', 'hahajj', '2', 'hahajj已进入555号房间', '', '555', '0', '0');
INSERT INTO `chart` VALUES ('0000000026', '小夫', '1', '小夫已进入555号房间', '', '555', '0', '0');
INSERT INTO `chart` VALUES ('0000000027', '小夫', '1', '傻吊', '', '555', '0', '2');
INSERT INTO `chart` VALUES ('0000000028', 'hahajj', '2', '你妈死了！', '', '555', '0', '1');
INSERT INTO `chart` VALUES ('0000000029', '小夫', '1', '丢雷老牟', '', '555', '0', '2');
INSERT INTO `chart` VALUES ('0000000030', 'hahajj', '2', '它是一个表达式\n\n该表达式被执行后，返回一个函数\n\n函数的入参分别为 targe、name 和 descriptor\n\n执行该函数后，可能返回 descriptor 对象，用于配置 target 对象　', '', '555', '0', '1');
INSERT INTO `chart` VALUES ('0000000031', '胖虎', '1', '胖虎已进入555号房间', '', '555', '0', '0');
INSERT INTO `chart` VALUES ('0000000032', 'hahajj', '2', 'hahajj已进入555号房间', '', '555', '0', '0');
INSERT INTO `chart` VALUES ('0000000033', 'hahajj', '2', 'hahajj已进入666号房间', '', '666', '0', '0');
INSERT INTO `chart` VALUES ('0000000034', '胖虎', '1', '胖虎已进入666号房间', '', '666', '0', '0');
INSERT INTO `chart` VALUES ('0000000035', 'hahajj', '2', '欢迎司马胖虎进入房间！', '', '666', '0', '1');
INSERT INTO `chart` VALUES ('0000000036', 'hahajj', '2', '鼓掌！！', '', '666', '0', '1');
INSERT INTO `chart` VALUES ('0000000037', '胖虎', '1', '鼓尼玛 蠢驴', '', '666', '0', '2');
INSERT INTO `chart` VALUES ('0000000038', '小夫', '1', '小夫已进入666号房间', '', '666', '0', '0');
INSERT INTO `chart` VALUES ('0000000039', 'hahajj', '2', '欢迎 弱智小夫进入房间！', '', '666', '0', '1');
INSERT INTO `chart` VALUES ('0000000040', '小夫', '1', '你妈死了！', '', '666', '0', '2');
INSERT INTO `chart` VALUES ('0000000041', '胖虎', '1', '你妈死了！！！', '', '666', '0', '2');
INSERT INTO `chart` VALUES ('0000000042', 'hahajj', '2', '你们没妈！！！！！！！', '', '666', '0', '1');
INSERT INTO `chart` VALUES ('0000000043', '小夫', '1', '小夫已进入0号房间', '', '0', '0', '0');
INSERT INTO `chart` VALUES ('0000000044', '胖虎', '1', '胖虎已进入1号房间', '', '1', '0', '0');
INSERT INTO `chart` VALUES ('0000000045', '大熊', '1', '大熊已进入2号房间', '', '2', '0', '0');
INSERT INTO `chart` VALUES ('0000000046', 'hahajj', '2', 'hahajj已进入2号房间', '', '2', '0', '0');
INSERT INTO `chart` VALUES ('0000000047', 'hahajj', '2', 'hahajj已进入1号房间', '', '1', '0', '0');
INSERT INTO `chart` VALUES ('0000000048', 'hahajj', '2', 'hahajj已进入2号房间', '', '2', '0', '0');
INSERT INTO `chart` VALUES ('0000000049', 'hahajj', '2', 'hahajj已进入2号房间', '', '2', '0', '0');
INSERT INTO `chart` VALUES ('0000000050', '1', '1', '1', '', '1', '0', '2');
INSERT INTO `chart` VALUES ('0000000051', '12', '1', '1212', '', '12', '0', '2');
INSERT INTO `chart` VALUES ('0000000052', 'hahajj', '2', 'hahajj已进入1号房间', '', '1', '0', '0');

-- ----------------------------
-- Table structure for choices
-- ----------------------------
DROP TABLE IF EXISTS `choices`;
CREATE TABLE `choices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(40) NOT NULL,
  `poll_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_choices_poll_id` (`poll_id`),
  CONSTRAINT `fk_choices_poll_id` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choices
-- ----------------------------
INSERT INTO `choices` VALUES ('1', '我是1', '1');
INSERT INTO `choices` VALUES ('2', '我是2', '1');
INSERT INTO `choices` VALUES ('3', '我是3', '1');
INSERT INTO `choices` VALUES ('4', '1', '2');
INSERT INTO `choices` VALUES ('5', '2', '2');
INSERT INTO `choices` VALUES ('6', '3', '2');
INSERT INTO `choices` VALUES ('7', '1', '3');
INSERT INTO `choices` VALUES ('8', '1', '3');
INSERT INTO `choices` VALUES ('9', '1', '3');
INSERT INTO `choices` VALUES ('10', '1', '4');
INSERT INTO `choices` VALUES ('11', '11', '4');
INSERT INTO `choices` VALUES ('12', '颜良', '5');
INSERT INTO `choices` VALUES ('13', '文丑', '5');
INSERT INTO `choices` VALUES ('14', '121', '6');
INSERT INTO `choices` VALUES ('15', '212', '6');
INSERT INTO `choices` VALUES ('16', '212', '7');
INSERT INTO `choices` VALUES ('17', '12', '7');
INSERT INTO `choices` VALUES ('18', '121', '7');
INSERT INTO `choices` VALUES ('19', '212', '7');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `totalGold` int(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL COMMENT '签名',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `group_name` varchar(255) DEFAULT NULL COMMENT '分组',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `address_province` varchar(255) DEFAULT NULL,
  `address_city` varchar(255) DEFAULT NULL,
  `tag_nums` varchar(255) DEFAULT NULL COMMENT '标签',
  `team_nums` varchar(255) DEFAULT NULL,
  `role_type` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', '1', '111111', null, 'hahajj', '吾及死亡之翼，吾及大灾变', '哈哈', '你好', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190807152905.jpg', '泰瑞亚', '狮子拱门', '4,5', '13,14', '1');
INSERT INTO `login` VALUES ('206', '183', '111111', null, 'admin', '我是超管', null, '111', 'https://gw.alipayobjects.com/zos/rmsportal/BiazfanxmamNRoxxVxka.png', '上海', '虹桥', '4,5', '1,2', '1');
INSERT INTO `login` VALUES ('207', '`121212', '111111', null, '孔明', '天意如此', '知天易，逆天难', '观今夜天象，知天下大事，雷公助我！!', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/u=293554882,712183633&fm=26&gp=0.jpg', '荆州', '隆中', '2,3', '7,8,9,10,11,12', '1');
INSERT INTO `login` VALUES ('208', '186', '111111', null, '卡色', null, null, null, 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190807121349.jpg', null, null, null, null, null);
INSERT INTO `login` VALUES ('209', '187', '111111', null, 'cipchk', null, null, null, 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190807121349.jpg', null, null, null, null, null);
INSERT INTO `login` VALUES ('210', '181', '111111', null, '瑞大昌', '超！化意志为利刃！', '我是大傻吊', '我是瑞达昌，快和我来 一起唱', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190807121349.jpg', '加利福尼亚', '奥克兰', '1,6,7', '1,2,3,4', '2');
INSERT INTO `login` VALUES ('211', '1810', '111111', null, '猴赛雷', null, null, null, 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190807121349.jpg', null, null, null, null, '2');
INSERT INTO `login` VALUES ('212', '1899', '111111', null, '杨武阳', '逊', '我现在就处于那样的时间，真的', '你看我看你', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190808111947.jpg', '江苏', '南京', '10', '1,2', '2');
INSERT INTO `login` VALUES ('213', '11', '111111', null, 'ha', '1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for polls
-- ----------------------------
DROP TABLE IF EXISTS `polls`;
CREATE TABLE `polls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question` varchar(140) NOT NULL,
  `expiration_date_time` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of polls
-- ----------------------------
INSERT INTO `polls` VALUES ('1', '', '2019-10-17 16:01:01', '2019-10-23 16:01:05', '2019-10-31 16:01:07', '1', '1');
INSERT INTO `polls` VALUES ('2', '', '2019-10-16 10:25:38', '2019-10-15 08:25:38', '2019-10-15 08:25:38', '2', '2');
INSERT INTO `polls` VALUES ('3', '1111111111111', '2019-10-22 11:20:22', '2019-10-21 06:24:04', '2019-10-21 06:24:04', '2', '2');
INSERT INTO `polls` VALUES ('4', '1111111', '2019-10-22 06:24:23', '2019-10-21 06:24:28', '2019-10-21 06:24:28', '2', '2');
INSERT INTO `polls` VALUES ('5', '吾乃河北上将颜良文丑', '2019-10-24 01:29:30', '2019-10-23 01:29:30', '2019-10-23 01:29:30', '1', '1');
INSERT INTO `polls` VALUES ('6', '12', '2019-10-30 06:01:26', '2019-10-29 06:01:26', '2019-10-29 06:01:26', '1', '1');
INSERT INTO `polls` VALUES ('7', '121', '2019-10-30 06:35:24', '2019-10-29 06:35:24', '2019-10-29 06:35:24', '1', '1');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` char(255) DEFAULT NULL,
  `fun` int(255) NOT NULL,
  `recordId` int(11) NOT NULL,
  PRIMARY KEY (`recordId`,`id`),
  KEY `recordId` (`recordId`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1', '1543198671120', '2', '1');
INSERT INTO `record` VALUES ('3', '1543198671120', '1', '207');
INSERT INTO `record` VALUES ('4', '1543198671120', '1', '207');
INSERT INTO `record` VALUES ('6', '1543198671120', '3', '207');
INSERT INTO `record` VALUES ('7', '1543198671120', '25', '207');
INSERT INTO `record` VALUES ('8', '1543198671120', '25', '207');
INSERT INTO `record` VALUES ('9', '1543198671120', '25', '207');
INSERT INTO `record` VALUES ('10', '1543198671120', '25', '207');
INSERT INTO `record` VALUES ('11', '1543198671120', '25', '207');
INSERT INTO `record` VALUES ('12', '1543198671120', '13', '207');
INSERT INTO `record` VALUES ('13', '1543198671120', '1', '207');
INSERT INTO `record` VALUES ('14', '1543198671120', '1', '207');
INSERT INTO `record` VALUES ('15', '1543198671120', '1', '207');
INSERT INTO `record` VALUES ('16', '1543198671120', '1', '207');
INSERT INTO `record` VALUES ('17', '1543198671120', '1', '207');
INSERT INTO `record` VALUES ('18', '1543198671120', '3', '207');
INSERT INTO `record` VALUES ('19', '1543198671120', '3', '207');
INSERT INTO `record` VALUES ('20', '1543198671120', '85', '207');
INSERT INTO `record` VALUES ('21', '1543198671120', '88', '207');
INSERT INTO `record` VALUES ('22', '1543198671120', '55', '207');
INSERT INTO `record` VALUES ('23', '1543198671120', '1', '207');
INSERT INTO `record` VALUES ('24', '1543198671120', '10', '207');
INSERT INTO `record` VALUES ('25', '1543198671120', '25', '207');
INSERT INTO `record` VALUES ('26', '1543198671120', '20', '207');
INSERT INTO `record` VALUES ('27', '1543200106157', '25', '207');
INSERT INTO `record` VALUES ('28', '1543200139881', '250', '207');
INSERT INTO `record` VALUES ('29', '1543200149176', '255', '207');
INSERT INTO `record` VALUES ('30', '1543200219320', '25', '207');
INSERT INTO `record` VALUES ('31', '1543200220392', '25', '207');
INSERT INTO `record` VALUES ('32', '1543200221456', '25', '207');
INSERT INTO `record` VALUES ('33', '1543200221848', '25', '207');
INSERT INTO `record` VALUES ('34', '1543200222057', '25', '207');
INSERT INTO `record` VALUES ('35', '1543200222248', '25', '207');
INSERT INTO `record` VALUES ('36', '1543200222433', '25', '207');
INSERT INTO `record` VALUES ('37', '1543200222616', '25', '207');
INSERT INTO `record` VALUES ('38', '1543200224896', '20', '207');
INSERT INTO `record` VALUES ('39', '1543200225463', '20', '207');
INSERT INTO `record` VALUES ('40', '1543200225816', '20', '207');
INSERT INTO `record` VALUES ('41', '1543200225992', '20', '207');
INSERT INTO `record` VALUES ('42', '1543200226192', '20', '207');
INSERT INTO `record` VALUES ('43', '1543201563872', '10', '207');
INSERT INTO `record` VALUES ('44', '1543201595897', '25', '207');
INSERT INTO `record` VALUES ('45', '1543201651063', '1', '207');
INSERT INTO `record` VALUES ('46', '1543210364851', '25', '207');
INSERT INTO `record` VALUES ('47', '1544759645749', '99', '207');
INSERT INTO `record` VALUES ('5', '1543198671120', '1', '210');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_roles_name` (`name`),
  UNIQUE KEY `UK_nb4h0p6txrmfc0xbrd1kglp9t` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('5', 'ROLE_ADMIN');
INSERT INTO `roles` VALUES ('4', 'ROLE_USER');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tag_name` varchar(255) DEFAULT NULL,
  `tag_type` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('我是大傻吊', '1', '1', '1');
INSERT INTO `tag` VALUES ('我是卧龙', '1', '2', '1');
INSERT INTO `tag` VALUES ('我喜欢杀马谡', '1', '3', '1');
INSERT INTO `tag` VALUES ('为了巴萨泽', '1', '4', '1');
INSERT INTO `tag` VALUES ('半人马也跑不过我', '1', '5', '1');
INSERT INTO `tag` VALUES ('我是大蠢驴', '1', '6', '1');
INSERT INTO `tag` VALUES ('我是瑞达昌', '1', '7', '1');
INSERT INTO `tag` VALUES ('我是玛尔甘尼斯', '1', '8', '1');
INSERT INTO `tag` VALUES ('我是不朽的', '1', '9', '1');
INSERT INTO `tag` VALUES ('你好啊', '1', '10', '1');

-- ----------------------------
-- Table structure for team_info
-- ----------------------------
DROP TABLE IF EXISTS `team_info`;
CREATE TABLE `team_info` (
  `member` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team_info
-- ----------------------------
INSERT INTO `team_info` VALUES ('我是支付宝？', 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png', '1');
INSERT INTO `team_info` VALUES ('这货不是angular', 'https://gw.alipayobjects.com/zos/rmsportal/zOsKZmFRdUtvpqCImOVY.png', '2');
INSERT INTO `team_info` VALUES ('我是影分身一号', 'http://wx-upload.oss-cn-hangzhou.aliyuncs.com/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190807121349.jpg', '3');
INSERT INTO `team_info` VALUES ('影分身二号', 'http://wx-upload.oss-cn-hangzhou.aliyuncs.com/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190807121349.jpg', '4');
INSERT INTO `team_info` VALUES ('多重影分身', 'http://wx-upload.oss-cn-hangzhou.aliyuncs.com/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190807121349.jpg', '5');
INSERT INTO `team_info` VALUES ('水分身', 'http://wx-upload.oss-cn-hangzhou.aliyuncs.com/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20190807121349.jpg', '6');
INSERT INTO `team_info` VALUES ('荆州阿黄', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/timg.jpg', '7');
INSERT INTO `team_info` VALUES ('卧原凤坡', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/timg%20(1).jpg', '8');
INSERT INTO `team_info` VALUES ('益州打工团', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/u=1759838914,1604412364&fm=26&gp=0.jpg', '9');
INSERT INTO `team_info` VALUES ('北伐统战群', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/u=2549327384,3959353622&fm=26&gp=0.jpg', '10');
INSERT INTO `team_info` VALUES ('名师卧龙在线授业', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/u=838579104,1516723944&fm=26&gp=0.jpg', '11');
INSERT INTO `team_info` VALUES ('季汉幼儿园', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/u=2315603226,2470671358&fm=26&gp=0.jpg', '12');
INSERT INTO `team_info` VALUES ('我不是阿苏拉', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/%E4%B8%8B%E8%BD%BD.jpg', '13');
INSERT INTO `team_info` VALUES ('我不配有坐骑', 'http://ms-upload-test.oss-cn-hangzhou.aliyuncs.com/qyj_sys/%E5%A4%B4%E5%83%8F/u=1006340444,346848052&fm=26&gp=0.jpg', '14');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(45) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `nickname` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '1111111', '1222', '11111111111222', '1');
INSERT INTO `user` VALUES ('5', '11', '1222', '111111', '1');
INSERT INTO `user` VALUES ('4', '11', '1222', '111111', '1');
INSERT INTO `user` VALUES ('6', 'www.cctv.cn', '洛克', '你好', '李');
INSERT INTO `user` VALUES ('7', 'www.bbc.com', '斯蒂芬', '意', '孙');
INSERT INTO `user` VALUES ('8', '007007', '逊', '职业杀手001', '立');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '2019-10-07 09:17:08', '2019-11-08 09:17:12', '834482703@qq.com', '瑞达长', '$2a$10$NQmjWzo8Wo/iWRQD8zcRVOF3cJmdJJneVFYjsKsfPRiRAYV5xA/MG', '瑞达长');
INSERT INTO `users` VALUES ('2', '2019-10-16 01:13:28', '2019-10-16 01:13:28', '851678482@qq.com', 'hahajj', '$2a$10$NQmjWzo8Wo/iWRQD8zcRVOF3cJmdJJneVFYjsKsfPRiRAYV5xA/MG', 'hahajj');
INSERT INTO `users` VALUES ('3', '2020-01-06 04:18:25', '2020-01-06 04:18:25', 'admin@qq.com', 'admin', '$2a$10$Z233rD9ixz.KZFOj5tUYYOlIIXwKsgeFkdiuNOd93rfrFZ3UyPx4y', 'admin');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_user_roles_role_id` (`role_id`),
  CONSTRAINT `fk_user_roles_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `fk_user_roles_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('1', '4');
INSERT INTO `user_roles` VALUES ('2', '4');
INSERT INTO `user_roles` VALUES ('3', '4');
INSERT INTO `user_roles` VALUES ('2', '5');

-- ----------------------------
-- Table structure for votes
-- ----------------------------
DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `poll_id` bigint(20) NOT NULL,
  `choice_id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK8um9h2wxsdjrgx3rjjwvny676` (`poll_id`,`user_id`),
  KEY `fk_votes_user_id` (`user_id`),
  KEY `fk_votes_poll_id` (`poll_id`),
  KEY `fk_votes_choice_id` (`choice_id`),
  CONSTRAINT `fk_votes_choice_id` FOREIGN KEY (`choice_id`) REFERENCES `choices` (`id`),
  CONSTRAINT `fk_votes_poll_id` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`),
  CONSTRAINT `fk_votes_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of votes
-- ----------------------------
INSERT INTO `votes` VALUES ('1', '1', '1', '1', '2019-10-23 16:01:36', '2019-10-31 16:01:40');
INSERT INTO `votes` VALUES ('2', '2', '1', '2', '2019-10-15 08:28:35', '2019-10-15 08:28:35');
INSERT INTO `votes` VALUES ('6', '2', '2', '6', '2019-10-16 01:19:19', '2019-10-16 01:19:19');
INSERT INTO `votes` VALUES ('7', '1', '5', '13', '2019-10-23 01:29:35', '2019-10-23 01:29:35');

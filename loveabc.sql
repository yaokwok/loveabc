/*
Navicat MySQL Data Transfer

Source Server         : mysqlforyao
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : loveabc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-06-18 18:07:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL COMMENT '选项内容',
  `questionsId` int(11) DEFAULT NULL COMMENT '题目Id',
  `is_right` varchar(20) NOT NULL DEFAULT '0' COMMENT '是否是正确选项',
  `identifier` varchar(20) DEFAULT NULL COMMENT '选项序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '1', '4', '0', 'a');
INSERT INTO `answer` VALUES ('2', '2', '4', '0', 'b');
INSERT INTO `answer` VALUES ('3', '3', '4', '0', 'c');
INSERT INTO `answer` VALUES ('4', '4', '4', '1', 'd');
INSERT INTO `answer` VALUES ('5', 'dsf', '5', '0', 'a');
INSERT INTO `answer` VALUES ('6', 'sdf', '5', '0', 'b');
INSERT INTO `answer` VALUES ('7', 'sdf', '5', '1', 'c');
INSERT INTO `answer` VALUES ('8', 'sdf', '5', '0', 'd');
INSERT INTO `answer` VALUES ('9', '111111111111111', '6', '0', 'a');
INSERT INTO `answer` VALUES ('10', '111111111111111', '6', '0', 'b');
INSERT INTO `answer` VALUES ('11', '11111111111', '6', '1', 'c');
INSERT INTO `answer` VALUES ('12', '1111111', '6', '0', 'd');
INSERT INTO `answer` VALUES ('13', '2222222222', '7', '0', 'a');
INSERT INTO `answer` VALUES ('14', '222222222', '7', '0', 'b');
INSERT INTO `answer` VALUES ('15', '222222222', '7', '1', 'c');
INSERT INTO `answer` VALUES ('16', '222222222', '7', '0', 'd');
INSERT INTO `answer` VALUES ('17', '3333333333333', '8', '0', 'a');
INSERT INTO `answer` VALUES ('18', '333333333', '8', '1', 'b');
INSERT INTO `answer` VALUES ('19', '3333333333333', '8', '0', 'c');
INSERT INTO `answer` VALUES ('20', '33', '8', '0', 'd');
INSERT INTO `answer` VALUES ('21', '', '9', '0', 'a');
INSERT INTO `answer` VALUES ('22', '', '9', '0', 'b');
INSERT INTO `answer` VALUES ('23', '', '9', '0', 'c');
INSERT INTO `answer` VALUES ('24', '', '9', '0', 'd');
INSERT INTO `answer` VALUES ('25', 'dsfsdf', '10', '0', 'a');
INSERT INTO `answer` VALUES ('26', 'dfsdf', '10', '0', 'b');
INSERT INTO `answer` VALUES ('27', 'dfsdf', '10', '1', 'c');
INSERT INTO `answer` VALUES ('28', 'dfsd', '10', '0', 'd');
INSERT INTO `answer` VALUES ('29', 'wwwrwer', '11', '0', 'a');
INSERT INTO `answer` VALUES ('30', 'wer', '11', '1', 'b');
INSERT INTO `answer` VALUES ('31', 'werw', '11', '0', 'c');
INSERT INTO `answer` VALUES ('32', 'er', '11', '0', 'd');
INSERT INTO `answer` VALUES ('33', 'dddddddd', '12', '1', 'a');
INSERT INTO `answer` VALUES ('34', 'ddddddddd', '12', '0', 'b');
INSERT INTO `answer` VALUES ('35', 'f', '12', '0', 'c');
INSERT INTO `answer` VALUES ('36', 'gfdg', '12', '0', 'd');
INSERT INTO `answer` VALUES ('37', 'sdf', '13', '0', 'a');
INSERT INTO `answer` VALUES ('38', 'ds', '13', '0', 'b');
INSERT INTO `answer` VALUES ('39', 'qq', '13', '0', 'c');
INSERT INTO `answer` VALUES ('40', 'wqq', '13', '1', 'd');
INSERT INTO `answer` VALUES ('41', 'wwq', '14', '0', 'a');
INSERT INTO `answer` VALUES ('42', '242', '14', '1', 'b');
INSERT INTO `answer` VALUES ('43', 'dsf', '14', '0', 'c');
INSERT INTO `answer` VALUES ('44', 'df', '14', '0', 'd');
INSERT INTO `answer` VALUES ('45', 'dfgd', '15', '0', 'a');
INSERT INTO `answer` VALUES ('46', 'fg', '15', '0', 'b');
INSERT INTO `answer` VALUES ('47', 'fdg', '15', '1', 'c');
INSERT INTO `answer` VALUES ('48', 'dfgdf', '15', '0', 'd');
INSERT INTO `answer` VALUES ('49', 'fdgg', '16', '0', 'a');
INSERT INTO `answer` VALUES ('50', 'ds', '16', '1', 'b');
INSERT INTO `answer` VALUES ('51', 'gf', '16', '0', 'c');
INSERT INTO `answer` VALUES ('52', 'sd', '16', '0', 'd');
INSERT INTO `answer` VALUES ('53', 'nnnnnnnnnn', '17', '1', 'a');
INSERT INTO `answer` VALUES ('54', 'nnnnnnnnnn', '17', '0', 'b');
INSERT INTO `answer` VALUES ('55', 'nnnnnnnnn', '17', '0', 'c');
INSERT INTO `answer` VALUES ('56', 'nnnnnnnnn', '17', '0', 'd');
INSERT INTO `answer` VALUES ('57', 'xc', '18', '0', 'a');
INSERT INTO `answer` VALUES ('58', 'c', '18', '1', 'b');
INSERT INTO `answer` VALUES ('59', 'cx', '18', '0', 'c');
INSERT INTO `answer` VALUES ('60', '', '18', '0', 'd');
INSERT INTO `answer` VALUES ('61', 'sdfd', '19', '1', 'a');
INSERT INTO `answer` VALUES ('62', 'dddddddd', '19', '0', 'b');
INSERT INTO `answer` VALUES ('63', 'a', '19', '0', 'c');
INSERT INTO `answer` VALUES ('64', 'c', '19', '0', 'd');
INSERT INTO `answer` VALUES ('65', 'f', '20', '0', 'a');
INSERT INTO `answer` VALUES ('66', 'sdf', '20', '0', 'b');
INSERT INTO `answer` VALUES ('67', 'e', '20', '1', 'c');
INSERT INTO `answer` VALUES ('68', 'w', '20', '0', 'd');
INSERT INTO `answer` VALUES ('69', '', '21', '0', 'a');
INSERT INTO `answer` VALUES ('70', '', '21', '0', 'b');
INSERT INTO `answer` VALUES ('71', '', '21', '0', 'c');
INSERT INTO `answer` VALUES ('72', '', '21', '1', 'd');
INSERT INTO `answer` VALUES ('73', '', '22', '0', 'a');
INSERT INTO `answer` VALUES ('74', '', '22', '0', 'b');
INSERT INTO `answer` VALUES ('75', '', '22', '1', 'c');
INSERT INTO `answer` VALUES ('76', '', '22', '0', 'd');
INSERT INTO `answer` VALUES ('77', '21rw', '23', '0', 'a');
INSERT INTO `answer` VALUES ('78', 'werwe', '23', '1', 'b');
INSERT INTO `answer` VALUES ('79', 'er', '23', '0', 'c');
INSERT INTO `answer` VALUES ('80', 'werw', '23', '0', 'd');
INSERT INTO `answer` VALUES ('81', 'xc', '24', '1', 'a');
INSERT INTO `answer` VALUES ('82', 'cv', '24', '0', 'b');
INSERT INTO `answer` VALUES ('83', 'v', '24', '0', 'c');
INSERT INTO `answer` VALUES ('84', 'xx', '24', '0', 'd');
INSERT INTO `answer` VALUES ('85', '232', '25', '0', 'a');
INSERT INTO `answer` VALUES ('86', 'sdfd', '25', '1', 'b');
INSERT INTO `answer` VALUES ('87', 'fdf', '25', '0', 'c');
INSERT INTO `answer` VALUES ('88', 'fsd', '25', '0', 'd');
INSERT INTO `answer` VALUES ('89', '232', '26', '0', 'a');
INSERT INTO `answer` VALUES ('90', 'sdfd', '26', '1', 'b');
INSERT INTO `answer` VALUES ('91', 'fdf', '26', '0', 'c');
INSERT INTO `answer` VALUES ('92', 'fsd', '26', '0', 'd');
INSERT INTO `answer` VALUES ('93', '232', '27', '0', 'a');
INSERT INTO `answer` VALUES ('94', 'sdfd', '27', '1', 'b');
INSERT INTO `answer` VALUES ('95', 'fdf', '27', '0', 'c');
INSERT INTO `answer` VALUES ('96', 'fsd', '27', '0', 'd');
INSERT INTO `answer` VALUES ('97', '232', '28', '0', 'a');
INSERT INTO `answer` VALUES ('98', 'sdfd', '28', '1', 'b');
INSERT INTO `answer` VALUES ('99', 'fdf', '28', '0', 'c');
INSERT INTO `answer` VALUES ('100', 'fsd', '28', '0', 'd');
INSERT INTO `answer` VALUES ('101', '232', '29', '0', 'a');
INSERT INTO `answer` VALUES ('102', 'sdfd', '29', '1', 'b');
INSERT INTO `answer` VALUES ('103', 'fdf', '29', '0', 'c');
INSERT INTO `answer` VALUES ('104', 'fsd', '29', '0', 'd');
INSERT INTO `answer` VALUES ('105', '', '30', '0', 'a');
INSERT INTO `answer` VALUES ('106', '', '30', '0', 'b');
INSERT INTO `answer` VALUES ('107', '', '30', '0', 'c');
INSERT INTO `answer` VALUES ('108', '', '30', '0', 'd');
INSERT INTO `answer` VALUES ('109', '123', '31', '0', 'a');
INSERT INTO `answer` VALUES ('110', '', '31', '0', 'b');
INSERT INTO `answer` VALUES ('111', '', '31', '0', 'c');
INSERT INTO `answer` VALUES ('112', '', '31', '1', 'd');
INSERT INTO `answer` VALUES ('113', 'sdfs', '36', '0', 'a');
INSERT INTO `answer` VALUES ('114', 'dfs', '36', '0', 'b');
INSERT INTO `answer` VALUES ('115', 'we', '36', '0', 'c');
INSERT INTO `answer` VALUES ('116', 'dfd', '36', '1', 'd');
INSERT INTO `answer` VALUES ('117', '/', '40', '0', 'a');
INSERT INTO `answer` VALUES ('118', 'a', '40', '0', 'b');
INSERT INTO `answer` VALUES ('119', 'the', '40', '1', 'c');
INSERT INTO `answer` VALUES ('120', '无', '40', '0', 'd');
INSERT INTO `answer` VALUES ('121', 'she ', '41', '0', 'a');
INSERT INTO `answer` VALUES ('122', 'their ', '41', '0', 'b');
INSERT INTO `answer` VALUES ('123', 'her   ', '41', '1', 'c');
INSERT INTO `answer` VALUES ('124', '无', '41', '0', 'd');
INSERT INTO `answer` VALUES ('125', 'is', '42', '0', 'a');
INSERT INTO `answer` VALUES ('126', 'are', '42', '1', 'b');
INSERT INTO `answer` VALUES ('127', 'have', '42', '0', 'c');
INSERT INTO `answer` VALUES ('128', '无', '42', '0', 'd');
INSERT INTO `answer` VALUES ('129', 'some ', '43', '1', 'a');
INSERT INTO `answer` VALUES ('130', 'any ', '43', '0', 'b');
INSERT INTO `answer` VALUES ('131', '/ ', '43', '0', 'c');
INSERT INTO `answer` VALUES ('132', '无', '43', '0', 'd');
INSERT INTO `answer` VALUES ('133', 'live, lives ', '44', '0', 'a');
INSERT INTO `answer` VALUES ('134', 'lives, live', '44', '1', 'b');
INSERT INTO `answer` VALUES ('135', 'live, live', '44', '0', 'c');
INSERT INTO `answer` VALUES ('136', '无', '44', '0', 'd');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `time` datetime NOT NULL,
  `userId` int(11) NOT NULL,
  `browse` int(20) NOT NULL,
  `reply` int(11) NOT NULL,
  `nice` int(50) NOT NULL DEFAULT '0',
  `bad` int(50) NOT NULL DEFAULT '0' COMMENT '点差劲次数',
  `toptime` datetime DEFAULT NULL COMMENT '顶置时间',
  `top` int(1) unsigned zerofill DEFAULT '0' COMMENT '是否顶置，0不是，1是',
  `elite` int(1) unsigned zerofill DEFAULT '0' COMMENT '是否精华帖，0否，1是',
  `type` int(5) NOT NULL COMMENT '帖子分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', '易英语内部测试 V1.0 beta', '漫长地等待终于发布了1.0测试版，欢迎大家使用易英语，如果发现问题请提交反馈，谢谢！<br />', '2014-10-11 19:26:27', '1', '9', '0', '0', '0', null, '0', '0', '1');
INSERT INTO `blog` VALUES ('2', '英语口语第一课', '<strong>楔子(Prelude)</strong><br />\r\n<br />\r\n“老师，我想练口语，您能推荐一些方法么?”<br />\r\n从教多年来，这个问题恐怕是灯叔听到的最多一个。这意味着所有人都想知道它的答案。口语牛人是诸多学生的梦想：试想----大大小小的英语演讲比赛、辩论\r\n比赛、模拟联合国，出国留学考试、考研面试、工作面试，甚至是日后参加工作后代表公司与外商唇枪舌剑谈判磋商----一口标准流利的英语可谓一柄无坚不摧\r\n的利器(an ultimate \r\nweapon)。另一方面，在你未来几年的学习生活中，你会越来越深刻地发现：口语流利的人不仅占尽了天机(好的机会诸如学生交流项目Student \r\nExchange \r\nPrograms抑或竞选学生会主席等等)，更从他们本身上，散发出一股卓尔不群的傲气。你要理解一点：自信(confidence)决定了你从大学开始\r\n学业和事业的格局。<br />\r\n简言之，英语口语的学习决定了你发展上至少一半的未来。<br />\r\n大一同学(freshman)最容易感到困惑的是两件事情：大学学什么?怎么学?前面灯叔已经说过，不论你专业如何，学习英语口语是刚性需求。则下面探讨怎么学。<br />\r\n<br />\r\n<strong>口语的学习中有多个元素，总结起来包括：</strong><br />\r\n<br />\r\n1，形式：发音<br />\r\n2，内容：词汇与句型<br />\r\n3，情感：交谈中的互动<br />\r\n现有口语学习法中，有“馊主意”，“土办法”和“洋办法”。<br />\r\n<br />\r\n<strong>“馊主意”：背诵(Recitation)</strong><br />\r\n<br />\r\n“馊主意”有多种形式，但有一个明显的共性：背单词加背文章。话说灯叔当年也曾经花过大把时间背诵《新概念第四册》，效果堪堪能应付阅读及写作中的要求，\r\n然则在口语表达中却效果甚微。究其原因，主要有几个。第一，书面语与口语的区别(written language VS. colloquial \r\nlanguage)决定了使用这种教材的盲目性。第二，背诵(recitation)是一个被动接受信息的过程，在背诵的过程中你不会充分地理解文章中所\r\n有词句的意义和功能。(如《新概念》系列的文章需要极有经验的教师帮助剖析拓展，这个问题在此按下不表。)灯叔经常在大小讲座中谈到，《新概念》的文章背\r\n到10遍以上时，每背一次都是单纯的肌肉运动，基本不过脑子。第三，单纯背单词来加强口语，松散拖沓，好比玩弄砖瓦，永远不能有所建树。综上所述，背诵法\r\n用于学习口语只能是“馊主意”。<br />\r\n<br />\r\n灯叔教学雅思及托福、四六级、考研英语已有多年，发现一个明显趋势：诸多口语考试中，有相当多学生都采用“背诵”的方式来应对考官。你可能买到一两本参考\r\n书，对每个问题准备好三四句话，在考官面前坑坑巴巴地背出来。当我们发扬了中国知识分子一如既往的刻苦精神来背诵时，我们惊奇地发现现在的口语考官上岗前\r\n培训的第一课就是“如何看出学生在背诵”。故而，从90年代的“哑巴英语”过渡到00年代的“背诵英语”，现今的中国人口语学习，亟须升级。<br />\r\n<br />\r\n<strong>“土办法”：听说学习法(Input-output Theory)</strong><br />\r\n<br />\r\n“土办法”(a rule of \r\nthumb)其实也是最有效的办法。中国学生不可能每天都有和外教对话的机会，所以“土办法”更多的是一种自我训练方式。所谓听说学习法，就是“先听后\r\n说，以听养说，以说仿听。”多年前，某国际教育集团副总裁彭铁城博士(Dr. \r\nTerence)曾经与灯叔说过一句话：听说不分家。这个办法的基本例子来自于婴儿母语学习的研究。婴儿之所谓“咿呀学语”，就是先听人说，再进行模仿。\r\n这种以听作为输入(input)，以说作为输出(output)。灯叔将就自身经验与大家分享一下“听说学习法”适宜大一新生所采用的材料及使用方法。<br />\r\n<br />\r\n<strong>1，电影及电视剧的听说模仿</strong><br />\r\n<br />\r\n灯叔于大学期间深受一位老师的影响，对著名电影《窈窕淑女》(Fair Lady)(改编自萧伯纳Bernard \r\nShaw的剧本《卖花女》Pygmalion)，花了整整3个月的时间，把该电影中的所有台词逐句模仿了一遍，当时为了点暂停和回放居然报销了我一个鼠\r\n标。英国19世纪上流阶层的英音模仿起来的确是风生水起，许多的桥段时隔多年仍旧可以脱口而出。<br />\r\n<br />\r\n然则灯叔并不建议每位同学都去模仿这个电影，甚至去模仿电影，原因有二：1，语言质量高的电影多数年代已老;2，年代较新的电影俚语严重，口音参差不齐。<br />\r\n<br />\r\n那么作为大一新生的你，应当模仿什么呢?答案是电视剧。(The answer lies in TV \r\nseries.)灯叔发现，电视剧较之于电影，有一点不可比拟的好处：它有很多集(episode)。多集的电视剧能够将人物口语的特定口音多次重复于听\r\n者面前。试想，倘若你盯紧了一个角色(比如说，《老友记》(Friends)里的某男，又如，《绯闻女孩》(Gossip \r\nGirl)中的某女)，并且每集都专门模仿他/她的台词，一句一句模仿，直到听起来很像很满意，则你的口语将很快很好很强大。每个人的发音位置，嗓音结构\r\n都不同，强迫自己模仿不合适的模仿对象是很不明智的行为，只能事倍功半。故灯叔的意思是，你应该“普遍撒网，重点培养”，专门找与自己嗓音本身相似的电视\r\n剧角色，高强度模仿，效果会极为突出。北京曾经有一个高二的学生，将《老友记》(Friends)前前后后模仿了6遍，最终在新托福(iBT \r\nTOEFL)考试中获得了口语满分。<br />\r\n<br />\r\n<strong>2，听说软件的模仿学习</strong><br />\r\n<br />\r\n英语教学界最近的态势逐渐表明，网络化，技术化学习将会成为未来外语学习的重要理念。你坐在电脑面前，同样是可以学习英文的。遗憾的是，在大家耳熟能详的\r\n各大口语学习机构中，大多数的听说软件的学习费用非常之昂贵，大大超过了一般大学生的消费能力。你可能动辄要花费上万的费用才能坐在豪华的房间内电脑面\r\n前，多数人只能说望洋兴叹。<br />\r\n<br />\r\n值得一提的是，某校的口语项目“三合一”，据新航道口语项目负责人陈倩老师介绍，首推全球最悠久的口语听说软件ellis系统，高度更新后，用最新的现代\r\n口语话题进行“先听后说”练习。多媒体的教学与教师单一讲课相比，其优势在于信息量大，刺激深刻，容易有利于语言材料的输入。换言之，学得快，记得深。<br />\r\n<br />\r\n<strong>“洋办法”：社会交际教学法(Social Communicative Way)</strong><br />\r\n<br />\r\n所有人都相信：学英语最好的方法就是到一个英语国家中去。这意思是：到一个英语环境中去。所谓社会交际教学法，就是以制造一个“英语社会情境”为主要目\r\n的，让人浸泡(immerse)在环境中，产生最直接的语言反应。比如说，新航道的“三合一”口语项目中提供外教主题口语课，在这种课程里，外教会带领学\r\n员进行各种课堂活动，引导和刺激每一位学员进行口头表达练习。话说灯叔上大学时，经常在早晨跑到颐和园(Summer \r\nPalace)去，装作要晨跑的样子，伺机而候，只要见到有老外来晨跑，就毫不客气地跑上去和他/她一起跑，边跑就边用英语搭讪(accost)。起先经\r\n常被人惊悚地扫一眼，视为痴男。后来慢慢学会了说话技巧，也能交到几个外国朋友。多数人还是很nice的，愿意和你交流。<br />\r\n<br />\r\n有人质疑这种方法，说社会交际教学法不能“提升英文能力”，因为讲解词汇和语句的效率太低。灯叔只能说，没有方法是完美的。(No single way\r\n of learning is \r\nflawless.)社会交际教学法的确不太能“增多你的英语知识”，但它能够“加强你对现有英语知识的使用能力”。举例来说，你可能通过“听说学习法”\r\n在软件中或电视剧上学到了I\'ll take a rain \r\ncheck(我这次不去了，下次吧。)这样一个句型，然后在外教主题口语课中，外教组织大家进行角色扮演(role-play)，比如扮演一个“邀请场\r\n景”：<br />\r\n<br />\r\nStudent A: How time flies! It\'s weekend again!<br />\r\nStudent B: Tell me about it. What about going karaoke after the class?<br />\r\nStudent A: I\'d like to, but i\'ve got tons of work to do. I guess i\'ll have to ____________<br />\r\n对话中，如果你是Student A，你可能会说wait until next time。但如果你会说take a rain \r\ncheck，那么你的口语就相当地道了。外教主题口语课的功能不是让你学会take a rain check，而是在你前面学过take a rain\r\n check的条件下，给你制造一个使用这个句型的机会!当且仅当你使用过这个句型，它才可能成为你的口语。<br />\r\n<br />\r\n<strong>灯叔结语(Epilogue)</strong><br />\r\n<br />\r\n口语路漫漫，灯叔认为，在英语口语的学习中，必须要做到“系统性”，否则在多个因素之间，你就会产生偏废，欲速不达，走火入魔。真正的好办法是把“土办\r\n法”和“洋办法”充分地结合起来，避免在学习是走弯路，让自己在大学的英语学习第一步走得稳扎稳打。(Good Beginning is Half \r\nSuccess.)<br />\r\n叔惟愿每位同学都有梦可追，追则必达!', '2014-10-11 19:40:22', '1', '1', '0', '0', '0', null, '0', '0', '1');
INSERT INTO `blog` VALUES ('3', '10个趣味方法教你更快学英语', '<img id=\"aimg_47100\" src=\"http://bbs.enfamily.cn/data/attachment/forum/201408/26/235937xg5trre7gt67c87c.jpg\" class=\"zoom\" width=\"494\" /> <br />\r\n<br />\r\n<br />\r\n&nbsp;&nbsp;We’ve all heard a thousand times that the only way to really learn \r\nEnglish is to be totally immersed in the language, completely surrounded\r\n by it everywhere you go. But we wanted to go deeper than that and find \r\nquick and easy ways to start getting immersed. So our research team put \r\ntogether 10 steps that you can follow, in this order, to make learning \r\nEnglish faster and a whole lot more fun.<br />\r\n　　学习英语的唯一方式就是让自己融入到语言中去。这句话恐怕听得耳朵都长茧了吧。但我们想了解的更多，想了解如何更快更容易的去融入。所以小编列出了十个可以遵循的步骤，按照这个顺序，让你的英语学习更加快速，充满乐趣吧。<br />\r\n　　1: Find some English radio stations and podcasts in iTunes<br />\r\n　　找一些英语广播台或播客<br />\r\n　　There are tons of podcasts about all topics imaginable these days: \r\nentertainment, politics, news. A good way to find one is to look for a \r\npodcast from a TV channel you usually watch in your cable TV. Look for \r\none that interests you and listen to it in your car while driving. \r\nYou’ll train your ear that way!<br />\r\n　　现在有无数的播客提供各类话题：娱乐、政治、新闻。搜寻的最佳方式就是从你经常看的电视频道找一个出来。挑一个你感兴趣的，开车的时候听一听。耳朵的本事就这么慢慢锻炼出来啦。<br />\r\n　　2: Check out the Top Videos on YouTube and watch for at least a few minutes<br />\r\n　　找最热的视频至少看几分钟<br />\r\n　　Most of them are hilarious! It will be so worth it. Try looking at the\r\n comments to pick up some words and sentences you aren’t familiar with, \r\nbut be careful there is all kinds of bizarre stuff in YouTube comments.<br />\r\n　　大部分都非常搞笑！绝对值得一看。再试着看看下面的评论，找出你不是很熟悉的单词或者句子，但也别忘了底下的评论也有些恶搞。<br />\r\n　　3: Talk and sing to yourself in English<br />\r\n　　用英语和自己对话唱歌<br />\r\n　　When you are alone at home, or of course in the shower, start talking!\r\n Sing a song in English the way it sounds to you, talk about the weather\r\n or any other topic. Do this frequently and your pronunciation will \r\ndrastically improve – guaranteed!<br />\r\n　　一个人在家，或洗澡的时候，和自己说话吧！或是对自己唱一首英文歌，谈谈天气或其他的话题。经常这样做，你的发音绝对会有意想不到的提高——人格担保！<br />\r\n　　4: Do you have an English-speaking idol? Go to YouTube and watch all of his/her interviews in English<br />\r\n　　你有膜拜的英语大神么？去看看他所有的英文访谈吧<br />\r\n　　You can spend hours doing that listening to interviews and it sure \r\nwon’t feel like studying. But it is! It helps you a great deal.<br />\r\n　　你可以花很多时间来看这些访谈，绝对不会让你有学习的感觉，但这真的是一种学习哦！能大大地帮助到你。<br />\r\n　　5: Sit near people who are speaking English on the bus or in the park. Listen in…<br />\r\n　　公车上或公园里，不妨做得离老外近一点，听一听呀<br />\r\n　　Okay now don’t be a creepy eavesdropper! But, see what words you can \r\npick up and listen to the flow of the conversation. How much did you \r\nunderstand? What general topic were they talking about? Did you hear an \r\ninteresting word you might want to look up after?<br />\r\n　　放心这绝不是偷听！但是看看你能听懂多少个词语，听一下对话的进程。你能理解多少？他们大概在谈论什么话题？你听到什么有趣的词让你有回家翻字典的冲动么？<br />\r\n　　6: Pay attention to billboards, signs, advertisements, magazine stands and establishment names<br />\r\n　　关注一些榜单、标示、广告、售报亭和企业名称<br />\r\n　　Look and think about what these ads mean. How many words do you \r\nrecognize? Did you see that same word elsewhere? Make up sentences about\r\n what you’re seeing.<br />\r\n　　看看想想这些广告的含义。哪些词你是认识的？你还在哪里看到这个词？用看到的词造个句呗。<br />\r\n　　7: Love music? Try figuring out the words/lyrics of your favorite songs<br />\r\n　　爱音乐？研究下你喜欢歌曲的歌词<br />\r\n　　Watch video clips with lyrics on YouTube and sing along. Read the \r\ntranslation and build up your vocabulary. Listen to “clean” versions of \r\nsongs and try to figure out what dirty words were taken out. It’s fun!<br />\r\n　　在YouTube上看看带歌词的原版MV，跟着一起唱吧。看看翻译版本能扩大词汇量。再听不带字幕的版本，试着找出被“阉割”掉的不文明词汇。哈哈，真的很有意思哦。<br />\r\n　　8: Watch TV clips, episodes or soap operas in English<br />\r\n　　看英语原声的电视片段、剧集和肥皂剧<br />\r\n　　It doesn’t matter if you don’t understand what they’re saying, watch \r\nanyway! Try to understand why something is funny or sad . If the joke is\r\n related to the word itself, then maybe that is why the joke does not \r\nmake sense in your native language. What would be the best translation \r\ninto your language then?<br />\r\n　　不明白他们在说什么其实没关系，看就是了！试着去理解什么搞笑什么煽情。如果这个笑话和单词有关，那么也许在你的母语中并没有那么好笑。那怎么翻译才最到位呢？<br />\r\n　　9: Engage in a conversation on Facebook with friends who post in English<br />\r\n　　和英语国家的朋友在社交网络上交谈<br />\r\n　　When you have English speakers in your timeline, you see their posts \r\ndaily and get inside information about news and viral videos in English.\r\n Your friends can be your teachers! Their timeline basically sort out \r\nthe best material for you to study.<br />\r\n　　如果你的好友名单里有英语国家的朋友，你会看到他们每天的签名更新，更能了解用英语表达出他们国家的一些新闻和时事视频。朋友也可以是你的老师！他们的状态更新就是你最好的学习材料。<br />\r\n　　10: Produce, produce, produce. No matter how shy you are or how much you don’t “get” English, force yourself to speak<br />\r\n　　说出来说出来说出来。无论你多么内向，英语多烂，逼着自己去说<br />\r\n　　Help out a tourist who looks lost. They won’t mind you struggling with\r\n the language while you’re doing them a favor! After class, talk to your\r\n teacher about how things are going and what you need help with in \r\nEnglish. When traveling, ask around for directions in English, even if \r\nyou don’t need them! Try purchasing things online and by phone, or using\r\n customer support in English.<br />\r\n　　帮助看似迷路的外国游客。只要是在帮忙，他们不介意你英语的好坏！课后和老师谈谈最近的近况，以及需要得到英语学习方面什么样的帮助。旅游的时候，用英语问一下路，哪怕并不需要！试试用英语网购、手机购物或使用客户服务！<br />\r\n　　It does not matter if you talk slowly, you are learning, that’s only natural!<br />\r\n　　说的慢没关系，关键在于你是在学习！<br />\r\n　　BONUS TIP: When seeing a new movie look up the original title<br />\r\n　　最后的小建议：如果在网站看到新的电影，不妨你看看原版的名称<br />\r\n　　The translation sometimes does not correspond directly to the \r\noriginal. Find out what the original title really means. Ask yourself \r\nhow the translation makes sense. What is the relation to the movie? You \r\nwill never forget a new word that once it’s associated with an \r\nunforgettable movie. Works every time!<br />\r\n　　翻译有时候并不遵循原版。找出原来的电影名字，看看到底什么意思。然后想想这么翻译的意义，和电影有何相关性？看过一场难忘的电影，你绝对不会再忘记这里面的生词了，每次都这样做吧！', '2014-10-11 19:45:03', '2', '1', '0', '0', '0', null, '0', '0', '2');
INSERT INTO `blog` VALUES ('4', '口语学习最犀利的三点忠告', '<span>1. 只要你愿意学，口语的学习什么时候都来得及!不要说你没有时间，那是因为你根本没有用心!不要说你的基础不好，其实学习口语就应该把自己当做是零起步!</span>\r\n<div align=\"left\">\r\n	　　2. 口语的学习贵在少而精，少而简单!去买任何一本你喜欢口语书，记着，就一本!里边的句子越简单越好!然而把里边的句子全部背诵并跟读模仿录音，达到脱口而出!一路走来，你就是质的提高!\r\n</div>\r\n<div align=\"left\">\r\n	　　3. 人最致命的问题就是眼高手低，总是以为那些简单的单词简单的句子已经都会了而不屑不顾。其实恰恰相反，请问，你能将26个英文字母的音发得很标准吗?\r\n</div>', '2014-10-11 19:46:12', '2', '1', '0', '0', '0', null, '0', '0', '1');
INSERT INTO `blog` VALUES ('5', '秘诀：10大完美英语口语小绝招', '词语搭配\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	要说好英语，有几个不同的要素需要放在一起解决：懂得（并选择）适当的词汇，使用适当的语法及句式，并发正确的语音、重音形式、韵律和语调。如果想进步，你必须攻克这些要点。\r\n</p>\r\n互动过程\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	交流是和另一人的互动活动，除了谈话，还包括听力。要检查另一个人是否跟上了你的话题，可以通过一些对话策略，如用单词重音、改述、或使用如下的表达方式<i>You know what I mean？</i> 或 <i>Don\'t you agree？</i>\r\n</p>\r\n并不限于言语，还有什么？\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	非语言交流对于有成效的对话，甚至是英语为母语国家的人都是非常重要的。使用手势、肢体语言和脸部表情来解释或强调，并试着读懂别人肢体语言所代表的意思。\r\n</p>\r\n唱首歌\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	音乐是提高你语言能力的好方法，练习语言节奏并学习一些有用的表达方式。在网络上查找你最喜欢歌曲的<strong>lyrics</strong> （歌词），然后大声地唱出来练习。\r\n</p>\r\n寻求一次机会\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	你需要用正确的态度来提高你的英语水平。寻找任何练习口语的机会，例如在派对上和人交谈，或帮助迷路的外国人，又或是在老师提问的时候，把手举起来回答。\r\n</p>\r\n每天用英语思考问题\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	这是一个提高口语的非常棒的方法，而且你不受任何时间、地点的限制。在家里，你可以在做每天的例行公事的时候对自己自言自语，就比如做饭的时候。如果你正在乘火车，公车，那就描述一下你身边的人（在脑海中，不要很大声！），还有当你睡觉前，用英语回顾一下今天发生过的事。\r\n</p>\r\n听一听你自己的声音\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	尽管你可能并不喜欢听到自己发出的声音，但这是个很有用的方式来找出自己英语口语中的问题。录下你讲的声音，然后听磁带，或是向一个说英语的人士寻求意见。\r\n</p>\r\n保存一份英语独白的记录\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	晚上上床前把你的想法用英语录下来。你可以在年末的时候回放录音回顾重要的事件，同时掌握你英语学习的进程。\r\n</p>\r\n上额外的学习班\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	如果你觉得你需要额外的练习并希望和其他英语学习者交流，那为什么不参加一个语言班？你的身边一定有很多的语言学校，甚至网上课程。你难道不知道你可以从网上学习吗？Englishtown，是一个有专业英语教师指导的课堂，只要有耳机及麦克风，就能让你和整个世界通话！\r\n</p>\r\n找到说英语的朋友\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	如果你真的想成为一名说地道英语的人，你需要结识一些能用英语作交流的人。 这并<strong>不</strong>仅仅指那些英语国家人士。把英语作为第二语言的人要比英语国家的人要多得多，因而听得懂不同口音是非常重要的。\r\n</p>', '2014-10-11 19:47:06', '2', '1', '0', '0', '0', null, '0', '0', '1');
INSERT INTO `blog` VALUES ('6', '教你一天记住100个单词的独特技法', '<img id=\"aimg_47101\" src=\"http://bbs.enfamily.cn/data/attachment/forum/201408/27/080855ge12ey1ycewpen7g.jpg\" class=\"zoom\" width=\"550\" /> <br />\r\n<br />\r\n造房子用的是砖，说话用的是词，单词 就是语言的基础。要提高英语词汇量的一个很必要也是非常有效的方法就是背词汇手册。虽然市面上各种词汇手册铺天盖地，但是面对密密麻麻的单词，学生们还是感到头痛。<br />\r\n<br />\r\n　　下面介绍一些背单词的绝招，应该对正在词海中挣扎的你有些帮助。<br />\r\n<br />\r\n　　大浪淘沙法：<br />\r\n<br />\r\n　　如果你的目标是一天记住100个单词，那么所需背诵的单词数量最好要达到500个。因为人的记忆力是有限的，所以不要指望只背20个单词，就能记住全\r\n部并且永远不会忘记。将每天背诵的数量定在500个，虽然你实际记住的也许只有100个，但是这100个一定是你记得最牢的。<br />\r\n<br />\r\n　　把没有记住的单词继续放到第二天的计划中，这样天天坚持，就会看到成效。这个方法好比用筛子过滤沙砾，虽然漏掉的是大多数，但剩下的却是精华。要在短时间内背出大量的单词，必须以量取胜，持之以恒。<br />\r\n<br />\r\n　　词根词缀法：<br />\r\n<br />\r\n　　这个方法基于英语单词的构词法，靠分解单词来记忆。每个英语单词都可以分解成一个核心词根，和前缀或后缀。例如在view(看法、景色)这个单词的基础上，加上表示再一次的前缀re，就是复习的意思;加上表示人物的后缀er，就有观众、探视器等的意思。<br />\r\n<br />\r\n　　这是一种比较高效率的记忆方法，认识一个词缀就会帮助你认识很多单词，做到举一反三。但前提是，你必须先学习和掌握一定的词根、词缀的意义。<br />\r\n<br />\r\n　　循环往复法：<br />\r\n<br />\r\n　　把所要背的单词分组，比如每组100个，共50组。第一天，背第一组的100个;第二天不要急着前行，先用比前一天快一倍的速度把第一组的单词过一遍，然后再看第二组的单词;几天以后再复习第一天的单词，以此类推。<br />\r\n<br />\r\n　　这样做虽然可能影响背单词的进度，但能有效地巩固所学的内容，以滚雪球的方式加深记忆。<br />\r\n<br />\r\n　　人会遗忘，最好的方法是在你正要遗忘的时候复习一下，这相当于对原来记忆进行刺激，会使快要忘记的东西记得很牢。这个方法因人而异，你可以根据自己的\r\n记忆力情况，决定复习的周期。如果怕雪球越滚越大，到后来每天的任务越来越艰巨，你也可以先把要背的所有单词都背一遍，采取每第二天只复习前一天的内容方\r\n法，等全部背完一遍后再从头来第二遍。<br />\r\n<br />\r\n　　狂读狂写法：<br />\r\n<br />\r\n　　这是依靠重复某种生理活动来强迫大脑认知的方法，对于大多数人来说是有效的。当然每个人的习惯各有不同，有的喜好大声朗读所背单词，有的钟爱在白纸上边背边写所需记忆的单词，更有甚者把单词录成卡带，每日听之方可入眠。真可谓单词人人会背，各有巧妙不同。<br />\r\n<br />\r\n　　分类归总法：<br />\r\n<br />\r\n　　所谓物以类聚、人以群分，单词也有它的家族史与裙带关系。常用的分类方法包括：同义词与反义词分类，种属特性分类，类比分类等等。例如，表示笑的单词\r\n通常有：chortle(开心地笑)，chuckle(轻声地笑)，guffaw(哄堂大笑)，jeer(嘲笑)，snigger(窃\r\n笑)，simper(傻笑)等等。对这种单词家族的分门别类，有利于掌握成片单词以及其意义差别，不失为一种好的方法。<br />\r\n<br />\r\n　　做题看报法：<br />\r\n<br />\r\n　　对于许多学生朋友来说，背单词不只是为提高词汇量，而更多的是为了应对考试。检验英语水平的试金石还在于对词汇的运用与解读能力。因此通过大量地接触真题与模拟题，我们才能知道每个单词的精华在哪里，从而体会到背单词的乐趣。<br />\r\n<br />\r\n　　此外，另一种有效的检验方法就是通过阅读 英文书籍、报刊，来寻找记忆中似曾相识的单词。要想所背的单词刻骨铭心，还是要靠实践、记忆单词双管齐下，大量的背诵必须和平时的阅读、写作、口语 联系起来。<br />\r\n<br />\r\n　　创意联想法：<br />\r\n<br />\r\n　　联想的方法有很多，一般可以从意思上、读音上或者形象上联想。例如，vernal(春天的)和venial(可宽恕的)，这两个单词长得很像，读音也相似，惟一的区别在于前者有个r，后者有个i。<br />\r\n<br />\r\n　　根据意思，不妨可以这样想，r很像一片小树叶，自然是和春天有关;而i像个人，是人自然会犯错，就和宽恕的意义联系了起来。这种方法有时看来牵强附会，但对于少数实在记不住的单词，不妨发挥创意，根据自己的习惯和文化背景联想记忆，也会使枯燥的背诵有了乐趣。<br />\r\n<br />\r\n　　快速扫视法：<br />\r\n<br />\r\n　　把每天要背的单词写在纸上，左边写英文，右边写中文意思。先扫视一遍，然后遮住中文意思，进行回忆，没有记住的就做个记号。第二遍只扫视有记号的，然\r\n后遮住中文意思，再回忆，没有记住的再做记号。一直到所有单词都记住为止。那些记号最多的单词也就是最难的，今后复习时可以作为重点。这种方法还有一个好\r\n处，你可以先从英文背中文意思，然后可以反过来，看着中文回忆英文拼写。<br />\r\n<br />\r\n　　特别提醒<br />\r\n<br />\r\n　　每天背诵的数量和时间要根据自己的具体情况定，背诵要选择一天中头脑清晰、精力充沛的时候进行。此外，记住背单词的三大宗旨：一是贵在坚持;二是要遵\r\n循人的记忆规律，循环复习比一次性记忆有效;三，背诵的词汇只有真正运用到听、说、读、写各方面，才算修成正果。以上方法，你可以取长补短、综合运用;选\r\n择适合自己的方法最重要。', '2014-10-11 19:48:56', '3', '1', '0', '0', '0', null, '0', '0', '2');
INSERT INTO `blog` VALUES ('7', '如何打开话匣子：与老外聊天不尴尬', '<img id=\"aimg_45140\" src=\"http://bbs.enfamily.cn/data/attachment/forum/201408/11/000647zprriwpuqwooqjij.jpg\" class=\"zoom\" width=\"600\" /> <br />\r\n&nbsp; &nbsp;&nbsp; \r\n&nbsp;不知道大家有没有这样的经历：有时和外国朋友聊天不知道该说些什么?因为不知道想说的话题会不会是人家文化里不应该谈及的，问了会不会造成尴尬的局面。\r\n今天就来说一说，对于西方人，哪些话题是绝对安全的，甚至是受欢迎的!　　1. 首先，电影、餐厅、公众事件、假期和电视节目(films, \r\nrestaurants, public events, vacations and TV shows) \r\n这几个都是西方人乐于聊的东西，用它们作为聊天话题绝对没错，不用担心触到雷区。此外，传说中外国人很喜欢谈论的天气也是可以拿来当话题的，不过有些人会\r\n觉得有点无聊就是了。　　2. \r\n其次大家要了解，西方人还蛮喜欢给朋友建议的，所以如果你拿某件事儿来问他们，他们会很乐意给你答案的哟。比方说：　　Do you know if \r\nanything good is playing at the cinema right \r\nnow?　　你知道影院里现在有上映什么好电影吗?(“电影院”英国人说cinema，美国人则说movie theater)　　I really \r\nwant to find a good Italian restaurant; any \r\nsuggestions?　　我很想找到一家好的意大利餐馆，你有什么推荐吗?　　I saw an advertisement on TV last\r\n night for that new show, Prison Break. Have you seen \r\nit?　　昨晚我在电视里看到那部新剧《越狱》的广告，你看到了吗?　　3. \r\n最后，要想把谈话继续下去，最好的办法就是多问问题啦!　　比如你问，\"Do you know any good Italian \r\nrestaurants?\"(你知道什么吃意大利菜的好地方吗?)对方却回答，\"No, sorry—I don\'t really like \r\nItalian food.\"(对不起我不知道，其实我不太喜欢吃意大利菜……)那你可以接着问，\"Oh, ok. What kind of food\r\n do you usually go out for then?\"(哦~~那你一般出去吃哪种菜呢?)这样就能比较顺利地把话题继续下去啦!', '2014-10-11 19:50:28', '2', '2', '0', '0', '0', null, '0', '0', '3');
INSERT INTO `blog` VALUES ('8', '小心15个英语口语文化“陷阱”', '最近我有一次机会登上一艘豪华游轮观光。我在酒吧台拿了两杯鸡尾酒回房间享受，途中遇到一位女士，她看看我后笑着说：\"You have \r\nmatches?\"我一愣，回答说：“很抱歉，我十五年前就戒烟了，所以没有火柴。”她立刻会意到我误解了她的意思，好像是有点抱歉地说：\"It’s a\r\n joke.\" 然后，我们就相互尴尬地笑了笑，走开了。<br />\r\n<br />\r\n事后和朋友在吃晚饭的时候聊天，我趁机向一个美国朋友请教白天的那句话，他解释说：“因为她看你两手都占着，就故意开玩笑跟你要火柴，这是个非常普通的笑话，非但没有恶意，反而是想问你需不需要帮忙。”<br />\r\n<br />\r\n2. Turn the table<br />\r\n<br />\r\n一位亲戚和妻子失和到了要离婚的地步。几天前接到亲戚电话，说他们在走进律师楼之前，先去求助于心理和婚姻问题专家。夫妇俩心平气和地坐下来谈了好多次，\r\n互相之间多了份理解，少了一份猜疑、埋怨，结果化干戈为玉帛。说简单也简单，就这么拯救了这场婚姻。我打心眼里为他们高兴，把这一消息告诉了同样也认识他\r\n们的一位美国朋友。这位朋友挺激动的，连连说着“感谢上帝，感谢上帝”，她还补充了一句\"He turned the table\".<br />\r\n<br />\r\n这话让我心里很不舒服，她是指我亲戚动粗吗？我打抱不平说：“不会，不会，他很斯文，很有绅士风度，不会以粗鲁的举动压制对方，不会以高压让对方屈从。”\r\n 结果，越说谁也听不懂谁。看着我那一脸不快的表情，朋友突然茅塞顿开了，以另一种方法向我解释。终于让我明白，她是说我亲戚“扭转了局面”，那 \r\ntable和我想到的“桌子”根本无关。<br />\r\n<br />\r\n再说远一点， turn the tables (on someone)这个短语也和“桌子”没什么关系， 它的意思是to suddenly \r\ntake a position of strength or advantage that was formerly held by \r\nsomeone else (反败为胜，转弱为强)。<br />\r\n<br />\r\n例如： She played badly in the first set, but then she turned the tables on her opponent and won the match.<br />\r\n<br />\r\n3. Wearing two hats<br />\r\n<br />\r\n同事朋友聚会，少不了相互介绍。先生在向我介绍他的同事Larry时，说他可是个大忙人：\"He is wearing two hats\". \r\n我说，你开什么玩笑，他根本就没戴帽子。 \r\nLarry一直以笑作答，倒是先生察言观色，知道我不懂，便帮我找台阶下。原来，先生是指Larry在医院某一部门担任要职，除此之外，还有自己的生意，\r\n就是说 Larry身兼两职，而不是真的戴了两顶帽子。<br />\r\n<br />\r\n4. With a grain of salt<br />\r\n<br />\r\n一天吃饭的时候，好友Allen和他的中国籍太太坐在餐桌旁大谈最近流行的一种草药，说它能包治百病。 Allen 说了一句：\"I’d like to\r\n take it with a grain of \r\nsalt\".他太太笑道：“你以为它是蔬菜啊，还要加点盐再吃。健康专家可没有说过要加盐。”Allen 愣了一下，然后大笑不已，解释道\"Take \r\nsomething with a grain of salt\" 是“对某事有保留、持怀疑态度”的意思。<br />\r\n<br />\r\n原来刚才Allen 是说他对这种草药的神奇疗效表示怀疑，而不是说要“放些盐再吃”。<br />\r\n<br />\r\n5.You are in for a treat!<br />\r\n<br />\r\n这天，同事们正在讨论为我和 Rhonda 开生日 party的事情，为了尊重寿星，大家让Rhonda \r\n和我选择一家中意的餐厅。Rhonda建议去镇上一家叫做BBQ的美国餐厅。我从来没有去过那里，于是就问她那里有什么特色。Rhonda便开始滔滔不绝\r\n地介绍他们的招牌菜，听得我十指大动，直咽口水，Rhonda便笑着说： \"You are in for a treat !\" \r\n我愣了一下，以为Rhonda要请我去那里吃饭，心里十分不好意思，试探着问过她之后，Rhonda 笑着解释说： \"You are in for a\r\n treat means you’ll like it !\"<br />\r\n<br />\r\n6. Knife and fork<br />\r\n<br />\r\n朋友D说日前在某大酒楼饮茶，见邻桌有青年夫妇和大概是他们在外国结识的老太太一起饮茶。老太太对操作筷子很感兴趣，在那里学用 \r\nchopsticks夹虾饺。D说他有个美国朋友，曾花了一些时间学习正确使用筷子的方法，每有机会就要表演一下，还说用筷子是一种艺术，是古老的中国文\r\n化的表现。<br />\r\n<br />\r\n中国人吃饭用筷子，洋人进餐用刀叉。其实洋人从前没有knife and fork, \r\n用的是木片削成的叉子。这种木叉从意大利经伊斯坦堡传到英国，是两刺的肉叉(two-pronged \r\nfork)。在此之前，人们吃肉用手，因此对于改用肉叉有人说是“对赐人五指之神的侮辱。”<br />\r\n<br />\r\n7. Skeleton in the closet<br />\r\n<br />\r\n一天朋友谈及一则大爆“名人”家丑的八卦新闻，说那些家族中人以搬弄\"skeleton in the \r\ncloset\"为乐事，难道这些名人家的壁橱中真的有骷髅?？他说的skeleton in the closet(英国人则习惯说成skeleton \r\nin the cupboard)现在的意义并没有那么可怕。<br />\r\n<br />\r\n不过据说当年这个习语产生的时候的确指那些有钱人家谋杀了一个人，把骸骨暗藏在壁橱中，不让外人知道，从此 skeleton in the closet 就成了那家人的秘密，后来这个短语用来指不可或不愿外扬的家丑，简称作family skeleton.<br />\r\n<br />\r\n例如： Many old families have a number of skeletons in their closets which they are loath to discuss(许多古老的家族中有很多秘密，他们不愿谈及这些话题。)<br />\r\n<br />\r\n8. Skin off one’s nose<br />\r\n<br />\r\nJoe很热心公益，每周固定有一天去做义工。在他的影响下，我也参加了几次。有一次跟他提起如果能到附近的剧院做义工的话，也许会比较有趣。有一天他拿了\r\n一份报纸，上面就有剧院要找义工的消息，我打算下班后过去看看，可是不巧碰上那天身体不舒服，下了班躺在床上就不想动了。第二天碰到Joe，问我有没有\r\n去，我把实情跟他解释。他听完后说： \"No skin off my nose\". 我不懂，只好怔怔地望着他，心想，他大概以为我是“叶公好龙”吧。<br />\r\n<br />\r\n回家查了俚语词典，才知道skin off one’s nose是与某人有关的意思。Joe是在说我去不去其实“不关他的事”，他只是顺便问一下罢了。<br />\r\n<br />\r\n注：no skin off sb.’s nose 也可说成 no skin off sb.’s teeth<br />\r\n<br />\r\n9. Small beer<br />\r\n<br />\r\nSmall beer是“小啤酒”的意思吗？难道啤酒还分大小？其实，在英国small beer指的是口味比较淡啤酒，但是在美语中则是“少量啤酒”的意思。<br />\r\n<br />\r\n比如说夏天有客人来访，问他要喝些什么：Anything to drink?<br />\r\n<br />\r\n客人就可能回答说：I’ll have a small beer(给我一点儿啤酒。)<br />\r\n<br />\r\n比喻用法中说的small beer指规模或者格局不大的事物。自以为了不起，不是小人物的人：He thinks no small beer of himself.<br />\r\n<br />\r\nBe small beer常用作与人比较的表现。 口语中常用small beer作形容词，因此开快餐店的朋友可以说：Ours is a small-beer fast-food joint beside McDonald.<br />\r\n<br />\r\n10. Spaghetti<br />\r\n<br />\r\n朋友S说，意大利面食pasta, 除实心粉spaghetti外，还有通心粉macaroni, 宽面条lasagna, \r\n有肉馅做小方块形的意大利馄饨(云吞)ravioli, \r\n细长面条tagliatelle以及细线状的细面vermicelli(我们将“粉丝”译作vermicelli原是意大利细面借之名)。<br />\r\n<br />\r\n意大利是欧洲第一个吃面食的国家。十三世纪时马可波罗从中国传去制面食方法后，大受欢迎，特别是实心意粉spaghetti, \r\n以其容易烹调，可以配上各种佐料，很快就风行全国。不过那时没有刀叉可用，因此吃的都是无汤汁的实心意粉，便于用手抓送入口。现在的肉汁意粉\r\n(spaghetti with meat \r\nsauce)，是后来才出现的吃法。当然，马可波罗当年在中国也吃过我们的牛肉汤面或者排骨汤。但是有汤的spaghetti乃至以之作汤的 \r\nspaghetti soup全是后来出现的意粉吃法。<br />\r\n<br />\r\nSpaghetti一词源于意大利语spago, 意思是一条线。一条意粉是spaghetto, 通常用复数的spaghetti.意粉一碟，面条杂乱，因此车辆往来多，交通混乱的街口称为 spaghetti junction.<br />\r\n<br />\r\n11. Speaking of the devil<br />\r\n<br />\r\n几个同学聚到一起聊天，大家都到齐了，唯独不见Wayne. 其中一个说今天好像没见到Wayne, \r\n另一个接着说他的女儿放暑假，东西要从宿舍里搬出来，他大概帮忙去了。正说着，只见Wayne从外面走过来。Joe于是说\"speaking of \r\nthe devil\".几个人乐了起来。我心想Wayne 这个人平常挺老实的，为什么说他是devil呢？于是我悄悄地去问Joe.<br />\r\n<br />\r\n原来speaking of the devil是一条成语，相当于中文的“说曹操，曹操到”。也就是刚说Wayne 不在，结果他就来了。我不禁惊诧于语言的共通性，因为曹操不是也有“奸雄”的称号吗？中英文在这一成语上有着这样惊人的异曲同工之处。<br />\r\n<br />\r\n12.Stolen from ... dealer<br />\r\n<br />\r\n高速公路上人车奔驰，朋友突然指着前方一部小轿车，说：“哇！这人好嚣张，贼车还敢挂上招牌！”我顺着他的目光看过去，不禁哑然失笑，我说：“ \r\n先生呀！人家车牌上写着‘stolen from … Dealer’,是指他这部从… Dealer那儿买来的车，价格低廉，便宜得像偷来得一样。” \r\n这是一种美式幽默广告手法，吸引顾客去… Dealer那儿买车，不是贼车啦。 ”<br />\r\n<br />\r\n13. Sweet tooth<br />\r\n<br />\r\n我最害怕看牙医，但是因为有一颗蛀牙让我实在疼痛难忍，所以只好鼓足勇气，到牙医诊所挂号。当医生为我检查的时候，他问我：\"Do you have a sweet tooth?\"<br />\r\n<br />\r\n我很无辜地回答：\"I had a doughnut this morning before coming here. I brushed my teeth. There is no sweet tooth.\"<br />\r\n<br />\r\n他听了后摇摇头，便开始替我补牙。 很敏感的我，知道可能答非所问，闹了笑话，但是却百思不解。我懂 Sweet 及 Tooth \r\n这两个单字，但把这两个字放在一起合用，我就不知道意思了。回家查了字典后，我才恍然大悟，原来sweet tooth的意思是“爱吃甜食”。<br />\r\n<br />\r\n14.The Hong Kong dog<br />\r\n<br />\r\n一次在一堂电脑课上，铃响后，系里的女秘书突然跑到教室来宣布：\"Dr. Walker has a touch of the Hong Kong dog and will be here a little bit late.\"<br />\r\n<br />\r\n听完宣布后，我一脸正经地向坐在隔壁的美国朋友抱怨说：“Dr. Walker 怎么可以抚弄他的爱犬以至于来不及上课呢？”<br />\r\n<br />\r\n老美听完后居然大笑着说：“真是太好笑了！The Hong Kong dog 并非指一种狗，而是指某人吃坏了肚子、拉肚子的意思”这一解释让我尴尬得无地自容。<br />\r\n<br />\r\n15. Throw the book at Somebody<br />\r\n<br />\r\n和先生从car \r\nwash(洗车场)里开出来，车上的水珠还依稀可见，这让先生想起一件事：曾经有一个美国人在高速公路上超速开车，时速达100多英里。警察当然把他截下\r\n来。在法庭上，他辩解之所以开快车，是因为想让风尽快把刚刚洗过的车吹干。我听了好笑，更好奇结果如何。<br />\r\n<br />\r\n先生答曰：结果是\"They threw the book at him\".<br />\r\n<br />\r\n我不禁诧异，想像着他被“书砸”的样子。<br />\r\n<br />\r\n原来并非如此，\"Throw the book at somebody\"是指给某人最大极限的惩罚：charge someone to the full range of law.如果法律是一本书，那么这本书中所有被违犯了的条例，他都将为之遭受最严重的惩罚。', '2014-10-11 19:51:30', '2', '0', '0', '0', '0', null, '0', '0', '1');
INSERT INTO `blog` VALUES ('9', '英语达人告诉你，如何用美剧真正提升你的英语水平', '1. 不是所有的美剧都适合学英语<br />\r\n　　如果喜欢看如《24小 时》这样的动作片, \r\n那你基本会讲一口流利的\"呯\"\"轰\"\"啊\"之类的开枪爆炸声英语.如果你喜欢看如《豪斯医生》这种专业性很强的片子,那你基本会讲一些如 \r\nMRI,CT,Tumor之类的连自己都不明白的江湖郎中英语.如果看的是《越狱》,基本不用举手,别人就知道你是黑手党的了.不是所有剧都合适的,用来\r\n学习的美剧,是要有一定对话量,生活化的,平民化的片子.<br />\r\n　　2. 开着字幕看是没有前途的<br />\r\n　　很 \r\n多人喜欢开着字幕看,觉得会有参照更有帮助,其实这是在拖你的后腿.就像很多人结婚,喜欢找个比自己丑的伴娘,以为这样自己就进步了,事实上是被拖下水 \r\n了.中文是母语,对我们的眼球来说有无比强大的吸引力,只要在那里,你一定会看,就像放个美女在眼前,男人一定会看,不看的可能是老婆在一边,或是他爱人\r\n 也是个男人.一般人永远会不自觉通过中文字幕理解英语,而不是通过听懂-理解-记忆-重复,这样的过程学到英语.<br />\r\n　　3.看一遍是不够的<br />\r\n　　看 \r\n一遍根本不能叫学英语,充其量只能叫娱乐.如果是抱着学习的目的,必须反复看,精听,理解句子词语的意思,为我所用才行.如果看一遍,基本你就被情节彻底\r\n打败了,或哭或笑,反复思考自己该拥有&lt;HEROES&gt;里的哪种超能力,担心下集可以下载前的日子该怎么过,哪还有心思管学英语这码事,哪怕\r\n讲 的是柬埔寨语都无所谓.所以通过看个几遍,基本到了对剧情已经免疫的程度,如看老友记看到已经笑不出来了,那差不多可以洗干净耳朵仔细听了.<br />\r\n　　给大家推荐几部我最喜欢用来正常学英语的美剧:<br />\r\n　　1. 初级:Friends<br />\r\n　　Friends是经典中的经典,对于英语初级水平的朋友来说,是突破发音和对话交流最好的美剧.整个剧都是人物间谈话,而且都很简短,没有长句,词汇非常简单,基本是plain english的典范.我发觉自己的英文有明显的提升,就是在看这部剧多达十遍后.<br />\r\n　　2. 中级:Desperate Housewives<br />\r\n　　这部剧讲述的是美国中产阶级的故事,所以用词和语言非常标准,相对于Friends有更多的长句和表达,非常适合中级水平的朋友学习.<br />\r\n　　3. 高级:The West Wing<br />\r\n　　这是关于美国白宫的政治题材美剧,整个剧基本都是对话,而且语速非常快,充斥着辩论和演讲,词汇也非常高级,听起来很有难度.如果能把这部剧都搞透了,真可以谢谢十八辈祖宗了.<br />\r\n通过看美剧的方法，在2个月的时间内将《欲望都市》看了4至5遍，托福听力由原先的20分的水平升至了满分。她的做法就是，找到一部自己很喜欢的美剧，然\r\n后先看一遍带中文字幕的。了解了大致的剧情，满足了自己休闲娱乐的好奇心，然后第二，三遍的时候开始看带双语字幕的，遇到不认识的生词，就停下来查一查，\r\n然后记录。这样虽然比较费时，但是相比死气沉沉地不停地听抄听写，已经要生动很多。经过一段时间的积累，已经记了满满一本的生词和句型。这个时候，再去看\r\n第四遍和第五遍，完全脱离拐杖，不带中英字幕。经过前面的积累，这时候再看情节已经轻松很多，并且能够深入理解每个人物在说这句对白时候的动机和理由，对\r\n语言本身的理解也更深入了一步。于此同时，进行一下跟读。比如，听到一个人物的口语很好听，发音标准优雅，就刻意地进行一下模仿，体会一下她的语音、语\r\n调、重音、节奏。这样在训练了听力的前提下，口语水平也会有大幅度地提升。要知道美剧当中的对白和旁白是最好的口语学习范本。<br />\r\n在看美剧学习语言的时候要注意些什么？首先，注意发音。对于任何一门语言，语音是基础，它不仅包括单词的发音，还包括真实交际中词汇、习语的连读、失爆、\r\n弱化、浊化、重音、缩读等一系列的音变形式。至于语调节奏，则是地道流利表达英语的润滑剂，没有接触过地道的外国人，没有和他们有过面对面的交谈，是很难\r\n感受到语调节奏在表达思想中的巨大作用和强大震撼力的。因此要仔细地体会美剧之中，人物的发音和表达之中的语言习惯。其次，了解文化。语言是文化的载体，\r\n用词和句式使用是否准确直接体现了对异国文化了解的程度。可以说，发音好其实只是与美国人的语言形似，如果能够掌握美国人的思维习惯和文化，用美国文化去\r\n思维，则可达到神似的效果。这就是一种立体的学习方式，美剧则是这种学习方法最好的媒介。<br />\r\n一、准备好笔和纸，将笔放在鼠标旁边，将便笺放在屏幕和座椅之间，作好随时停顿和记录的预备动作。<br />\r\n二、只记录能引发自己内心感触和共鸣的语句和一些符合自身个性特色的句型及语法。<br />\r\n三、记录的时候最好不要分析思考和尝试记忆，待整个影片观看完毕之后，将统一回顾和整理。<br />\r\n四、一部章节或一部电影里面的典型句子和精彩对白记录完毕之后，一定要趁热打铁，想办法用上。（如通过写博客或者到英语角去操练。如果有参加培训班的话，一定不要放过任何能锻炼自己演讲口才的机会。）<br />\r\n五、再告诉大家一个绝活：如果你发现了那种让自己百看不厌的经典英文影片，不妨通过全能音频转换通软件将它的MP3提取出来，然后到网站上下载完整的英文\r\n字幕，再用LRC歌词编辑器将它做成同步显示歌词文本，放到自己的MP3或者电脑里，随时温习，处处操练。不知不觉这部影片的精髓尽入脑海，随时引用。从\r\n而达到通过影视学英语的最终目的。<br />\r\n<br />\r\n不少英语学习者都有这样的困惑：学了十几年的英语，通过了考试，能完全听懂标准语速的英语新闻广播，可就是听（看）不懂英语原版影视剧（无中文字幕），这使他们开始怀疑自己的听力能力。<br />\r\n　　要解决这个问题，我们先来了解一下新闻英语和影视英语之间的区别。首先，两者在语体上有较大的区别。前者是书面语体的口头形式，用于正式的交际场合，\r\n经过加工和润饰，比较文雅，是合乎标准的书面语言，因而使较多使用长句、复句、结构严谨的完整句。布局层次分明、逻辑关系严谨是它的主要特征。后者为口头\r\n语体，以日常会话为基本形式，一般用于交际双方直接接触的场合，因而多使用短句、单句、省略句。随意性，不完整是它的主要特征。在英语学习过程中，我国的\r\n英语学习者接触的绝大部分是书面语体。而在英语影视剧中，口头体的语言材料是最重要的特征，具体表现为口语中流行的惯用表达方式、俚语以及相关的跨文化因\r\n素。其次，在语言材料的输出方面二者也存在较大的差异。英语新闻或英语故事通常是一人输出，输出者往往经过专业训练，发音标准流畅，语速均匀。以美国英语\r\n为例，语音输出速率一般在150音节/分钟，而在影视中，角色众多，根据剧情的要求，每个角色都有自身特有的语音、语调和语速，再加上连读、弱读等，这些\r\n都使其与英语学习都所熟悉的听力材料相差甚远，故造成了难以看（听）懂英语原版影视的情况。<br />\r\n　　 因此，看原版英语影视剧是练习英语听说的最好途径，影视剧通过声音与图像共同组成了完整的信息，将视觉刺激和听觉刺激有效地结合在一起，这是其它学习手段所不能达到的，同时还可以调动学习英语的兴趣，做到寓学于乐。<br />\r\n　　 那么怎样才能使学习者基本上能听懂原版英语影视剧呢？<br />\r\n　　第一，正确选择影视材料。在初级阶段，可选择那些与日常生活比较贴近、故事情节较强的影视材料，如肥皂剧。不要选那些专业术语较多或是逻辑推理较强的\r\n影视材料，如科幻、法律、医学、刑侦等。不宜选情景剧，因为情景剧一般固定在一、两个场景中，故事情节不足，有碍学习者对剧情的理解，另一方面情景剧对话\r\n多、信息量大且密集度高。加之丰富的俚语、流行语和文化背景知识，更增加了理解的困难。此外，也不要选择卡通片，因为卡通片的角色的语音和语调其极夸张，\r\n不易理解。建议采用电视剧作入门材料，每一集比较短，一般在45分钟左右，情节交代比较详细，剧情发展比较慢而又相对独立，便于理解。<br />\r\n　　第二，采用正确的学习方法。在观看学习时，绝对不能看字幕（可将字幕隐去），要强迫自己全身心去听、去理解，坚持由浅入深、循序渐进的原则。建议每天\r\n花一天两个小时，第次看一集，每一集至少看四遍。第一遍以了解剧情为主，不必在意能听懂多少；第二遍全神贯注地观看，尽可能地去理解；第三遍要有针对性地\r\n观看，对于不易听懂的对话要反复多次听，对实在听不懂的，建议使用复读机听写软件观看，既方便，效果又好，如能做到听写台词则效果更佳；第四遍，将这一集\r\n配上英文字幕，再看一遍。四遍看完之后，再仔细研读剧本。弄清楚难点和生词，并将一些比较好的表达方式、惯用法等记录下来作为积累，并不断练习提高英语口\r\n语能力。此外，如有必要也可看过两、三遍之后，再用MP3随时听。在有关的共享网站上，可下载各种影视剧的视频、MP3、英文剧本和中英文字幕。<br />\r\n　　在第一阶段的学习中，可选择Desperate \r\nHousewives(绝望的主妇)作入门材料。该剧曾经获得全美收视冠军，它贴近日常生活，剧情引人入胜，更主要的是它的语言比较简单规范、地道，没有\r\n像情景剧那么多的惯用法、流行语和俚语，同时又有舒缓优美的女声旁白惯穿于全剧，特别有助于对剧情的理解，这也是该剧的一大特色。非常适合于初学者。 \r\nDesperate Housewives(绝望的主妇) 现在有三季，每季有二十三集。看完这三季，学习者观看英语原版影视的能力会得到较大的提高。<br />\r\n　　 第二阶段的学习可采用Gilmore Girls(共七季)这也是一部生活剧，特别适合青少年学生观看，其语言规范易懂。还有One Tree Hill（篮球兄弟）共七季，是一部有关篮球的青少年偶像剧。<br />\r\n　　 第三阶段的学习可采用Sex and the \r\nCity（都市欲望）共六季，该剧描述了四位白领女性的都市生活，也是一部经典剧集，曾获多项艾美奖；或是The \r\nO.C（共三季），一部青春偶像剧。通过对以上电视剧的观看和学习，你的视听理解能力心及口语能力会得到飞跃。如果哪一天你能不借助字幕轻松地听懂情景剧\r\n Will &amp; \r\nGrace所有的内容，那么恭喜你，你的英语水平已经到了足够高的境界，作为学英语的材料，它比Friends层次更高。演员的语速更快，台词更难，文化\r\n背景更多。<br />\r\n　　 以上的方法我们称之为精看（听）。除精看（听），也可以进行一些泛听（看）。先一些台词不多或是自己喜欢的影视剧来观看，一方面也可以缓解精听的紧张听力，自娱自乐；另一方面也可以检验一下效果。但不要给自己任何压力，看（听）不懂也没关系。<br />\r\n　　同时也要做好相应阅读以增加词汇、惯用法、流行语以及文化背景知识。由于我们目前能接触的绝大部分为美国影视资料，建议大家多看一点有关美国的语言文\r\n化资料。如Reader’s \r\nDigest，这是一本平民化的美国畅销杂志，与日常生活非常贴近。还要读一些有关美国流行口语和俚语的书籍。这会对理解英语影视有很大的帮助。<br />\r\n　　 有人不无夸张地说：看一部美国影视胜过在美国生活十天。我们没有英语听说的语言环境，但可以通过看英语影视剧来创造一种“习得听说“的英语语言环境，使自己如身临其境般学到纯正地道的英语。<br />\r\n　　 此外，看（听）只是语言交际的输入，决不能忽略它的输出---说，因为在看（听）英语影视时，要认真做好学习笔记，对于比较有用的表达方式要不断诵记，反复操练。这样才能将听与说有效地结合起来。', '2014-10-11 19:52:28', '2', '1', '0', '0', '0', null, '0', '0', '1');
INSERT INTO `blog` VALUES ('10', '优秀是一种习惯：教你英语学习妙招', '亚里士多德云：优秀是一种习惯。这句话被新东方的高中低层人员不断的引用和使用着，不断地在新东方的舞台上重复着，也告诉我们这样的一个真理：习惯改变人\r\n生。从考试的角度来说，习惯也意味着分数的区别，意味着能否进入自己心仪的学校。下面和大家介绍几个有用的习惯，还有就是要改掉的一些习惯，分成英语学习\r\n的背单词，阅读，听写还有写作的习惯。<br />\r\n　　<strong>1、背单词的习惯</strong><br />\r\n　　似乎背单词永远是中国学生英语好坏的标准，也是考察的重要内容，那么我首先要和大家谈这个问题，就是背单词的习惯问题。<br />\r\n　　首先，重复次数不是越多越好。同次背诵的时候，抄写或者朗读的次数不是越多越好，而是在72小时内进行有效的重复，基本上我们喜欢做的抄10次就够\r\n了，再多的次数其实在不久之后就会很容易忘记，还有就是不要担心一次背太多会忘得太多。关键在于，3天之内重复一次，过一段时间再重复一次，这个时间最好\r\n在一个月以内。那么有两样东西是帮助我们的利器，一个是单词卡，按照周或月份的顺序去排列，抄写10次正好用来写单词卡的内容，其次是一块白板或者小黑\r\n板，简单的话还可以用挂历的背面，用宽面胶纸贴上一层，也可起到白板的作用，每晚睡觉之前和每天起来的时候就重复自己要背的一部分词汇。这样一个循环之\r\n后，就会很容易的记住不少词汇。一个循环可以是7天，不断的复习前面忘记的东西，第七天就复习前面忘记的单词。还有就是用mp3把自己朗读单词的声音录下\r\n来听，这样初次可能会容易不习惯，但是习惯了自己的读音之后我们可以很有效的在坐车和等车乃至起来刷牙的时候，都可以学习。现在还有一个方式就是放进自己\r\n的手机里，那么不管有没有耳机，我们都可以随时学习。请记住，优秀是一种习惯!', '2014-10-11 19:56:21', '4', '5', '4', '0', '0', null, '0', '0', '1');
INSERT INTO `blog` VALUES ('11', '掌握英语的三十个好习惯', '<span>学习英语的最高境界是什么，是习惯，只有习惯了学习英语，习惯了使用英语，那么才有可能掌握英语，下面列举出的学习英语的三十个好习惯，可以帮助你掌握学习英语的窍门。 <br />\r\n<br />\r\n</span>\r\n<p>\r\n	<span> What is the best situation of learning English? It is a habit. Only with\r\n an English learning habit and an English using habit may you master \r\nEnglish. 30 good habits of learning English are enumerated as follows, \r\nwhich will help you possess the secret to learn English. <br />\r\n</span>\r\n</p>\r\n<p>\r\n	<span><strong>1、将英语真正融入日常生活！不要学英语，而要生活在英语当中！ <br />\r\n<br />\r\nEnglish-learning should be integrated into daily lives. Not only learn English, but live in English also. <br />\r\n<br />\r\n　　2、把难单词、难句子制作成海报，贴在家里最显眼的地方，不知不觉就掌握了！<br />\r\n<br />\r\nMake some posters with those difficult words and sentences. Hang them in\r\n the most outstanding places at home. You will learn them \r\nsubconsciously.&nbsp;&nbsp;<br />\r\n<br />\r\n　　3、不读英语就难受！不读英语就“寝食难安”！让读英语变成“最大的爱好”！ <br />\r\n<br />\r\nDevelop a habit of reading English until you feel upset even you can’t \r\nenjoy eating and sleeping without reading English. Let reading English \r\nbe your biggest hobby. 　　<br />\r\n<br />\r\n4、睁开眼睛的第一件事就是“大声喊英语”！喊出一天的活力和辉煌！喊出一天的充实和成功！ <br />\r\n<br />\r\nMake yelling English your first thing to do after waking up in the \r\nmorning, with which you begin your energetic and marvelous daily life, \r\nwith which you begin your rich and successful daily life. <br />\r\n<br />\r\n　　5、入睡前一定要大喊英语十分钟！让英语进入潜意识，做梦也在学英语。 <br />\r\n<br />\r\nShout in English ten minutes before going to bed. Let English come into \r\nyour subconsciousness. You still learn English when dreaming.&nbsp;</strong></span>\r\n</p>\r\n<p>\r\n	<span><strong>6、“一日三餐前后”狂读五分钟英语，否则就不配吃饭，这叫“一日三餐法”！饭前读英语反思人生，饭后读英语有助消化！这是一个伟大的习惯！我要在全国普及这个习惯！ <br />\r\n<br />\r\nBefore or after every meal English must be read aloud five minutes \r\notherwise the meal should be given up. This is the method of ‘three meal\r\n a day’. Reading English before a meal may help rethink lifetimes. \r\nReading English after a meal may help digestion. This is a great habit \r\nthat should be penetrated throughout China. <br />\r\n<br />\r\n　　7、跑步喊英语！既锻炼了身体肌肉，又锻炼了口腔肌肉！两个肌肉都发达的人绝对有“非凡的竞争力”！具体做法：在出去跑步前，先记住一段英语。 <br />\r\n<br />\r\nYell in English while jogging which will make both body and mouth muscle\r\n strong. Such a person will absolutely have extraordinary \r\ncompetitiveness. The tangible act is to recite a paragraph of English \r\nbeforehand ere jogging. <br />\r\n<br />\r\n　　8、一看到公园，就跑进去大声喊英语。充分享受美景，充分呼吸新鲜空气！ <br />\r\n<br />\r\nRun into the park as soon as it is seen and shout in English, with which\r\n you can inhale fresh air fully and enjoy glamorous scenery. <br />\r\n<br />\r\n　　9、“四个一”原则：每当我读英语或说英语的时候，我都会做到一抬头、一挺胸、一收小腹、一用力！这样，我的英语马上就会变得地道、好听！ <br />\r\n<br />\r\nAdhere to the principle of ‘four once’. Every time I read English or \r\nspeak English I must cock my head once, thrust my chest once, draw in my\r\n belly once and strain once. In this way I can speak idiomatic and sound\r\n English. <br />\r\n<br />\r\n　　10、平时说英语、练英语的时候一定要元音特别饱满！这样可以训练自己的非凡气质。 <br />\r\n<br />\r\nAlways enunciate vowels fully when speaking or practicing English so that an extraordinary temperament will be cultivated.&nbsp;</strong></span>\r\n</p>\r\n<p>\r\n	<span><strong>11、有空就练习辅音。要想说一口流利的英语，就必须做到：元音饱满悦耳、辅音准确清晰。比如，我经常拿一张纸放在嘴巴前面苦练爆破音：\r\n newspaper, popular, possible。我经常咬下嘴唇，苦练[v]这个音，夸张地朗读drive, vegetable, \r\nfive等单词。 <br />\r\n<br />\r\nPractice consonants when free. In order to speak English fluently you \r\nmust make vowels full and sound well, consonants correct and clear. For \r\ninstance, I usually practice plosion hard through putting a piece of \r\npaper in front of my mouth. I practice the consonant V hard by biting my\r\n lower lip. I often read aloud the words such as drive, vegetable and \r\nfive turgidly. <br />\r\n<br />\r\n　　12、尽量多地听录音！这是最有效、最便宜的学习方法！听得越多，语感就越好！而且你的英语发音就越好听。 <br />\r\n<br />\r\nListen to records as much as possible. It is the most effective and \r\ncheapest way to learn English. The more you listen, the better your \r\nlanguage sense is. In addition, your English pronunciation will be \r\ngood-hearing. <br />\r\n<br />\r\n　　13、看到的、听到的，都尝试翻译成英文，随时随地训练自己的“口译能力”！ <br />\r\n<br />\r\nTry interpreting anything seen or heard. Hone your interpretation faculty anywhere and anytime. <br />\r\n<br />\r\n　　14、每天有计划的训练自己的“翻译能力”，最好的办法就是每天翻译一篇小短文。学习英语的最高目标就是：中英文自由转换！这也是社会最需要的能力，\r\n当然这也是为你自己创造最大价值的能力！这个能力很难获得，一定要每天坚持练习！先准确翻译单词，然后是句子，其次是短文。 <br />\r\n<br />\r\nSharpen your translation capacity regularly every day. The best method \r\nis to translate an essay every day. The largest target of learning \r\nEnglish is to make Chinese and English interchanged freely. This talent \r\nis the most needed in the society. It is certainly the capacity for you \r\nto make the largest value. It is hard-won. You must adhere to practicing\r\n every day. First of all, interpret words correctly, then sentences, and\r\n then essays. <br />\r\n<br />\r\n　　15、随时随地携带单词本，收集好单词、好句子、好文章！尤其是名言警句！ <br />\r\n<br />\r\nTake a vocabulary notebook with you all the time. Collect any good \r\nwords, sentences or articles, particularly wisdoms and epigrams.<br />\r\nIf one cannot enjoy reading a book or an article over and over again, there is no use in reading it at all. Do you agree?</strong></span>\r\n</p>\r\n<p>\r\n	<span><strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16、收集好文章，将所有让自己心动的文章反复朗读，最好能脱口而出！因为只有背诵课文才是征服英语的最终解决之路！ <br />\r\n<br />\r\nCollect good articles and read aloud repetitively those moving ones. It \r\nis the best to bolt out them because only by reciting texts can we \r\nvanquish English. It is the ultimate solution. <br />\r\n<br />\r\n　　17、出门前，立刻制造一个小卡片或小纸条，随身携带，经常背诵！这是最有效的学习方法！ <br />\r\n<br />\r\nBefore outing, take a small card or a small slip with you, on which you \r\nwrote English words or sentences. Recite English often, which is the \r\neffective approach of learning English. <br />\r\n<br />\r\n　　18、要养成一种伟大的习惯：善于利用一天当中大量的、被忽略的、被浪费的一分钟、两分钟！你一旦有了这个伟大的习惯，你的一天将是别人的两天，甚至三天！</strong></strong></span>\r\n</p>\r\n<p>\r\n	<span><strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>21、忘掉谦虚，卖弄得越多，记忆得越牢！ <br />\r\n<br />\r\nForget modesty. The more you show off, the better you keep in mind. <br />\r\n<br />\r\n　　22、疯狂地热爱“难单词”！记住：这个世界上没有难单词，只有重复不够的单词！不信就试一试。 <br />\r\n<br />\r\nLove difficult words crazily. Mind you, there is no difficult word in \r\nthe world but less repeated words. You can try if you don’t believe it. <br />\r\n<br />\r\n　　23、疯狂收集和掌握成语。英语的一个难点就是习惯用语。<br />\r\n<br />\r\nCollect and master idioms as more as you can. Learning English idioms is one of the difficulties. <br />\r\n<br />\r\n　　24、第一句不能脱口而出，坚决不学第二句！这又是一个伟大的习惯。刚开始的时候，进度可能比较慢，但一定要坚持，因为这样做会为自己打下坚实的基础！ <br />\r\n<br />\r\nIf the first sentence is not bolted out, the second one won’t be \r\nlearned. This is another great habit. It may be slow at outset. You must\r\n insist on learning because only in this way can a solid foundation be \r\nlaid. <br />\r\n<br />\r\n　　25、把每天坚持朗读英语当成训练自己意志力的一个办法。这种训练一举两得：既让自己变得更有意志，而且顺便讲了一口流利的英语！ <br />\r\n<br />\r\nTake reading aloud English every day as one of the methods to train the \r\nvolition. You can kill two birds with one stone by the method, which not\r\n only makes you become tough, but also learn to speak English smoothly \r\npassingly.&nbsp;</strong></strong></strong></span>\r\n</p>\r\n<p>\r\n	<span><strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>26、每天争取帮助一个人对英语感兴趣，或激励一个人开始操练英语！要做到这一点，你就必须自己先做出榜样！而且自己要取得一定的成绩才能说服别人！ <br />\r\n<br />\r\nHelp a person be interested in English every day, or motivate him to \r\nstart practicing English. To achieve this, you must set up an example \r\nyourself. What’s more, you have to persuade others with your own \r\nachievement. <br />\r\n<br />\r\n　　27、每天都赞扬自己的记忆力，自己的语言模仿能力，自己的天赋！不要给自己的负面思想留下任何空间！从今天开始养成这个习惯！ <br />\r\n<br />\r\nApplaud your own memory every day including your language imitating, \r\nyour talent. Don’t leave any space for your negative thought. Develop \r\nthis habit from today on.<br />\r\n<br />\r\n　　28、每当自己想放弃的时候就想想成功时候的辉煌，就想想父母抚养我们长大所付出的艰辛，就想想语言这么简单的东西自己都无法征服所带来的耻辱，你就会重新充满斗志！ <br />\r\n<br />\r\nRecalling your marvelous performance when you want to give up, recalling\r\n your parents’ hard life when they brought up you, recalling the \r\nmortification which pesters you when you even fail to vanquish a \r\nlanguage that is such a simple thing, you will resume collecting \r\nyourself. <br />\r\n<br />\r\n　　29、永远记住：重复就是力量！我们学不好英语，做不好工作的原因就是重复得远远不够！为了训练自己的英语功力和耐心，请你每个月都做这样一件事情：把一篇文章每天朗读三次，每次三遍，连续一个月！奇迹一定会发生！你的发音、语感，你的记忆力、理解力都会得到提升！ <br />\r\n<br />\r\nKeep in mind for ever: repetitiveness is power. The reason why we fail \r\nto learn English or can’t do job well is that we repeat far less. In \r\norder to enhance your own English strength and patience, please do the \r\nthing like this every month: read an article thrice a day, thrice one \r\ntime. Do it continually for a month. A marvel must appear. Your \r\npronunciation, your sense of language, your memory and your \r\ncomprehension will be all improved. <br />\r\n<br />\r\n　　30、向你重视的人宣布你要开始学英语口语了，并且保证要在一定时间内拿出成绩来。以此来激励你自己。为了面子也要坚持下去。<br />\r\n<br />\r\nAnnounce your English learning plan to the people you think much of and \r\npromise them to make achievement within a certain time, by which you’re \r\nencouraged. You’ll adhere to save your face.</strong>&nbsp;<br />\r\n<br />\r\nA great habit should be developed, through which you are good at making \r\nuse of every one or two minutes that is numerous, easy to be ignored and\r\n always wasted in a day. Once you own this great habit your one day time\r\n will be equally other’s two, even three day one. <br />\r\n<br />\r\n　　19、要养成随身携带英语书的习惯！我在窗边、厨房、客厅，甚至厕所都放了英语书，快速看上一两分钟就足够了！什么都怕天天做，什么都怕坚持！ <br />\r\n<br />\r\nA habit of keeping English books at hand should be cultivated. I keep \r\nEnglish books on windowsills, in kitchen, sitting-room, even washroom. \r\nIt is enough to read one or two minutes promptly every time. Anything \r\ncan be finished if it is done every day. Anything can be completed if \r\nyou adhere to doing it. <br />\r\n<br />\r\n　　20、要养成热爱丢脸的习惯！管它说好说坏，只管疯狂地说！只有这样才会越说越好<br />\r\n<br />\r\nA habit of daring to lose face should be cultivated. No matter well or \r\nbadly you can speak English, you just speak it madly. Only in this way \r\ncan you speak better and better. </strong></strong><br />\r\n</span>\r\n</p>', '2014-10-11 20:00:10', '4', '3', '0', '0', '0', null, '0', '0', '1');
INSERT INTO `blog` VALUES ('12', '英语降分就能改变“哑巴英语”的现状吗？', '<p style=\"text-indent:2em;text-align:left;\">\r\n	近日，多地正在制订的\r\n新一轮高考改革方案，纷纷把调整的重点指向英语科目，不约而同地降低了其权重。将于2016年开始实行的北京新高考方案，直接把英语科目的分值砍去\r\n1/3，从150分降至100分。教育大省山东，明确2014年起高考英语不再统考听力；重庆市则在去年出台的高考方案中规定，自2013年起英语学科\r\n（不含听力）考试时间调整为100分钟，自2014年起，高考英语科目统考笔试部分不再含听力。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	“一切从那本英语书开\r\n始的，那书中的男孩LiLei，身边的女孩名叫HanMeimei，还有Jim、Lily和Lucy，Kate、LinTao和Uncle \r\nWang，一只会说话的鹦鹉叫Polly。”对于绝大数80、90后而言，从捧起这本绿色封皮的课本开始，英语便和我们的生活进行了无缝对接，并成为各类\r\n考试的镇考之宝。仅就国内考试而言，从中考高考到考研考博，都需要考英语，最近的国考中不少岗位也对英语等级作了限定，而面向国外的托福、托业等考试更是\r\n不胜枚举。最近甚至还听说了一位同学和她男朋友闹分手，原因是其男友至今还未通过四级。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	学了那么多年的英语，\r\n可是学了多少有用的英语呢？英语考试的不少题型设置只是为了考试而考试，并未回归工具学科的本质属性。2013年高考结束后，有媒体曾邀请外教试水英语试\r\n题，而外教惊呼看到第一道语法题就“晕了”。他们认为，“这些语法题几乎都是‘中式思维’，以中文的方式‘硬翻译’过来，却不重视句子的实用性。这些表达\r\n很不地道，我们在美国永远不可能这样教学生，也不会这样说话。”他们不明白，中国学生为什么要花大量时间在这些题上。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	最近各地正在酝酿的英\r\n语考试新政，无疑释放出了一个积极的信号：改变开始了！借用奥巴马在2008年的经典竞选口号，那就是“Change We Can Believe \r\nIn”！前不久，全国大学英语四、六级考试委员会宣布从今年12月考试起，英语四、六级考试题型将发生变化：翻译由单句变为段落、不再考查完型填空，四六\r\n级将更倚重“能力测试”。最近的高考英语改革无疑与这一理念暗合。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	问题是，英语考试降分就能改变“哑巴英语”的现状吗？\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	在\r\n民国时代，并未有现在这样诸多的英语标准化考试，但是学贯中西的大师依然层出不穷。号称“清末怪杰”的辜鸿铭精通英、法、德、拉丁、希腊、马来亚等9种语\r\n言，获13个博士学位，倒读英文报纸嘲笑英国人，说美国人没有文化，第一个将中国的《论语》、《中庸》用英文和德文翻译到西方。他曾批评说，“今人读英文\r\n十年，开目仅能阅报，伸纸仅能修函，皆由幼年读一猫一狗之式教科书，是以终其身只有小成。”由此看来，改变“哑巴英语”的症结由来已久，不是仅仅通过英语\r\n考试降分就能改变的。\r\n</p>\r\n<br />\r\n<br />\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	在多年的课程表设置\r\n上，语数外中的“外”被狭义定义为“英语”，“一语独大”的格局严重破坏了语言生态平衡，事实上，有不少学生就是对英语不感冒，但却对日语、法语等语种驾\r\n轻就熟。而在国外，多语种的教学体系早已成熟，学生们可根据自己的爱好兴趣或是否实用选择自己的外语课，很多学生能够熟练掌握数种外语，这已是一种常态。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	英语考试降低分值的初衷是好的，能够击碎当前英语学习的泡沫，但如何真正能改变“哑巴英语”的现状？如何能够真正提高学生的外语素养？这是当前英语教育者应该思考的地方。\r\n</p>', '2014-10-11 20:03:00', '2', '0', '0', '0', '0', null, '0', '0', '1');
INSERT INTO `blog` VALUES ('13', '【双语】数字时代，爱情只是一场游戏么', 'Have you got a date for Valentine’s Day? If the answer is no, you may \r\nwant to consider turning to dating apps for help. It’s super easy: All \r\nyou need to do is upload an attractive photo of yourself and add a short\r\n but interesting self-introduction.<br />\r\n情人节你有约了吗？如果没有，那么你可以考虑向交友软件求助。而整个流程简单极了：你所需要做的只是上传一张个人靓照，加上一段有趣的个人简介。<br />\r\n<br />\r\nDating apps are changing the courtship landscape, even if you have only a\r\n small circle of friends. Have a crush on someone? Just give them a \r\n“thumb-up” on their profile. If it’s not reciprocated, no big deal. You \r\ndon’t really know each other, so you don’t need to feel embarrassed. \r\nBesides, there are plenty of fish in the sea.<br />\r\n即便你的朋友圈很小也没关系，交友软件也可以扩大你的交友范围。如果对某人一见钟情？就给他/她点个赞吧！如果对方没有回应，也没什么大不了的。事实上你们素不相识，所以也不用觉得尴尬。更何况，天涯何处无芳草。<br />\r\n<br />\r\nYou probably won’t meet “the one” through dating apps, but at least \r\ngetting yourself out this way will open opportunities to meet new \r\npeople.<br />\r\n尽管在交友软件上，你可能无法找到真爱，但至少这种方式可以让你结交到新朋友。<br />\r\n<br />\r\nSome critics, however, say dating apps kill romance. Because they can \r\nmatch people based on their location, many people use dating apps as \r\nhook-up tools. They’re not interested in a serious relationship, but \r\nrather are looking for a short fling or even just a one-night-stand.<br />\r\n然而，有人指责交友软件扼杀了浪漫。由于这些软件可以根据地理位置定位自动匹配用户，所以在很多人手中，它们变成了“钓人”工具。他们无意寻找一段认真的感情，而是希望及时行乐，甚至只是为了“一夜情”。', '2014-10-11 20:04:11', '2', '0', '0', '0', '0', null, '0', '0', '1');
INSERT INTO `blog` VALUES ('14', '十大方法让你快速记记忆英语单词', '<p style=\"text-indent:2em;text-align:left;\">\r\n	<strong>第一大方法：通过英语语音发音背英语单词</strong>\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	同学们要掌握英语单词拼写与英语语音之间的规律，发好每一个英语音标，读准每一个英语单词；还可以把包含同一元音的英语单词归为一类集中练习！通过英语语音背英语单词不但很快就能记住英语单词，更能练出地道英语语音！\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	<strong>第二大方法：跟着英语录音背英语单词</strong>\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	导致背英语单词失败的根本原因是：英语语音发音不过关，英语单词读不准。所以一定要跟着标准的英语录音来背单词。把音量开到最大，反复听英语录音并跟着大声朗读英语单词。这时候你的眼睛、耳朵、嘴巴全部用起来了，不断刺激大脑，印象也特别深刻！\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	<strong>第三大方法：“三最”狂读背英语单词</strong>\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	“默默无闻”地背英语单词效果极其低下！一定要用 “三最法”狂读狂背每个英语单词。背英语单词的时候，一定要做到最大声、最清晰、最快速。当你用“三最法”练习英语单词时，你就会高度集中注意力，记忆的效率会大大提高。\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	<strong>第四大方法：分门别类背英语单词</strong>\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	英语中有很多英语单词属于同一类别，可以把同一类别的英语单词集中起来一起练习，从而能大大提高记忆力。同学们也可以自己动手，对本书的英语单词进行分门别类，抄在小纸条上或制成英语单词卡，然后集中轰炸、专门突破、分类记忆！\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	<strong>第五大方法：单词家族背英语单词</strong>\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	英语中有很多英语单词都有整个家族，名词、动词、形容词、副词，加上不同的前缀、后缀就有不同的词性变化、意思变化。要想彻底掌握一个英语单词，我们要做的就是：整个家族一锅端！通过单词家族来背也可以大大提升背英语单词的效率。\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	<strong>第六大方法：利用零碎时间背英语单词</strong>\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	背英语单词不需要大段大段的整块时间。每天起床后、睡觉前、一日三餐前后、排队等车、上学放学路上、甚至上厕所的零碎时间都可以用来狂读狂背英语单词。请随身携带本书，一有时间就疯狂朗读书中的英语单词，随时随地疯狂练习，脱口而出！\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	<strong>第七大方法：同义反义背英语单词</strong>\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	看到一个英语单词的时候，可以联想到它的同义词或近义词，通过对比辨析，掌握它们的用法；看到一个英语单词的时候，可以联想到它的反义词，一正一反，成双成对，让你一石二鸟，一箭双雕！用这种对比法来记忆英语单词，印象会更加深刻！\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	<strong>第八大方法：同声传译背单词</strong>\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	看着英语单词脱口而出它的中文意思，看着中文意思脱口而出这个单词。通过中英文快速互译的方法背英语单词，效果也是特别好的！同时还可以锻炼你的口译能力。\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	<strong>第九大方法：通过英语句子背单词</strong>\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	在英语句子中记英语单词才能牢记单词的意思和用法，才能与之建立感情，才会让你刻骨铭心！重要的是，通过脱口而出英语句子来背英语单词，你不但在积累英语单词量，更在积累句子量！句子量比单词量更重要！\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	<strong>第十大方法：通过英语文章背单词</strong>\r\n</p>\r\n<p style=\"text-indent:2em;text-align:left;\">\r\n	一篇英语文章里面包含了大量有用的英语单词和英语短语，通过背诵英语文章可以大面积地消灭英语单词！而且，在英语文章中你可以牢牢记住英语单词的意思和用法。更重要的是，通过背诵英语文章你能够大段大段地讲英语了，这才是我们英语学习的最终目的。\r\n</p>', '2014-10-11 20:05:26', '2', '1', '0', '0', '0', null, '0', '0', '2');
INSERT INTO `blog` VALUES ('15', '【推荐】外语学习复读机【兼容Wind ７系统电脑】', '在学习上，很多同学说想找一个能找到可以装Wind ７系统的外语学习复读机，那么我给大家推荐一个既可以下载来使用，也可以能装上的复读机软件吧。<br />\r\n<br />\r\n<br />\r\n【简介说明】：<br />\r\nAboboo 是功能齐全的外语学习工具，自动将音频和视频分割成句子，省去手工断句的烦恼。 \r\n独特的双波形复读操控，每句均有波形同步显示，便于选取区间重点复读。 \r\n独创视觉口语训练引擎(VOTE)，随时随地一键跟读，提供原声和跟读的波形和声调的音节级评分，帮助你快速提高口语。<br />\r\n<br />\r\n【复读机页面】：<br />\r\n<img id=\"aimg_31522\" src=\"http://bbs.enfamily.cn/data/attachment/forum/month_1208/1208101317c5baaed7b72f7bdc.jpg\" class=\"zoom\" width=\"600\" /> <br />\r\n<br />\r\n<br />\r\n看完了页面之后，应该可以了解到里面的一些事项怎么操作了。现在我来演示下如何使用它。<br />\r\n<br />\r\n<br />\r\n【使用复读机步骤如下】：<br />\r\n1.先打开复读机页面（不需要注册都可以使用），然后点《课件》按钮，变成如下图：<br />\r\n<img id=\"aimg_31523\" src=\"http://bbs.enfamily.cn/data/attachment/forum/month_1208/1208101323d3e9f9cb3811cdbe.jpg\" class=\"zoom\" width=\"600\" /> <br />\r\n<br />\r\n2.打开之后，选第一项《打开MP3/Wav文件制作课件》按钮，会弹出一个对话框，如下图：<br />\r\n<img id=\"aimg_31524\" src=\"http://bbs.enfamily.cn/data/attachment/forum/month_1208/12081013272622b0245e90ed87.jpg\" class=\"zoom\" width=\"600\" /> <br />\r\n<br />\r\n3.然后在找你要播放的音频MP3放进复读机里，如下图：<br />\r\n<img id=\"aimg_31525\" src=\"http://bbs.enfamily.cn/data/attachment/forum/month_1208/12081013321a388b4f07af2e3f.jpg\" class=\"zoom\" width=\"565\" /> <br />\r\n<br />\r\n4. 然后音频Mp3放进去之后，就变成这样页面了，如下图：<br />\r\n<img id=\"aimg_31526\" src=\"http://bbs.enfamily.cn/data/attachment/forum/month_1208/1208101335646848612bf244e6.jpg\" class=\"zoom\" width=\"600\" /> <br />\r\n<br />\r\n这样就可以使用复读机了。断句的停顿是看上面的波浪线，这个复读机需要手动去复读的，暂时没自动播放。<br />\r\n<br />\r\n<br />\r\n希望这个免费的复读机能够帮到同学学习！\\(^o^)/~<br />\r\n<br />\r\n<br />\r\n请用迅雷工具，点击下载地址即可：<a href=\"http://download.aboboo.com/release/Aboboo2.4.2.exe\" target=\"_blank\">Wind７复读机学习工具</a>', '2014-10-11 20:06:53', '2', '4', '1', '2', '0', null, '0', '0', '2');
INSERT INTO `blog` VALUES ('16', 'Chinese Accent 中国人的英语口音 共4集（可下载）', '来自BBC Learning English 的系列对话节目。听听BBC专家如何教你学英语。<br />\r\n<br />\r\n<br />\r\nChinese Accent 1 中国人的英语口音：单音篇<a href=\"http://bbc.enfamily.cn/qa_of_the_week/100806_qanda_93_the_chinese_accent_story.html\" target=\"_blank\">http://bbc.enfamily.cn/qa_of_the_week/100806_qanda_93_the_chinese_accent_story.html</a><br />\r\n<br />\r\nChinese Accent 2 中国人的英语口音： 语流篇<br />\r\n<a href=\"http://bbc.enfamily.cn/qa_of_the_week/100813_qanda_95_chinese_accent_2_story.html\" target=\"_blank\">http://bbc.enfamily.cn/qa_of_the_week/100813_qanda_95_chinese_accent_2_story.html</a><br />\r\n<br />\r\nChinese Accent 3 中国人的英语口音：口语语法篇<br />\r\n<a href=\"http://bbc.enfamily.cn/qa_of_the_week/100820_qu_96_chinese_accent_3_story.html\" target=\"_blank\">http://bbc.enfamily.cn/qa_of_the_week/100820_qu_96_chinese_accent_3_story.html</a><br />\r\n<br />\r\nChinese Accent 4 中国人的英语口音：专家看口音<br />\r\n<a href=\"http://bbc.enfamily.cn/qa_of_the_week/100827_qanda_98_chinese_accent_4_story.html\" target=\"_blank\">http://bbc.enfamily.cn/qa_of_the_week/100827_qanda_98_chinese_accent_4_story.html</a>', '2014-10-11 20:08:37', '4', '1', '0', '0', '0', null, '0', '0', '3');
INSERT INTO `blog` VALUES ('17', '正能量英语:\"I find that the harder I work, the more luck I seem to have', 'I find that the harder I work, the more luck I seem to have.\" - Thomas Jefferson（我发现，我越是努力，就越发幸运。—托马斯•杰斐逊）<img src=\"http://localhost:818/js/kindeditor/plugins/emoticons/images/13.gif\" alt=\"\" border=\"0\" />', '2014-10-11 20:10:06', '1', '1', '0', '0', '0', null, '0', '0', '4');
INSERT INTO `blog` VALUES ('18', 'Fun英语:freight', '#Fun英语#“各种费用的英语表达”② \r\n【freight】=运费，指海运、空运、陆运的费用；【postage】=邮费；【rent】=土地、建筑物、机器等定期的租费；【tip】=小费；\r\n【toll】=道路、桥梁、港口、市场的通行费和电话费等；【tuition】=学费', '2014-10-11 20:11:35', '2', '6', '0', '1', '0', null, '0', '0', '1');

-- ----------------------------
-- Table structure for bloginform
-- ----------------------------
DROP TABLE IF EXISTS `bloginform`;
CREATE TABLE `bloginform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(200) DEFAULT NULL COMMENT '举报理由',
  `blogId` int(11) DEFAULT NULL COMMENT '帖子ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bloginform
-- ----------------------------

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(20) NOT NULL,
  `blogId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', '0:0:0:0:0:0:0:1', '18');
INSERT INTO `blog_user` VALUES ('2', '0:0:0:0:0:0:0:1', '15');
INSERT INTO `blog_user` VALUES ('3', '127.0.0.1', '15');

-- ----------------------------
-- Table structure for enwords
-- ----------------------------
DROP TABLE IF EXISTS `enwords`;
CREATE TABLE `enwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) DEFAULT NULL,
  `explain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enwords
-- ----------------------------

-- ----------------------------
-- Table structure for everydayonce
-- ----------------------------
DROP TABLE IF EXISTS `everydayonce`;
CREATE TABLE `everydayonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `content` longtext,
  `english` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of everydayonce
-- ----------------------------
INSERT INTO `everydayonce` VALUES ('1', '2014-10-05', '有些鸟儿是注定不会被关在牢笼里，它们的每一片羽毛都闪耀着光辉。', 'Some birds are not meant to be caged; their feathers are just too bright. ');

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `reason` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friends
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rpId` varchar(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `sdId` varchar(11) NOT NULL,
  `senderName` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `addF` int(1) unsigned zerofill DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'yaokwok', '0', '欢迎使用易英语', '感谢您注册易英语，当前本站为内测体验状态，如果你发现有什么问题或建议请向我们提交反馈，官方EAGER团队竭诚为您服务，祝你玩得愉快！<br> ---------------------------------------系统邮件请勿回复---------------------------------------', '0', 'EAGER团队', '2014-10-11 19:18:03', '0');
INSERT INTO `news` VALUES ('2', 'lucy', '0', '欢迎使用易英语', '感谢您注册易英语，当前本站为内测体验状态，如果你发现有什么问题或建议请向我们提交反馈，官方EAGER团队竭诚为您服务，祝你玩得愉快！<br> ---------------------------------------系统邮件请勿回复---------------------------------------', '0', 'EAGER团队', '2014-10-11 19:41:20', '0');
INSERT INTO `news` VALUES ('3', 'peter', '0', '欢迎使用易英语', '感谢您注册易英语，当前本站为内测体验状态，如果你发现有什么问题或建议请向我们提交反馈，官方EAGER团队竭诚为您服务，祝你玩得愉快！<br> ---------------------------------------系统邮件请勿回复---------------------------------------', '0', 'EAGER团队', '2014-10-11 19:48:12', '0');
INSERT INTO `news` VALUES ('4', 'Michael.D', '0', '欢迎使用易英语', '感谢您注册易英语，当前本站为内测体验状态，如果你发现有什么问题或建议请向我们提交反馈，官方EAGER团队竭诚为您服务，祝你玩得愉快！<br> ---------------------------------------系统邮件请勿回复---------------------------------------', '0', 'EAGER团队', '2014-10-11 19:53:12', '0');
INSERT INTO `news` VALUES ('5', '222@222.com', '0', '欢迎使用易英语', '感谢您注册易英语，当前本站为内测体验状态，如果你发现有什么问题或建议请向我们提交反馈，官方EAGER团队竭诚为您服务，祝你玩得愉快！<br> ---------------------------------------系统邮件请勿回复---------------------------------------', '0', 'EAGER团队', '2014-10-12 20:29:58', '0');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `permission` varchar(45) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_role
-- ----------------------------

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL COMMENT '题目内容',
  `userId` int(11) DEFAULT NULL COMMENT '试题贡献者',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `correct` int(11) DEFAULT '0' COMMENT '纠正次数',
  `answer_keys` varchar(255) DEFAULT '略' COMMENT '标准答案解析',
  `source` varchar(20) DEFAULT NULL COMMENT '试题来源',
  `difficulty` varchar(20) DEFAULT NULL COMMENT '难度0初阶1中阶2高阶',
  `testId` int(11) DEFAULT '0' COMMENT '试卷ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('4', '123123', '4', '2015-06-09 20:53:55', '0', '124124124124', '0', '0', '2');
INSERT INTO `questions` VALUES ('5', 'sdgsdgsdg', '4', '2015-06-09 21:10:53', '0', 'dfdfsd', '1', '1', '12');
INSERT INTO `questions` VALUES ('6', '11111111111111111111111111111111111', '4', '2015-06-10 13:27:19', '0', '略', '0', '0', '2');
INSERT INTO `questions` VALUES ('7', '22222222222222222', '4', '2015-06-10 13:29:01', '0', '略', '0', '0', '2');
INSERT INTO `questions` VALUES ('8', '3333333333333333', '4', '2015-06-10 13:29:16', '0', '略', '0', '0', '2');
INSERT INTO `questions` VALUES ('10', 'fsdf', '4', '2015-06-11 00:07:15', '0', '略', '0', '0', '2');
INSERT INTO `questions` VALUES ('11', 'egewwwwwwww', '4', '2015-06-11 00:08:08', '0', '略', '0', '0', '3');
INSERT INTO `questions` VALUES ('12', 'fdddddddddd', '4', '2015-06-11 00:10:04', '0', '略', '0', '0', '3');
INSERT INTO `questions` VALUES ('13', 'dgsdf', '4', '2015-06-11 00:11:44', '0', '略', '0', '0', '3');
INSERT INTO `questions` VALUES ('14', 'dffd', '4', '2015-06-11 00:13:30', '0', '略', '0', '0', '3');
INSERT INTO `questions` VALUES ('15', 'fgdfffff', '4', '2015-06-11 00:15:05', '0', '略', '0', '0', '3');
INSERT INTO `questions` VALUES ('16', 'ergf', '4', '2015-06-11 00:17:06', '0', '略', '0', '0', '4');
INSERT INTO `questions` VALUES ('17', 'nnnnnnnnnnn', '4', '2015-06-11 00:18:47', '0', '略', '0', '0', '4');
INSERT INTO `questions` VALUES ('18', 'ffb', '4', '2015-06-11 00:20:15', '0', '略', '0', '0', '4');
INSERT INTO `questions` VALUES ('19', 'b', '4', '2015-06-11 00:21:08', '0', '略', '0', '0', '4');
INSERT INTO `questions` VALUES ('20', 'ffd', '4', '2015-06-11 00:21:48', '0', '略', '0', '0', '4');
INSERT INTO `questions` VALUES ('21', null, '4', '2015-06-11 15:20:19', '0', '略', '0', '0', '5');
INSERT INTO `questions` VALUES ('22', null, '4', '2015-06-11 15:21:46', '0', '略', '0', '0', '5');
INSERT INTO `questions` VALUES ('23', '124323rwerwwwwwwwwwrwer', '4', '2015-06-11 17:07:07', '0', 'dddgsfsvvvvvvvvvsdfsdfsdff', '1', '1', '12');
INSERT INTO `questions` VALUES ('24', 'dgsv', '4', '2015-06-11 17:16:59', '0', '略', '0', '0', '5');
INSERT INTO `questions` VALUES ('25', '33333323', '4', '2015-06-11 19:20:16', '0', '略', '0', '0', '5');
INSERT INTO `questions` VALUES ('26', '33333323', '4', '2015-06-11 19:21:08', '0', '略', '0', '0', '5');
INSERT INTO `questions` VALUES ('27', '33333323', '4', '2015-06-11 19:22:04', '0', '略', '0', '0', '6');
INSERT INTO `questions` VALUES ('28', '33333323', '4', '2015-06-11 19:24:16', '0', '略', '0', '0', '6');
INSERT INTO `questions` VALUES ('29', '33333323', '4', '2015-06-11 19:24:54', '0', '略', '0', '0', '6');
INSERT INTO `questions` VALUES ('30', null, '4', '2015-06-11 19:32:57', '0', '略', '0', '0', '6');
INSERT INTO `questions` VALUES ('31', '123', '4', '2015-06-11 19:43:16', '0', null, '0', '0', '6');
INSERT INTO `questions` VALUES ('32', null, '4', '2015-06-11 20:20:19', '0', null, '0', '0', '7');
INSERT INTO `questions` VALUES ('33', 'vsddsvc', '4', '2015-06-11 20:25:24', '0', 'dgsd', '0', '0', '7');
INSERT INTO `questions` VALUES ('34', 'ddddddd', '4', '2015-06-11 20:28:12', '0', 'ddddddddd', '0', '0', '7');
INSERT INTO `questions` VALUES ('35', '1111111111111', '4', '2015-06-11 20:29:48', '0', '1', '0', '0', '7');
INSERT INTO `questions` VALUES ('36', 'fsdf', '4', '2015-06-11 20:46:34', '0', 'fdf', '0', '0', '7');
INSERT INTO `questions` VALUES ('37', null, '4', '2015-06-17 20:36:51', '0', '略', null, null, '0');
INSERT INTO `questions` VALUES ('38', null, '4', '2015-06-17 22:19:22', '0', '略', null, null, '0');
INSERT INTO `questions` VALUES ('39', null, '4', '2015-06-17 22:31:44', '0', '略', null, null, '0');
INSERT INTO `questions` VALUES ('40', 'The Business Banking Department is on____________second floor. ', '4', '2015-06-18 17:14:32', '0', null, '0', '1', '12');
INSERT INTO `questions` VALUES ('41', 'Maria often has a walk with____________parents in the morning.', '4', '2015-06-18 17:15:09', '0', null, '0', '0', '0');
INSERT INTO `questions` VALUES ('42', 'There____________four children in the picture.', '4', '2015-06-18 17:15:51', '0', null, '0', '1', '12');
INSERT INTO `questions` VALUES ('43', ' I  ’  d like____________oranges, please.  ', '4', '2015-06-18 17:16:34', '0', null, '0', '1', '12');
INSERT INTO `questions` VALUES ('44', 'He____________in Beijing, but his parents____________in Hangzhou.', '4', '2015-06-18 17:17:19', '0', null, '0', '1', '0');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `score` varchar(255) DEFAULT '0' COMMENT '得分',
  `beginTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('2', '2', '4', '20', null, '2015-06-18 00:25:20');
INSERT INTO `reply` VALUES ('3', '2', '4', '0', null, '2015-06-18 10:31:50');
INSERT INTO `reply` VALUES ('4', '2', '4', '40', null, '2015-06-18 10:32:51');
INSERT INTO `reply` VALUES ('5', '2', '4', '0', null, '2015-06-18 10:36:20');
INSERT INTO `reply` VALUES ('6', '2', '4', '20', null, '2015-06-18 10:38:24');
INSERT INTO `reply` VALUES ('7', '2', '4', '60', null, '2015-06-18 10:40:32');
INSERT INTO `reply` VALUES ('8', '2', '4', '0', null, '2015-06-18 16:55:21');
INSERT INTO `reply` VALUES ('9', '2', '4', '40', null, '2015-06-18 17:09:36');
INSERT INTO `reply` VALUES ('10', '12', '4', '80', null, '2015-06-18 17:18:49');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionsId` int(11) DEFAULT NULL COMMENT '问题ID',
  `identifier` varchar(255) DEFAULT NULL COMMENT '用户回答的选项序号',
  `replayId` int(11) DEFAULT NULL COMMENT '回答ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('1', '4', 'b', '2');
INSERT INTO `result` VALUES ('2', '6', 'b', '2');
INSERT INTO `result` VALUES ('3', '7', 'b', '2');
INSERT INTO `result` VALUES ('4', '8', 'b', '2');
INSERT INTO `result` VALUES ('5', '10', 'b', '2');
INSERT INTO `result` VALUES ('6', '4', 'c', '3');
INSERT INTO `result` VALUES ('7', '6', 'b', '3');
INSERT INTO `result` VALUES ('8', '7', 'a', '3');
INSERT INTO `result` VALUES ('9', '8', 'd', '3');
INSERT INTO `result` VALUES ('10', '10', 'd', '3');
INSERT INTO `result` VALUES ('11', '4', 'b', '4');
INSERT INTO `result` VALUES ('12', '6', 'c', '4');
INSERT INTO `result` VALUES ('13', '7', 'c', '4');
INSERT INTO `result` VALUES ('14', '8', 'a', '4');
INSERT INTO `result` VALUES ('15', '10', 'a', '4');
INSERT INTO `result` VALUES ('16', '4', 'c', '5');
INSERT INTO `result` VALUES ('17', '6', 'a', '5');
INSERT INTO `result` VALUES ('18', '7', 'b', '5');
INSERT INTO `result` VALUES ('19', '8', 'c', '5');
INSERT INTO `result` VALUES ('20', '10', 'a', '5');
INSERT INTO `result` VALUES ('21', '4', 'c', '6');
INSERT INTO `result` VALUES ('22', '6', 'd', '6');
INSERT INTO `result` VALUES ('23', '7', 'a', '6');
INSERT INTO `result` VALUES ('24', '8', 'a', '6');
INSERT INTO `result` VALUES ('25', '10', 'c', '6');
INSERT INTO `result` VALUES ('26', '4', 'd', '7');
INSERT INTO `result` VALUES ('27', '6', 'b', '7');
INSERT INTO `result` VALUES ('28', '7', 'c', '7');
INSERT INTO `result` VALUES ('29', '8', 'c', '7');
INSERT INTO `result` VALUES ('30', '10', 'c', '7');
INSERT INTO `result` VALUES ('31', '4', null, '8');
INSERT INTO `result` VALUES ('32', '4', 'b', '9');
INSERT INTO `result` VALUES ('33', '6', 'd', '9');
INSERT INTO `result` VALUES ('34', '7', 'c', '9');
INSERT INTO `result` VALUES ('35', '8', 'b', '9');
INSERT INTO `result` VALUES ('36', '10', 'b', '9');
INSERT INTO `result` VALUES ('37', '5', 'b', '10');
INSERT INTO `result` VALUES ('38', '23', 'b', '10');
INSERT INTO `result` VALUES ('39', '40', 'c', '10');
INSERT INTO `result` VALUES ('40', '42', 'b', '10');
INSERT INTO `result` VALUES ('41', '43', 'a', '10');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '试卷名称',
  `difficulty` varchar(5) DEFAULT NULL COMMENT '试卷难度（0初，1中，2高）',
  `time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '2015入门英语第1套模拟测验练习题', '0', '2015-06-11 00:21:08');
INSERT INTO `test` VALUES ('2', '2015入门英语第2套模拟测验练习题', '0', '2015-06-11 00:21:48');
INSERT INTO `test` VALUES ('3', '2015英语入门第3套模拟测验练习题', '0', '2015-06-11 15:20:19');
INSERT INTO `test` VALUES ('4', '2015英语入门第4套模拟测验练习题', '0', '2015-06-11 15:21:46');
INSERT INTO `test` VALUES ('5', '2015英语入门第5套模拟测验练习题', '0', '2015-06-11 19:21:08');
INSERT INTO `test` VALUES ('6', '2015英语入门第6套模拟测验练习题', '0', '2015-06-11 19:43:16');
INSERT INTO `test` VALUES ('7', '2015英语入门第7套模拟测验练习题', '0', '2015-06-11 20:46:34');
INSERT INTO `test` VALUES ('8', '123123123', '0', null);
INSERT INTO `test` VALUES ('9', 'sdgdf', '2', null);
INSERT INTO `test` VALUES ('10', 'sdfsdf', '1', null);
INSERT INTO `test` VALUES ('11', 'sdfsdfsdf', '1', null);
INSERT INTO `test` VALUES ('12', '2015英语中级第3套模拟测验练习题', '1', '2015-06-18 17:16:34');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` int(5) DEFAULT NULL,
  `born` date DEFAULT NULL,
  `english_name` varchar(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `point` double DEFAULT '0',
  `question` varchar(20) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `imgurl` varchar(300) DEFAULT NULL COMMENT '头像',
  `status` int(1) unsigned zerofill DEFAULT '0' COMMENT '用户身份：0普通用户，1版主，2超级管理员',
  `block` int(1) unsigned zerofill DEFAULT '0' COMMENT '封锁用户不能登录，0正常，1封锁',
  `money` varchar(255) DEFAULT '0' COMMENT 'E币',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'yaokwok', '202cb962ac59075b964b07152d234b70', '1', '1992-05-20', 'yaokwok', '2014-10-11 19:18:03', '幼儿园', '1', null, null, '/upload/141011191911.jpg', '0', '0', '0', null);
INSERT INTO `user` VALUES ('2', 'lucy', '202cb962ac59075b964b07152d234b70', '2', '1990-10-09', 'lucy', '2014-10-11 19:41:20', '小学生', '0', null, null, '/upload/141011194151.png', '0', '0', '0', null);
INSERT INTO `user` VALUES ('3', 'peter', '202cb962ac59075b964b07152d234b70', null, null, 'peter', '2014-10-11 19:48:12', '小学生', '0', null, null, null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('4', '123', '202cb962ac59075b964b07152d234b70', '1', '1993-02-17', 'MichaelD', '2014-10-11 19:53:12', '幼儿园', '4', null, null, '/upload/141011195354.jpg', '0', '0', '0', null);
INSERT INTO `user` VALUES ('5', '123@123.com', '202cb962ac59075b964b07152d234b70', '1', '1992-10-06', null, '2014-10-12 19:58:38', '小学生', '0', null, null, '/upload/141012220543.jpg', '0', '0', '0', null);
INSERT INTO `user` VALUES ('6', '222@123.com', '202cb962ac59075b964b07152d234b70', null, null, null, '2014-10-12 20:27:45', '小学生', '0', null, null, null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('7', '222@222.com', '202cb962ac59075b964b07152d234b70', null, null, null, '2014-10-12 20:29:58', '小学生', '0', null, null, null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('8', 'test@123.com', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, '2015-03-13 22:46:50', '小学生', '0', null, null, null, '0', '0', '0', null);
INSERT INTO `user` VALUES ('9', '111', '202cb962ac59075b964b07152d234b70', null, null, 'yao', '2015-06-09 14:32:17', '小学生', '0', null, null, null, '0', '0', '0', null);

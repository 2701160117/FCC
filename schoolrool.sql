/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : schoolrool

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-01-10 16:17:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for db_grade
-- ----------------------------
DROP TABLE IF EXISTS `db_grade`;
CREATE TABLE `db_grade` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `name` varchar(40) NOT NULL COMMENT '班级名称',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_grade
-- ----------------------------
INSERT INTO `db_grade` VALUES ('7A7D387313844371A0248F147FCD045A', '12数电', '');
INSERT INTO `db_grade` VALUES ('8B94633275484959A11DC3AE8ACA2B99', '12计算机', '');

-- ----------------------------
-- Table structure for db_student
-- ----------------------------
DROP TABLE IF EXISTS `db_student`;
CREATE TABLE `db_student` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `student_name` varchar(40) NOT NULL COMMENT '学生姓名',
  `student_no` varchar(40) NOT NULL COMMENT '学号',
  `in_time` varchar(40) NOT NULL COMMENT '入学时间',
  `college` varchar(40) NOT NULL COMMENT '学院',
  `class_name` varchar(40) NOT NULL COMMENT '班级',
  `native_place` varchar(40) NOT NULL COMMENT '籍贯',
  `home_address` varchar(100) NOT NULL COMMENT '家庭住址',
  `header_pic` varchar(100) NOT NULL COMMENT '近身照',
  `card_no` varchar(40) NOT NULL COMMENT '身份证号',
  `card_file` varchar(100) NOT NULL COMMENT '身份文件',
  `birthday` varchar(40) NOT NULL COMMENT '出生年月',
  `nation` varchar(40) NOT NULL COMMENT '民族',
  `is_graduate` varchar(10) NOT NULL COMMENT '是否毕业',
  `out_time` varchar(40) DEFAULT NULL COMMENT '毕业时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_student
-- ----------------------------
INSERT INTO `db_student` VALUES ('F2860A7038D04E05AF12A41D9383BA45', '张晓明', '20181001', '2018-12-14 13:33:25', '物理科学与技术学院', '8B94633275484959A11DC3AE8ACA2B99', '北京', '北京朝阳街道', '/upload/userHeader/2019-01-10/girl.jpg', '123123123', '/upload/userHeader/2019-01-10/card.jpg', '2018-12-14 13:33:25', '汉族', '0', '');

-- ----------------------------
-- Table structure for db_student_home_member
-- ----------------------------
DROP TABLE IF EXISTS `db_student_home_member`;
CREATE TABLE `db_student_home_member` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `student_id` varchar(40) NOT NULL COMMENT '学生编号',
  `nation` varchar(30) NOT NULL COMMENT '与学生关系',
  `name` varchar(40) NOT NULL COMMENT '姓名',
  `age` varchar(2) NOT NULL COMMENT '年龄',
  `work_address` varchar(100) NOT NULL COMMENT '工作单位',
  `home_addres` varchar(100) NOT NULL COMMENT '家庭住址',
  `tel` varchar(40) NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_student_home_member
-- ----------------------------
INSERT INTO `db_student_home_member` VALUES ('C2DC5BD11C0146409B7347B461A93FC0', 'F2860A7038D04E05AF12A41D9383BA45', '父亲', '李思思', '56', '在家务农', '北京啊', '15645454645');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `publish_time` varchar(40) DEFAULT NULL COMMENT '发布时间',
  `looks` int(11) DEFAULT NULL COMMENT '查看次数',
  `main_pic` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `small_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('152E073995EE482F87B3094927034DB3', '食品安全法规有哪些', '<p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">食品问题一直都是大众重点关注的内容，毕竟每个人都离不开食物，如果无法保证食物的安全，那么人的身体肯定是会受到很大影响的。为了加强对食品的监督管理，我国制定了相应的<a href=\"http://www.64365.com/fagui/article-640346.aspx\" title=\"食品安全法\" target=\"_blank\" style=\"color: rgb(1, 175, 99); transition: all 0.2s ease 0s; text-decoration-line: none !important;\">食品安全法</a>规，下面我们一起看看具体包括了哪些法规。</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\"><strong>一、法律</strong></p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国食品安全法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国农产品质量安全法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国农业法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国进出境动植物检疫法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国进出口商品检验法(修正)</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国动物防疫法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国<a href=\"http://www.64365.com/fagui/article-640351.aspx\" title=\"消费者权益保护法\" target=\"_blank\" style=\"color: rgb(1, 175, 99); transition: all 0.2s ease 0s; text-decoration-line: none !important;\">消费者权益保护法</a></p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国<a href=\"http://www.64365.com/fagui/article-648688.aspx\" title=\"产品质量法\" target=\"_blank\" style=\"color: rgb(1, 175, 99); transition: all 0.2s ease 0s; text-decoration-line: none !important;\">产品质量法</a></p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国标准化法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国国境卫生检疫法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国渔业法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\"><strong>二、法规</strong></p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">《国务院关于加强食品等产品安全监督管理的特别规定》(国务院令第503号)</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">流通领域食品安全管理办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">工业产品生产许可证试行条例</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">突发公共卫生事件应急条例</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">粮食流通管理条例</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国认证认可条例</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">散装食品卫生管理规范</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">农业转基因生物安全管理条例</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">粮食收购条例</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">生猪屠宰管理条例</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国农药管理条例</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">食盐专营办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">食盐加碘消除碘缺乏危害管理条例</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">学校卫生工作条例</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">《中华人民共和国国境卫生检疫法》实施细则</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\"><strong>三、部门规章</strong></p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">商务部、财政部令2008年第9号《生猪定点屠宰厂(场)病害猪无害化处理管理办法》</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">生猪定点屠宰厂(场)病害猪无害化处理管理办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">《工业产品生产许可证注销程序管理规定》将于3月1日正式实施</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">中华人民共和国国家质量监督检验检疫总局令</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">食用菌菌种管理办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">卫生部关于印发《食品卫生许可证管理办法》的通知</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">进口食品卫生质量管理</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">出口食品质量管理</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">兽药注册办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">兽药产品批准文号管理办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">卫生行政许可管理办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">预包装食品标签通则(GB7718-2004)</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">水产养殖质量安全管理规定</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">食品生产加工企业质量安全监督管理办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">农作物种质资源管理办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">集贸市场食品卫生管理规范</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">食盐价格管理办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">卫生行政执法文书规范</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">兽药标签和说明书管理办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">农业野生植物保护办法</p><p style=\"margin: 0px 0px 20px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, 微软雅黑; font-size: 16px; text-indent: 2em;\">以上就是我国目前制定的<strong>食品安全法规</strong>，其中有法律、有法规，也有部门规章，为保证民众的食品安全还是起到了很大作用的。上文中小编给出的信息可能不够完善，您可能还需要更细致、更全面的解决方案，如果您对该问题还有什么疑问，敬请咨询我们<a href=\"http://www.64365.com/\" title=\"律师365\" target=\"_blank\" style=\"color: rgb(1, 175, 99); transition: all 0.2s ease 0s; text-decoration-line: none !important;\">律师365</a>网的律师，为您进一步答疑解惑。</p>', '2019-01-02 13:24:44', null, '', '0', '<span style=\"color: rgb(102, 102, 102); font-family: tahoma, 微软雅黑; font-size: 16px; background-color: rgb(248, 248, 248);\">食品问题一直都是大众重点关注的内容，毕竟每个人都离不开食物，如果无法保证食物的安全，那么人的身体肯定是会受到很大影响的。为了加强对食品的监督管理，我国制定了相应的食品安全法规，下面我们一起看看具体包括了哪些法规。</span>');
INSERT INTO `sys_notice` VALUES ('34AEF33A8D29492C90633B89A7A3CBBE', '科普：禽肉蛋烹熟吃 Ｈ７Ｎ９禽流感可防范', '<div class=\"introduce\" style=\"word-break: break-all; word-wrap: break-word; margin: 15px; padding: 8px 12px; line-height: 25.2px; font-size: 14px; background: rgb(241, 241, 241); color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\"><span style=\"background-color: rgb(255, 255, 255);\">&nbsp;新华社巴黎２月２０日电 世界动物卫生组织总干事莫妮克·埃卢瓦日前在巴黎接受新华社记者采访时指出，Ｈ７Ｎ９禽流感病毒对禽类不具备高致病性，感染病毒的活禽往往表面看起来和健康禽类区别不大，因而增加了防疫难度。普通大众应尽可能减少接触活禽，但仍可安心食用烹熟的禽肉和蛋类。</span></div><div id=\"content\" style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\"><div class=\"content\" id=\"article\" style=\"word-break: break-all; word-wrap: break-word; font-size: 14px; line-height: 22.4px; padding: 10px 20px;\"><div style=\"word-break: break-all; word-wrap: break-word;\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word;\">&nbsp; &nbsp; 埃卢瓦说，目前尚无证据表明Ｈ７Ｎ９病毒具备人际传播能力，禽类仍是人类感染这种病毒的首要来源。“中国在２０１３年发现首例人感染Ｈ７Ｎ９禽流感病例后，在中国，特别是某些特定省份，这种病毒在活禽间传播的情况始终存在，因而人类被传染的风险也一直存在。”</div><div style=\"word-break: break-all; word-wrap: break-word;\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word;\">&nbsp; &nbsp; 她解释说，和目前在欧洲部分国家出现的Ｈ５Ｎ８禽流感不同，Ｈ７Ｎ９禽流感病毒的传播主要存在于家禽间，即养殖场或家庭饲养的鸡、鸭等禽类，与野生候鸟的迁徙没有直接关系。</div><div style=\"word-break: break-all; word-wrap: break-word;\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word;\">&nbsp; &nbsp; 埃卢瓦强调，人类感染Ｈ７Ｎ９禽流感病毒的主要途径包括直接接触感染病毒的活禽或其排泄物、分泌物，以及宰杀感染禽类时为其去毛的过程。一旦将禽类彻底去除羽毛并烹调至熟，便能够使病毒灭活，不存在感染人类的风险。因此，人们不必担心因食用烹熟的鸡肉或鸡蛋而感染禽流感病毒。</div><div style=\"word-break: break-all; word-wrap: break-word;\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word;\">&nbsp; &nbsp; 她说，从理论上讲，绝对避免与活禽直接接触能有效防止人类感染禽流感病毒，中国政府曾采取关闭活禽市场或将活禽迁移至市场边缘区域等措施，这对阻止疫情蔓延起到了积极作用。</div><div style=\"word-break: break-all; word-wrap: break-word;\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word;\">&nbsp; &nbsp; 然而埃卢瓦认为，活禽市场目前仍普遍存在于中国许多地区，长期大规模实施关闭措施具有一定困难。为尽可能降低感染病毒的风险，她建议人们在采购、宰杀和准备烹饪禽类时，首先确保他人、特别是儿童不要靠近，选择在室外而非室内迅速彻底清理掉禽类的羽毛并做焚烧处理，同时注意采用正确的烹调温度和时间。</div></div></div>', '2019-01-01 21:12:34', '0', '', '1', '<span style=\"color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(241, 241, 241);\">核心提示：世界动物卫生组织总干事莫妮克·埃卢瓦日前在巴黎接受新华社记者采访时指出，Ｈ７Ｎ９禽流感病毒对禽类不具备高致病性，感染病毒的活禽往往表面看起来和健康禽类区别不大，因而增加了防疫难度。普通大众应尽可能减少接触活禽，但仍可安心食用烹熟的禽肉和蛋类。</span>');
INSERT INTO `sys_notice` VALUES ('4D05CF54DFB14029B76B9E03414E9F03', '【燃气科普】燃气常识80问，史上最全！果断收藏', '【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏【燃气科普】燃气常识80问，史上最全！果断收藏', '2019-01-02 16:03:55', '0', '', '1', '【燃气科普】燃气常识80问，史上最全！果断收藏');
INSERT INTO `sys_notice` VALUES ('747A927A2A8F4436985079BA71CE4642', '臭鱼烂虾不伤人？错', '<p><br /></p><p><span style=\"color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\" background-color:=\"\" rgb=\"\" 241=\"\"><span style=\"color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">沿海地区的老人们常说“臭鱼烂虾不伤人”，稍微坏点吃了没事。还有人拿其和虾酱比，既然虾酱吃了没问题，臭鱼烂虾也肯定安全。鱼虾等海鲜变质了真的还能吃吗？</span></span></p><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp; &nbsp; 鱼虾变质与虾酱的制作过程有本质区别。既然叫“海鲜”，肯定是越新鲜越好。海鲜通常比肉类更容易变质，一旦腐败就会产生挥发性胺类物质，散发出异味，吃后很容易引发食物中毒。即使将臭鱼烂虾加热，有些腐败产物也不能去除，而且有的微生物可产生耐热的毒素，加热后也不能避免中毒。</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp; &nbsp; 虾酱不同，它是在人为控制条件下，采用特殊制作方法，抑制了有害菌，促进有益菌生长并发酵，使之产生独特风味，而非腐败变质的臭味。虾酱在制作过程中若不注意保存，也可能变质，这样的虾酱同样不能食用。</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp; &nbsp; 尤其要注意的是，河蟹死后不能吃。它们体内含有大量微生物，一旦死亡，会迅速繁殖，扩散到蟹肉中并分解蛋白质，产生组胺等有毒产物，可引起食物中毒。冰鲜螃蟹大多是海蟹，体内微生物相对较少，在冰鲜状态下，微生物繁殖缓慢，短时间内食用问题不大。但冰鲜状态并不能完全阻止微生物繁殖，时间久了同样会产生有毒物质，如果不能判断商家卖的冰鲜螃蟹死了多长时间，建议谨慎购买。</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp; &nbsp; 另外，大家一定要吃多少买多少，避免反复冻融。鱼虾解冻后，体内的微生物活性得到恢复，快速繁殖，此后再冷冻也不能将其杀死。而且，冻融过程会破坏鱼虾的组织结构，更有助微生物繁殖。鱼虾每解冻1次，微生物会大幅增长，不仅更容易腐败，还可能有致病菌和毒素，增加食物中毒的风险。</div><br /><p></p>', '2019-01-02 12:03:50', '0', '', '1', '<span style=\"color: rgb(51, 51, 51);\">核心提示：沿海地区的老人们常说“臭鱼烂虾不伤人”，稍微坏点吃了没事。还有人拿其和虾酱比，既然虾酱吃了没问题，臭鱼烂虾也肯定安全。鱼虾等海鲜变质了真的还能吃吗？</span>');
INSERT INTO `sys_notice` VALUES ('C40197D9652648419C23EF436E2CAD4F', '矿物油的那些事儿', '<p><br /></p><p><span style=\"color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\" background-color:=\"\" rgb=\"\" 241=\"\"></span></p><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">油是我们日常生活中每天必不可少的必需品，尤其是食用油。但最近，网上曝光多家公司的多款食品被检出含矿物油，传言称矿物油可能会给肝脏、脾脏及淋巴等器官造成损害。那么，矿物油真如网上说的这么玄乎吗？今天就让我们来了解一下矿物油的相关知识。</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\"><span style=\"word-break: break-all;\">　　矿物油是什么？</span></div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">　　矿物油又名白油、石蜡油、液体石蜡，是以物理蒸馏的方法从石油中提炼出的液态烃类混合物，包括烷烃、芳香烃、环烷烃等。</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">　　矿物油根据用途不同分为工业级矿物油、化妆品级矿物油、食品级矿物油等，分别在机械和电气等工业、化妆品生产、生物医药、食品生产等领域被广泛应用。</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\"><span style=\"word-break: break-all;\">　　食品中的矿物油从哪来？</span></div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">　　食品中的矿物油主要来自生产过程的污染和包装材料的迁移，比如用含矿物油的颜料、油墨印制食品包装纸，在生产过程中使用矿物油作为加工助剂，或以矿物油作为润滑剂等。</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">　　很多食品中都可能含有矿物油，但是通常脂肪含量高的食品更容易被矿物油污染，比如辣椒油和巧克力。</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\"><span style=\"word-break: break-all;\"><br style=\"word-break: break-all;\" /></span></div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\"><span style=\"word-break: break-all;\">　　矿物油对人体健康有害吗？</span></div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">　　其实，食品级矿物油经过精炼，其中的有害成分已被尽可能去除，是国家允许使用的食品添加剂（加工助剂），可作为消泡剂、脱模剂、防黏剂、润滑剂在发酵食品、糖果、薯片和豆制品的加工工艺中使用，欧美国家也允许其用作食品添加剂。矿物油也是化妆品中广泛使用的成分，某些婴儿润肤油的主要成分就是矿物油。再举一个身边的例子，面包在烘焙前需要在烤盘底部和周边抹上些矿物油，便于面包出炉后脱模。</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">　　由此看来，矿物油并非什么可怕的毒物，其危害被某些媒体过分夸大了。</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\"><span style=\"word-break: break-all;\"><br style=\"word-break: break-all;\" /></span></div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\"><span style=\"word-break: break-all;\">　　含矿物油的食品能吃吗？</span></div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">&nbsp;</div><div style=\"word-break: break-all; word-wrap: break-word; color: rgb(51, 51, 51); font-family: \" microsoft=\"\" yahei=\"\" font-size:=\"\" 14px=\"\">　　矿物油不是直接加入食品中的成分，而是从食品包装或生产过程中带到食品中的，含量通常比较低，而且此类包装食品的食用量也不大，由此摄入的矿物油跟我们在日常生活中接触的矿物油量相比微不足道，对健康的影响无需过分担心。</div><br /><p></p>', '2019-01-01 21:11:41', '0', '', '1', '<span style=\"color: rgb(51, 51, 51);\">核心提示：油是我们日常生活中每天必不可少的必需品，尤其是食用油。但最近，网上曝光多家公司的多款食品被检出含矿物油，传言称矿物油可能会给肝脏、脾脏及淋巴等器官造成损害。那么，矿物油真如网上说的这么玄乎吗？今天就让我们来了解一下矿物油的相关知识。</span>');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `true_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `pic` varchar(500) DEFAULT NULL COMMENT '头像',
  `birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '生日',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱\r\n',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `phone` varchar(64) DEFAULT NULL COMMENT '手机',
  `introduce` longtext COMMENT '个人介绍',
  `role` varchar(64) DEFAULT NULL COMMENT '角色',
  `is_block` varchar(10) DEFAULT NULL COMMENT '是否锁定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('f36a0d14-8c1f-43dd-8d41-291fd25eeff1', 'admin', '666666', '系统管理员', '/upload/userHeader/2019-01-01/head.jpg', '2018-11-13 21:58:17', '111@qq.com', '男', '上海市', '10089', '测试', '1', '0');

-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 10 月 26 日 10:58
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `mobi_tysh`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `backmenu`
-- 

CREATE TABLE `backmenu` (
  `id_backmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_backmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

-- 
-- 导出表中的数据 `backmenu`
-- 

INSERT INTO `backmenu` VALUES (1, 1, '产品系统', '', 'product', 0, 1, 2, 1);
INSERT INTO `backmenu` VALUES (3, 1, '信息系统', '', 'news', 0, 1, 3, 1);
INSERT INTO `backmenu` VALUES (4, 1, '人事系统', '', 'hr', 0, 1, 4, 1);
INSERT INTO `backmenu` VALUES (5, 1, '权限系统', '', 'perm', 0, 1, 5, 1);
INSERT INTO `backmenu` VALUES (6, 1, '数据库备份', '', 'dbase', 0, 1, 6, 1);
INSERT INTO `backmenu` VALUES (9, 1, '产品管理', '', '/admin/product/product_manage.php', 1, 2, 9, 1);
INSERT INTO `backmenu` VALUES (8, 1, '产品目录', '', '/admin/product/product_dir.php', 1, 2, 8, 1);
INSERT INTO `backmenu` VALUES (47, 1, '区块管理', '', '/admin/siteset/layout.php', 44, 2, 47, 1);
INSERT INTO `backmenu` VALUES (15, 1, '信息分类', '', '/admin/news/news_dir.php', 3, 2, 15, 1);
INSERT INTO `backmenu` VALUES (16, 1, '信息管理', '', '/admin/news/news_manage.php', 3, 2, 16, 1);
INSERT INTO `backmenu` VALUES (17, 1, '员工档案', '', '/admin/hr/hr_staff.php', 4, 2, 17, 1);
INSERT INTO `backmenu` VALUES (19, 1, '招聘管理', '', '/admin/hr/hr_job.php', 4, 2, 19, 1);
INSERT INTO `backmenu` VALUES (20, 1, '系统菜单', '', '/admin/perm/perm_menu.php', 5, 2, 20, 1);
INSERT INTO `backmenu` VALUES (21, 1, '权限管理', '', '/admin/perm/perm_manage.php', 5, 2, 21, 1);
INSERT INTO `backmenu` VALUES (22, 1, '数据库备份', '', '/phpMyAdmin/', 6, 2, 22, 1);
INSERT INTO `backmenu` VALUES (39, 1, '信息回收站', '', '/admin/news/newsrecycle.php', 3, 2, 39, 1);
INSERT INTO `backmenu` VALUES (41, 1, '产品回收站', '', '/admin/product/productrecycle.php', 1, 2, 41, 1);
INSERT INTO `backmenu` VALUES (46, 1, '站点设定', '', '/admin/siteset/siteset.php', 44, 2, 46, 1);
INSERT INTO `backmenu` VALUES (44, 1, '站点管理', '', 'siteset', 0, 1, 1, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `dept`
-- 

CREATE TABLE `dept` (
  `id_dept` int(11) NOT NULL auto_increment,
  `dept` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_dept`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- 导出表中的数据 `dept`
-- 

INSERT INTO `dept` VALUES (36, '111', 1);
INSERT INTO `dept` VALUES (35, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `hr`
-- 

CREATE TABLE `hr` (
  `id_hr` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL default '1',
  `birthday` date NOT NULL,
  `hrcode` varchar(10) NOT NULL,
  `dept` int(11) NOT NULL,
  `iswork` int(1) NOT NULL default '1',
  `idcard` varchar(28) NOT NULL,
  `ismarry` int(1) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `native` varchar(30) NOT NULL,
  `register` varchar(60) NOT NULL,
  `inwork` date NOT NULL,
  `education` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `school` varchar(40) NOT NULL,
  `political` varchar(20) NOT NULL,
  `post` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `hometel` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hjqk` text NOT NULL,
  `cfqk` text NOT NULL,
  `gwbd` text NOT NULL,
  `ldht` text NOT NULL,
  `sbjn` text NOT NULL,
  `remark` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `logindate` datetime NOT NULL,
  `loginip` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_hr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

-- 
-- 导出表中的数据 `hr`
-- 

INSERT INTO `hr` VALUES (1, 1, 'administrator', 1, '0000-00-00', '', 36, 1, '', 0, '', '', '', '2011-01-29', '', '', '', '', 9, 15, '', '', '', '', '', '', '', '', '', '', 'admin', 'admin888', 1, 1, '2011-01-29 18:08:13', '2011-02-25 22:22:35', '0000-00-00 00:00:00', '2013-01-07 13:55:14', '116.238.74.196');

-- --------------------------------------------------------

-- 
-- 表的结构 `layout`
-- 

CREATE TABLE `layout` (
  `id_layout` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `openstat` int(1) NOT NULL default '1',
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- 导出表中的数据 `layout`
-- 

INSERT INTO `layout` VALUES (1, 1, '产品中心', '/product/products.php', '产品中心', '产品中心', 1, 3);
INSERT INTO `layout` VALUES (2, 1, '新闻动态', '/news/news.php', '新闻动态', '新闻动态', 1, 4);
INSERT INTO `layout` VALUES (3, 1, '天气预报', '/tq.php', '天气预报', '', 1, 5);
INSERT INTO `layout` VALUES (4, 1, '在线反馈', '/feedback.php', '在线反馈', '', 1, 6);
INSERT INTO `layout` VALUES (5, 1, '站内搜索', '/search.php', '站内搜索', '', 0, 7);
INSERT INTO `layout` VALUES (6, 1, '关于我们', '', '关于我们', '<p>公司拥有领先的技术和经验，目前是引领该行业的先锋企业。经过不断的试验，努力的改正错误，我们的客户在过去的几年逐步的增长。上海腾岩信息科技有限公司是一家专注互联网技术服务的高新科技公司，公司成立以来已经在众多领域取得了骄人的成绩，同时我们与国际、国内众多ISP服务商、软件开发商及IT服务企业结为战略联盟和合作伙伴。</p>\r\n<p>腾岩科技的服务范围包括：互联网基础应用、网站建设、企事业信息管理系统、数据库开发、B/S软件研发等。</p>\r\n<p>我们的互联网技术服务范围已经涵盖互联网所涉及的全部服务与技术支持，如域名注册、企业邮局、邮件群发、网站空间、数据库、服务器租用托管业务、网站建设、营运咨询、管理维护等等。</p>\r\n<p>腾岩科技专注以互联网领域的信息技术服务为公司的主要发展之路,使用户在享受信息科技发展最新成果的同时不断获得最大的收益。 一个能从别人的观念来看事情，能了解别人心灵活的人，永远不必为自己的前途担心。</p>', 0, 13);
INSERT INTO `layout` VALUES (7, 1, '合作伙伴', '', '合作伙伴', '<p><strong>联亚国际电讯有限公司联亚国际电讯有限公司</strong></p>\r\n<p>（ACT INTERNATIONAL TELECOM LIMITED，以下简称：联亚国际）是一家著名的香港电讯企业。 <br />\r\n2006年以来，为海内外客户提供包括语音增值业务、数据专线及互联网服务等各种电信增值业务，客户遍及欧洲、北美、台湾及东南亚等地。<br />\r\n经过多年的成功运营，联亚国际不仅积累了丰富的网络层交换及互联网维护经验，还汇聚了多位国内顶尖的linux/freeBSD/unix经验的系统工程师、微软认证工程师和网络安全技术人才，也包括一批拥有丰富行业经验和较高威望的专业人士。 <br />\r\n&nbsp;<br />\r\n<strong>慧新信息科技有限公司</strong></p>\r\n<p>慧新信息科技有限公司成立于2011年，是一家新兴的集软件研发与销售为一体的高科技企业，专注于互联网开发客户和电子商务领域。我们拥有高效专业的研发团队和客服团队，可以快速的解决客户的问题，并为客户提供专业和精准的售后服务。<br />\r\n公司致力于领先客户开发领域，并持续贯彻&ldquo;一流效用、相互信赖、优质服务、研发创新&rdquo;的品质政策，与国内数千家外贸公司合作，积极更新高效率客户开发方法并惯切与软件中，使公司的产品在国内市场上更具竞争力。 &ldquo;诚信合作，共创双赢&rdquo;是我们的最终目标。<br />\r\n&nbsp;<br />\r\n<strong>北京新网互联科技有限公司</strong></p>\r\n<p>历经8年坚实发展，北京新网互联科技有限公司致力于为企业提供一流的综合性网络营销服务，不断推出的基于互联网技术的创新应用产品，力求在为客户和合作伙伴创造价值的过程中实现自身价值。<br />\r\n新网互联在北京、上海、广州、深圳、南京、杭州、成都、厦门以及青岛、沈阳、西安、武汉、郑州、重庆等全国主要城市均设有分支机构，此外新网互联在全国有累计超过万家合作伙伴，间接或直接提供的服务已经遍及全国。<br />\r\n&nbsp;<br />\r\n<strong>商务中国</strong></p>\r\n<p>商务中国创立于2001年。通过业界独创的虚拟渠道管理体系VCP（Virtual Channel Provider），自创立于以来，始终坚持&ldquo;渠道为王&rdquo;的销售模式，通过不断的拓新产品，优化服务，与众多合作伙伴一起携手创造了逾十年辉煌的历史。<br />\r\n商务中国做为逾十年丰富经验的中国领先价值平台服务提供商，立足于通过提供综合的互联网服务，为客户搭建以企业综合效率提升为目的的价值平台。在新的征程中，商务中国高端云计算技术，将致力于更高效、更全面地为用户提供基于互联网、移动网络等的智能化应用服务。<br />\r\n&nbsp;<br />\r\n<strong>网易 (NASDAQ: NTES)</strong></p>\r\n<p>网易 (NASDAQ: NTES)是中国领先的互联网技术公司，邮件业务是网易公司的发展重点及重要基础服务。1997年11月，网易自主研发了国内首个全中文的免费电子邮件系统。时至今天，网易旗下电子邮箱用户总数已突破4亿，免费邮箱和收费邮箱市场占有率均稳居全国第一。<br />\r\n网易企业邮箱，采用业内顶尖技术，由具有丰富经验的专业团队开发运营，致力于为企业用户提供中国最专业的电子邮箱服务。<br />\r\n&nbsp;<br />\r\n<strong>网宿科技股份有限公司</strong></p>\r\n<p>网宿科技股份有限公司，最早成立于2000年1月，是国内领先的互联网业务平台服务提供商，主要向客户提供内容分发与加速、服务器托管、服务器租用等互联网业务平台解决方案，是国内最早开展IDC和CDN业务的厂商之一。2009年10月，网宿科技在深交所上市。</p>\r\n<p>网宿科技在全国拥有北京、上海、广州、深圳等4个营销分公司以及位于厦门的研发中心，员工总数超过500人。目前公司服务的客户近2000家，是市场同类公司中拥有客户数量最多、行业覆盖面最广的公司之一。<br />\r\n&nbsp;<br />\r\n<strong>深圳市润迅移动通信服务有限公司</strong></p>\r\n<p>深圳市润迅移动通信服务有限公司，是润迅集团下属专门从事数据业务的事业部制单位，拥有&quot;IDC+ISP+ICP+SP&quot;等十几项国际、国内运营资质，同时具有雄厚的技术实力及丰富的网络资源，专门从事互联网数据通信业务。<br />\r\n润迅集团在世界各地都建有资源丰富的电信级枢纽机房。国内对外运营的机房有深圳、广州、上海、惠州、香港等几个大型数据中心，并与国内各大电信运营商互联互通，并且发展了多家国际客户，在业界享有盛名，引航行业市场。</p>', 1, 9);
INSERT INTO `layout` VALUES (8, 1, '发展历程', '', '发展历程', '我们的发展历程<br />\r\n<br />\r\n2005年2月 成立团队<br />\r\n2006年3月 成为商务中国最高级别代理-伙伴代理<br />\r\n2006年8月 成为新网互联最高级别代理-合作伙伴<br />\r\n2007年4月 与网宿科技股份有限公司展开合作<br />\r\n2008年7月 与深圳市润迅移动通信服务有限公司展开合作<br />\r\n2009年12月 上海腾岩科技信息有限公司成立<br />\r\n2010年9月 经过多年调试和完善，正式推出网站后台管理系统<br />\r\n2011年10月 成功代理网易 (NASDAQ: NTES)专业企业邮局<br />\r\n2011年11月 与慧新信息科技有限公司展开合作<br />\r\n2011年12月 成为香港联亚国际电讯有限公司最高级别代理-合作伙伴', 1, 11);
INSERT INTO `layout` VALUES (9, 1, '客户案例', '', '客户案例', '<table class="txt" border="0" cellspacing="0" cellpadding="0" width="98%">\r\n    <tbody>\r\n        <tr>\r\n            <td>通过WAP虚拟主机建立网站后，在国内任何一部手机上都可浏览到网站信息，没有地域限制，便于手机网站推广等服务用户网站的宣传。<br />\r\n            为您通过手机上网的方式，更快捷的使用和浏览信息，进行资料查询、图片浏览、视频观看、会员注册、资料上传、网站管理、在线购物、访问统计，WAP网站设计支持多媒体，界面更加美观，资料上传更快，网站管理更加方便，更有效提高企业品牌形象。</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />\r\n<table class="txt" border="0" cellspacing="1" cellpadding="3" width="98%">\r\n    <tbody>\r\n        <tr bgcolor="#e5e5de">\r\n            <td style="color: #e55100" height="30">我们的案例</td>\r\n        </tr>\r\n        <tr>\r\n            <td style="padding-bottom: 0px; padding-left: 0px; padding-right: 0px; height: 1px; padding-top: 0px" bgcolor="#c3c3bf">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#fafafa" height="30" colspan="3"><a class="link_navi" target="_blank" href="http://3g.21ccom.net/">http://3g.21ccom.net/</a><br />\r\n            <a class="link_navi" target="_blank" href="http://wap.liri-tents.com/">http://wap.liri-tents.com/</a><br />\r\n            <a class="link_navi" target="_blank" href="http://3g.8008.mobi/">http://3g.8008.mobi/</a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />\r\n<table class="txt" border="0" cellspacing="1" cellpadding="3" width="98%">\r\n    <tbody>\r\n        <tr bgcolor="#e5e5de">\r\n            <td style="color: #e55100" height="30">服务编号</td>\r\n            <td style="color: #e55100">产品</td>\r\n            <td style="color: #e55100" bgcolor="#e5e5de" align="right">价格</td>\r\n        </tr>\r\n        <tr>\r\n            <td style="padding-bottom: 0px; padding-left: 0px; padding-right: 0px; height: 1px; padding-top: 0px" bgcolor="#c3c3bf" colspan="3">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td bgcolor="#fafafa" height="30" width="17%">W008</td>\r\n            <td bgcolor="#fafafa" width="62%">手机版网站开发</td>\r\n            <td bgcolor="#fafafa" width="21%" align="right">协商报价</td>\r\n        </tr>\r\n        <tr>\r\n            <td style="padding-bottom: 0px; padding-left: 0px; padding-right: 0px; height: 1px; padding-top: 0px" bgcolor="#c3c3bf" colspan="3">&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />', 1, 10);
INSERT INTO `layout` VALUES (10, 1, '联系我们', '', '联系我们', '地址:上海市松江区叶榭政府路9号-2号楼101室 <br />\r\n电话:021-37691017 传真:021-37691567 <br />\r\nEmail: info@ty-sh.com biz@ty-sh.com<br />\r\n<br />\r\n<img alt="" width="310" height="126" src="/upload/other/3291866909.jpg" />', 1, 2);
INSERT INTO `layout` VALUES (11, 1, '咨询热线', '', '咨询热线', '热线：<a href="wtai://wp/mc;02137691017"><font color="#0000ee">021-37691017[拨号]</font></a><br />', 1, 8);
INSERT INTO `layout` VALUES (13, 1, '付款方式', '', '付款方式', '银行汇款<br />\r\n<br />\r\n公司名：上海腾岩信息科技有限公司<br />\r\n开户银行：中国邮政储蓄银行有限责任公司上海嘉定区支行<br />\r\n银行帐号：1002 9254 5440 0100 01<br />\r\n<br />\r\n请在电汇凭证用途栏里注明汇款用途<br />\r\n<br />\r\n支付宝直接付款支付宝号：<a href="mailto:koko@ty-sh.com">koko@ty-sh.com</a>&nbsp;<br />\r\n汇款人简短附言：请注明汇款用途。<br />\r\n<br />\r\n索取发票财务信箱：<a href="mailto:finance@ty-sh.com">finance@ty-sh.com</a><br />\r\n需提供发票抬头、发票项目、发票金额、收件人的地址、邮编、联系电话。', 1, 1);
INSERT INTO `layout` VALUES (14, 1, 'test', '', '111', '111', 0, 14);

-- --------------------------------------------------------

-- 
-- 表的结构 `layoutpic`
-- 

CREATE TABLE `layoutpic` (
  `id_layoutpic` int(11) NOT NULL auto_increment,
  `id_layout` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_layoutpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

-- 
-- 导出表中的数据 `layoutpic`
-- 

INSERT INTO `layoutpic` VALUES (41, 2, 1, '', '', '', '1328777812.png', '', 1, 'PNG', '2012-02-09 16:56:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (39, 1, 1, '', '', '', '1328777286.png', '', 1, 'PNG', '2012-02-09 16:48:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (44, 5, 1, '', '', '', '1328778124.png', '', 1, 'PNG', '2012-02-09 17:02:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (45, 6, 1, '', '', '', '1328778131.png', '', 1, 'PNG', '2012-02-09 17:02:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (46, 7, 1, '', '', '', '1328778138.png', '', 1, 'PNG', '2012-02-09 17:02:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (47, 9, 1, '', '', '', '1328778148.png', '', 1, 'PNG', '2012-02-09 17:02:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (48, 8, 1, '', '', '', '1328778155.png', '', 1, 'PNG', '2012-02-09 17:02:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (49, 10, 1, '', '', '', '1328778163.png', '', 1, 'PNG', '2012-02-09 17:02:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (50, 11, 1, '', '', '', '1328778171.png', '', 1, 'PNG', '2012-02-09 17:02:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (51, 13, 1, '', '', '', '1329187242.png', '', 1, 'PNG', '2012-02-14 10:40:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (42, 3, 1, '', '', '', '1328778106.png', '', 1, 'PNG', '2012-02-09 17:01:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (43, 4, 1, '', '', '', '1328778115.png', '', 1, 'PNG', '2012-02-09 17:01:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsdir`
-- 

CREATE TABLE `newsdir` (
  `id_newsdir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsdir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- 导出表中的数据 `newsdir`
-- 

INSERT INTO `newsdir` VALUES (1, 1, '新闻动态', '', 1, 0, 1, 1);
INSERT INTO `newsdir` VALUES (3, 1, '公司新闻', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (4, 1, '产品新闻', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (5, 1, '行业新闻', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (15, 1, '留言反馈', '', 1, 1, 2, 15);
INSERT INTO `newsdir` VALUES (16, 1, '加入我们', '', 1, 1, 2, 16);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsinfo`
-- 

CREATE TABLE `newsinfo` (
  `id_newsinfo` int(11) NOT NULL auto_increment,
  `id_newsdir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `url` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

-- 
-- 导出表中的数据 `newsinfo`
-- 

INSERT INTO `newsinfo` VALUES (73, 19, 0, 1, '棉价不是纺织服装企业唯一判断市场的方法 ', '棉价不是纺织服装企业唯一判断市场的方法 ', '<p>　　　eeee春江水暖鸭先知，这是大家熟知的道理。纺织企业在判断市场走向时一般都是把棉花价格作为依据，但从目前的情况看，仅凭这一依据来判断是不够的。今年2月的棉花期货市场价格曾达到每吨34000多元，到本周降到28000多元。现在市场正处于一个渐变的过程，此前棉花大涨是受棉花供求缺口的影响，而现在市场正在悄悄发生变化，棉花价格的回落说明棉纺织企业的生产正处在调整时期。可能有些人认为棉花价格的下跌是件好事，殊不知，企业在高价位时购买的棉花还没销售出去，亏损的买卖还得硬着头皮做下去。</p>\r\n<p>　　影响纺织行业的因素还有很多。例如纺机企业，其所需的原材料价格近来也在逐步回落，从本周期货市场上看，钢材价格上涨的趋势受到遏制，铜的价格与去年年底相比每吨下降了近7000元，橡胶的价格也呈回落趋势。最近人民币的持续加息，加快了资金的回笼，市场上的货币流动性开始收紧。此外，纺织市场上原有的一些不确定因素也频频释出，给纺织企业判断未来市场增加了困难。受上述因素影响，纺机市场也一改年初时的红火局面，一些原来坐在纺机厂门口急着拿货的客户也不见了踪影。河北一家纺机企业负责人说，今年的买卖特别不好做，主要原因是市场波动性大。去年棉花、钢材等价格一路上涨，今年从2月底开始有了较大的起伏，这种剧烈的市场波动不仅在企业心理上造成极大的震撼，而且还给现在的生产带来某种不确定的感觉，市场观望的态度也由此产生。</p>\r\n<p>　　当前，资金紧缺是很多企业面临的共同问题。然而，我们有些同行却乐观地认为，纺织行业一直站在市场经济的最前沿，绝大多数企业的资金基本靠自己解决或者民间借贷，与国家商业银行基本不发生关系，国家的紧缩政策不会对纺织行业造成很大影响。此观点大错特错了。现在所有的行业都相互关联、相互交织，不可能大河没水小河流。市场顺畅大家皆大欢喜；如果资金一天比一天紧张，依照历史经验，毁约的就会增多，麻烦也会增多。因此，我们纺织企业不能只从个别现象看问题，我们必须从货币、原材料、贸易等不同方面、不同角度来全面判断纺织行业的未来走势，这样我们的企业才能立于不败之地。</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:25:31', '2012-01-05 11:58:02', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (72, 4, 0, 1, '今年美国棉花种植面积高于预估', '今年美国棉花种植面积高于预估', '<p>　　孟山都公司总裁DavidRhylander称，今年美国农户的棉花种植面积可能将高于政府预估，预计美国2011年棉花种植面积在1280-1300万英亩，</p>\r\n<p>　　因棉价上扬刺激农户的种植兴趣，且可能出现棉花的套种。</p>\r\n<p>　　生物科技种子企业--孟山都公司(MonsantoCo。)总裁David Rhylander称，&ldquo;我认为他们低估了美国2011年棉花种植面积，&rdquo;</p>\r\n<p>　　Rhylander预计美国2011年棉花种植面积在1280-1300万英亩，美国农业部(USDA)上周五公布的4月供需报告显示，美国2010/11年度棉花种植面积预估为1097万英亩，与3月份报告持平。</p>\r\n<p>　　美国2009/10年度棉花种植面积预估为915万英亩，2008/09年度实际种植面积为947万英亩。</p>\r\n<p>　　美国2011年棉花种植面积扩大的关键因素是价格。</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:24:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (70, 4, 0, 1, '经济数据多次遭提前泄露 统计局发言人严厉谴责', '经济数据多次遭提前泄露 统计局发言人严厉谴责', '<p>&nbsp;&nbsp;&nbsp; 　国务院新闻办定于2011年4月15日(星期五)上午10时在国务院新闻办新闻发布厅举行新闻发布会，请国家统计局新闻发言人、国民经济综合统计司司长盛来运介绍今年一季度国民经济运行情况，并回答记者提问。</p>\r\n<p>　　彭博新闻社记者：</p>\r\n<p>　　昨天凤凰卫视就已经报道了相关数据，而且这些数据在今天的发布会上也得到了印证，同样的事情在1月份和去年6月份也出现过，这些消息在发布会之前就被泄露出去了，有没有相关的程序来调查这种提前泄露的情况，会不会在未来防止这种情况发生，谁来负责相关的调查？</p>\r\n<p>　　盛来运：</p>\r\n<p>　　国家统计局严厉谴责任何泄露还在保密期数据的行为，我们相信任何违法的行为都必将会受到法律的制裁。国家统计局也一直高度重视发布前数据的保密工作，为此制定了相关的管理制度和程序，进一步缩小了涉密数据的人员和范围。</p>\r\n<p>　　特别是近两年，国家统计局根据公平、公正、公开、透明的原则，建立和进一步规范了统计信息的发布制度，国家统计局也正在听取各方面的意见，研究进一步完善发布制度问题，改进的方向是进一步缩短数据生产到发布的时间，尽可能减少数据被泄露的风险。</p>\r\n<p>　　最后我还想提醒一点，《中华人民共和国保密法》也有规定，一切国家机关、党政团体、企事业单位和公民都有保守国家秘密的义务。</p>\r\n<p>　　同时也规定在互联网和其他公共信息网络上传播国家秘密的也应该给予相应的责任追究。我们国家互联网新闻信息服务管理规定第19条也明确规定，登载发送的新闻信息不得含有危害国家安全、泄露国家秘密的内容。所以，我们希望大家一起来遵守相关的法律和规定。谢谢大家！</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:22:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (71, 5, 0, 1, '江苏鑫缘茧丝绸集团将跨越式发展 ', '江苏鑫缘茧丝绸集团将跨越式发展 ', '<p>　　　近年来，江苏鑫缘茧丝绸集团立足海安传统蚕桑产业资源，彰显精深加工优势，实施品牌经营，推进产品精品化、织造无梭化、品种多样化，成为中国丝绸行业唯一拥有&ldquo;一个中国驰名商标、三个中国名牌、五类国家免检产品&rdquo;的跨国企业。<br />\r\n<br />\r\n　　重研发。集团利用自身技术优势，制定了国际国内先进的蚕茧烘干、制丝、丝织、服饰、床上用品、染整等方面的先进工艺路线，&ldquo;鑫缘&rdquo;牌蚕茧、桑蚕丝、真丝绸、服装及床上用品质量达到国际领先水平。拥有自主知识产权的桑蚕丝和利用新材料、新工艺生产的真丝绸产品，成为国内外客商首选产品。部分桑蚕丝科研成果达到世界先进水平，产品被法国巴黎、荷兰、韩国等地商场指定为专营产品。<br />\r\n　　强引进。集团先后引进和新上飞宇系列自动缫丝机，意大利产剑杆织机、整经机、真丝倍捻机、无捻并丝机，瑞士产精密络筒机，日发牌真丝针织圆机等国际国内一流的生产设备，借助自身拥有先进的生产工艺流程，产品质量达到国际一流，梭织绸和针织绸产品成为市场抢手货。<br />\r\n<br />\r\n　　推攻关。集团创立了国家级星火龙头企业科技创新中心，与苏州大学联合成立了&ldquo;丝绸新技术(产品)研发中心&rdquo;，承担了国家、省、市科研项目20多项。先后承担了国家&ldquo;双高一优&rdquo;工程项目、国家农业综合开发重点项目和茧丝绸风险基金项目。2004年《制丝生产在线质量监控系统软件的研发及推广》项目通过江苏省科技成果鉴定；《纳米级再生蚕丝纤维制品的研制与开发》和《多功能蚕丝被的研究与开发》列为2004年江苏省科技攻关项目。2005年《天然彩色茧丝加工技术研究及生产应用》和《以蚕桑副产品为原料的丝绸草木染加工技术研究》再次列为江苏省科技攻关项目，运用基因工程生产出天然彩色茧，开发出高品位的天然彩色丝、绸及服装，为中国桑蚕丝家庭成员的丰富多彩的发展探索出了一条新路。《制丝生产在线监控网络系统软件的研发及推广》项目被国家商务部茧丝办列为国家茧丝绸发展风险基金第六批发展性项目，《应用缫丝企业信息化管理技术辅助生产高等级蚕丝》项目被国家科技部列为&ldquo;2005年度国家级星火计划项目&rdquo;。科技和管理等方面形成国家专利30项。2010年11月鑫缘集团率先成立博士后工作站。</p>\r\n<p>&nbsp;</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:23:49', '2011-12-30 13:57:33', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (68, 3, 0, 1, '埃及纺织纺纱公司面临严峻材料确实', '埃及纺织纺纱公司面临严峻材料确实', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4月15日讯　埃及的纺织和纺纱公司正面临严峻的材料缺乏，这些材料是他们生产所必需的，纺织工人联合组织的主席说。</p>\r\n<p>　　在新闻发布会上，纺织工人联合组织的主席赛义德.古哈利要求政府立即采取行动，就业纺织和纺纱工业及其工人。</p>\r\n<p>　　部分私营工厂已经停产，这是因为他们不能够在这样的环境下继续生产，古哈利说。</p>\r\n<p>　　古哈利说，政府应当分配土地种植棉花，满足工厂的需求，向公司注入新的投资，改革财政和管理结构，打击倾销和走私行为，保护当地工业。</p>\r\n<p>　　观察家认为，埃及棉纺织工业经历了持续下降，这是由于政府对棉花耕种的补贴不充分。棉花以埃及最古老的作物而闻名。</p>\r\n<p>　　古哈尔强大，有必要发展棉花生产力，在过去的几年，埃及的棉花生产急剧下降，这是由于依赖进口棉花造成的。</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:20:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (66, 5, 0, 1, '乌兹别克斯坦将与瑞士成立服装机械合资公司', '乌兹别克斯坦将与瑞士成立服装机械合资公司', '<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 乌兹别克斯坦轻工业公司与瑞士立达纺织机械公司拟在乌成立纺织服装机械生产合资公司――&ldquo;立达乌兹别克斯坦&rdquo;。双方所签协议被&ldquo;关于组织生产现代化纺织机械&rdquo;的总统令确认。瑞士公司将于2011至2012年对该项目投入200万美元进行纺织机械现代化改造和技术设备更新，并逐步在停产的&ldquo;乌兹别克斯坦纺织服装机械公司&rdquo;基础上组织纺织设备生产。项目将分三个阶段实施：第一阶段（2011年）将完成厂房和设施建设，并进行工艺设备安装调试；第二阶段（2012年）将投入生产制带机和梳棉机；第三阶段（2015年）将投入运行金属加工车间。</p>\r\n<p>　　根据乌总统令，2015年7月1日前，&ldquo;立达乌兹别克斯坦&rdquo;公司将被免除包括乌公路基金强制扣除的基本营业税在内的一切税费，同时还享受对乌国内不生产的设备、仪器、机械和其他材料及产品免除进口关税的优惠政策。<br />\r\n&nbsp;</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:19:11', '2012-02-20 19:04:17', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (67, 4, 0, 1, '台纺织产业综合研究所将在盐城成立研究院', '台纺织产业综合研究所将在盐城成立研究院', '<p>&nbsp;&nbsp;&nbsp; ４月１５日电，记者从江苏省盐城市获悉，由台湾纺织产业综合研究所提供技术支持的江苏南纬悦达纺织研究院已在该市成立，将安排台湾专家来盐城培训纺织行业的员工和人才。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 盐城是传统的纺织大市，以棉纺为主，纺织业一直是盐城重要的产业支撑，近年来份额有所减少，但仍占２０％左右。虽然规模较大，但盐城纺织业一直存在创新不够、研发不足等问题，江苏南纬悦达纺织研究院成立后，将借助台湾纺织产业综合研究所的技术支撑，迅速对纺织产业高端课题、纤维、技术、工艺、产品等方面进行研究，并向行业、产业、企业、项目延伸。研究院将安排盐城人员赴台湾接受培训教育，还将安排台湾专家来盐城培训人才和员工。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 台湾纺织产业综合研究所的前身是台湾纺织品试验中心，成立于１９５９年，是台湾地区致力于纺织科技研发、产品检测和技术服务的主要机构，汪雅康于２００８年６月接任董事长。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 汪雅康说，纺织是传统行业，但是，产品有夕阳产品，而产业是没有夕阳的，台湾的纺织产业，特别是新开发的功能性产品，上至太空、下到海洋，处处都有应用，&ldquo;（研究院）将寻求产业链条上新的合作，共同提升纺织产业的发展。&rdquo;<br />\r\n&nbsp;</p>', '', 1, 1, '', '2011-04-15', '2011-04-15 04:19:49', '2012-02-20 19:04:03', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newspic`
-- 

CREATE TABLE `newspic` (
  `id_newspic` int(11) NOT NULL auto_increment,
  `id_newsinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newspic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `newspic`
-- 

INSERT INTO `newspic` VALUES (9, 77, 1, '', '', '', '1321930838.jpg', '', 1, 'JPG', '2011-11-22 11:00:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (8, 76, 1, '', '', '', '1321842554.JPG', '', 1, 'JPG', '2011-11-21 10:29:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pageset`
-- 

CREATE TABLE `pageset` (
  `id_pageset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `pagetitle` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id_pageset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `pageset`
-- 

INSERT INTO `pageset` VALUES (1, 1, '品牌介绍', '11', '', '', '', '<br />\r\n公司主要生产电站锅炉金属结构、高层建筑钢结构、厂房钢结构、桥梁钢结构、塔类钢结构、风力发电塔以及电站锅炉消声器、空气预热器传热元件、壳体、风门、烟道等系列产品。公司钢结构产品的制作能力为120000吨/年，空气预热器传热元件4000吨/年。依靠先进的管理和技术，优质的产品和服务，使公司在国内外同行业占有举足轻重的地位，是我国火电行业金属结构制造和辅机制造的重要基地。');
INSERT INTO `pageset` VALUES (2, 1, '公司简介', '', '', '', '', '<font color="#2469a2" size="3"><br />\r\nAbout us&nbsp;</font><br />\r\n<font color="#5e5d5d" size="3">Leading, free open-source solution</font>\r\n<p>采用进口全新的自动化织造、染整设备，运用先进技术与现代化、科学化的管理，开展高档仿真多机能性纤维面料与舒适天然纤维面料的织造生产、印染、后整理加工及销售业务。公司占地183亩，厂房面积60,000余平方米，现有员工1200余人。目前拥有日制喷水织布机300台、喷气织布机240台及宽幅织布机22台、意大利制剑杆织布机12台及数十台相关进口染整设备，并建有完善的检测实验室。年产高档涤纶面料2500万米，棉麻丝等天然纤维面料2000万米；主要销往欧美、加拿大、日本、香港、中东及其他亚洲国家，目前仍以外销为主，未来将积极开发国内市场。公司出口额自1999年的1900万美元增至2007年的6400万美元，持续5年获得先进出口企业&ldquo;金龙奖&rdquo;。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p>公司于2002年成功通过ISO9001:2000标准质量体系认证，并持续贯彻&ldquo;一流品质、相互信赖、优质服务、研发创新&rdquo;的品质政策，与国内外的品牌客户合作，积极开发高科技、功能性等环保型及运动型布种，使公司的产品在国内外市场上更具竞争力。年产高档涤纶面料2500万米，棉麻丝等天然纤维面料2000万米；主要销往欧美、加拿大、日本、香港、中东及其他亚洲国家，目前仍以外销为主，未来将积极开发国内市场。公司出口额自1999年的1900万美元增至2007年的6400万美元，持续5年获得先进出口企业&ldquo;金龙奖&rdquo;。公司于2002年成功通过ISO9001:2000标准质量体系认证，并持续贯彻&ldquo;一流品质、相互信赖、优质服务、研发创新&rdquo;的品质政策，与国内外的品牌客户合作，积极开发高科技、功能性等环保型及运动型布种，使公司的产品在国内外市场上更具竞争力。</p>\r\n<p><font color="#2469a2" size="3"><strong><strike>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strike><br />\r\n</strong>Features&nbsp;</font><br />\r\n<font color="#424242" size="3"><font color="#5e5d5d">We&nbsp; most useful and common modules.</font> </font></p>\r\n<p>公司于2002年成功通过ISO9001:2000标准质量体系认证，并持续贯彻&ldquo;一流品质、相互信赖、优质服务、研发创新&rdquo;的品质政策，与国内外的品牌客户合作，积极开发高科技、功能性等环保型及运动型布种，使公司的产品在国内外市场上更具竞争力。年产高档涤纶面料2500万米，棉麻丝等天然纤维面料2000万米；主要销往欧美、加拿大、日本、香港、中东及其他亚洲国家，目前仍以外销为主，未来将积极开发国内市场。公司出口额自1999年的1900万美元增至2007年的6400万美元，持续5年获得先进出口企业&ldquo;金龙奖&rdquo;。公司于2002年成功通过ISO9001:2000标准质量体系认证，并持续贯彻&ldquo;一流品质、相互信赖、优质服务、研发创新&rdquo;的品质政策，与国内外的品牌客户合作，积极开发高科技、功能性等环保型及运动型布种，使公司的产品在国内外市场上更具竞争力。</p>');
INSERT INTO `pageset` VALUES (3, 1, 'Our History', '', '', '', '', '<p>Our History Our History</p>');
INSERT INTO `pageset` VALUES (7, 1, '联系我们', '', '', '', '', '<p>上海速镭科技有限公司<br />\r\nShanghai Sulaser Technology Co., Ltd.</p>\r\n<p>地址：上海市嘉定区安亭镇墨玉路28号嘉正国际1307室<br />\r\n邮编：201805<br />\r\n邮箱：sulaser.joycebai@gmail.com&nbsp; <br />\r\n电话：+86 (21) 5956 3865 <br />\r\n传真：+86 (21) 5956 3859</p>');
INSERT INTO `pageset` VALUES (4, 1, 'Our Culture', '', '', '', '', 'SHANGHAI SULASER TECHNOLOGY CO.,LTD. is located in Shanghai Anting &ndash; International Automobile City. We are professional supplier for gas &amp; solid laser device, laser accurate processing equipment, &amp; laser machinery. Our main products are Fiber Laser Marking Machine, Diode End- Pump Laser Marking Machine, Diode Side-Pump Laser Marking Machine, Co2 Laser Marking Machine, Gas &amp; Solid Laser Device, Metal Laser Cutting Machine, Co2 Laser Engraving &amp; Cutting Machine etc., are widely used in electronic industry, automobile industry, medical products, hardware, metal processing, household electric appliance, commodity, aeronautical industry, certificate cards, jewelry processing, instrumentation, advertising plate etc.<br />\r\nSHANGHAI SULASER TECHNOLOGY CO.,LTD. adheres to the business principle of &ldquo; quality is the first and credit is the basis&rdquo;. With the enterprise spirit of &ldquo;pursuit of perfection and pragmatism&rdquo;, we constantly explore and determinedly innovate with great efforts to make competitive products. We always pursue the goal of providing customers with high quality products and first class service.');
INSERT INTO `pageset` VALUES (5, 1, 'About Us', '', '', '', '', '<img style="margin-bottom: 20px; float: left; margin-right: 20px" alt="" align="left" width="154" height="131" src="/upload/other/3257336284.jpg" />SHANGHAI SULASER TECHNOLOGY CO.,LTD. is located in Shanghai Anting &ndash; International Automobile City. We are professional supplier for gas &amp; solid laser device, laser accurate processing equipment, &amp; laser machinery. <br />\r\nOur main products are Fiber Laser Marking Machine, Diode End- Pump Laser Marking Machine, Diode Side-Pump Laser Marking Machine, Co2 Laser Marking Machine, Gas &amp; Solid Laser Device, Metal Laser Cutting Machine, Co2 Laser Engraving &amp; Cutting Machine etc., are widely used in electronic industry, automobile industry, medical products, hardware, metal processing, household electric appliance, commodity, aeronautical industry, certificate cards, jewelry processing, instrumentation, advertising plate etc.<br />\r\n<br />\r\nSHANGHAI SULASER TECHNOLOGY CO.,LTD. adheres to the business principle of &ldquo; quality is the first and credit is the basis&rdquo;. With the enterprise spirit of &ldquo;pursuit of perfection and pragmatism&rdquo;, we constantly explore and determinedly innovate with great efforts to make competitive products. We always pursue the goal of providing customers with high quality products and first class service.');
INSERT INTO `pageset` VALUES (6, 1, 'Contact Us', '', '', '', '', 'Shanghai Sulaser Technology Co., Ltd.\r\n<p>Addr：Room 1307 Jiazheng International, No.28 Moyu Road, Anting, Jiading District, Shanghai<br />\r\nZip：201805<br />\r\nEmail：sulaser.joycebai@gmail.com&nbsp; <br />\r\nTel：+86 (21) 5956 3865 <br />\r\nFax：+86 (21) 5956 3859</p>');
INSERT INTO `pageset` VALUES (8, 1, '发展历程', '', '', '', '', '<p>发展历程内容</p>');
INSERT INTO `pageset` VALUES (9, 1, '企业文化', '', '', '', '', '<p>自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。</p>');
INSERT INTO `pageset` VALUES (10, 1, '公司介绍', '', '', '', '', '<img style="margin-bottom: 20px; float: left; margin-right: 20px" alt="" align="left" width="154" height="131" src="../inc/pics/about01.jpg" />上海速镭科技有限公司专业为国内外客户提供一整套激光加工解决方案及相关配套设施，主要从事气体和固体激光器、激光加工设备、激光微加工系统的开发、生产及销售，也对外承接激光加工业务。主要产品为光纤激光器、端泵激光器、半导体激光器、二氧化碳激光器、固体激光器、激光切割机、激光打标机、激光雕刻机等等。<br />\r\n<br />\r\n激光加工技术一直是国家重点支持和推动应用的一项高新技术，特别是政府强调要振兴制造业，这就给激光加工技术应用带来发展机遇。公司位于上海安亭国际汽车城，一系列高新技术产品在国防工业、航空航天、材料加工、电子工业、五金工业、服装工业、医疗设备、汽车摩托车行业、钢铁工业、烟草业等领域得到了广泛的应用。<br />\r\n<br />\r\n另外，公司还代理德国BORRIES针式打标系统、美国EATON工业过滤设备、土耳其TST快速接头等国外知名工业设备，与海内外众多品牌制造商和渠道供应商建立了良好的合作关系。公司坚持&ldquo;质量第一，信誉至上&rdquo;的宗旨。以质量、信誉求生存，依靠技术创新和科学管理，在高质量的基础上追求可靠性，不断向用户提供技术先进、性能可靠的产品。');

-- --------------------------------------------------------

-- 
-- 表的结构 `pagesetpic`
-- 

CREATE TABLE `pagesetpic` (
  `id_pagesetpic` int(11) NOT NULL auto_increment,
  `id_pageset` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_pagesetpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- 导出表中的数据 `pagesetpic`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `pavy1`
-- 

CREATE TABLE `pavy1` (
  `id_pavy1` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `product_visit` int(1) NOT NULL default '0',
  `store_visit` int(1) NOT NULL default '0',
  `news_visit` int(1) NOT NULL default '0',
  `hr_visit` int(1) NOT NULL default '0',
  `pavy_visit` int(1) NOT NULL default '0',
  `data_visit` int(1) NOT NULL default '0',
  `siteset_visit` int(1) NOT NULL default '0',
  `level` int(1) NOT NULL default '0',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pavy1`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- 导出表中的数据 `pavy1`
-- 

INSERT INTO `pavy1` VALUES (28, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy2`
-- 

CREATE TABLE `pavy2` (
  `id_pvay2` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `browseprem` int(1) NOT NULL default '0',
  `addprem` int(1) NOT NULL default '0',
  `editprem` int(1) NOT NULL default '0',
  `deleprem` int(1) NOT NULL default '0',
  `display` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '0',
  `state` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pvay2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=264 ;

-- 
-- 导出表中的数据 `pavy2`
-- 

INSERT INTO `pavy2` VALUES (246, 1, 46, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (245, 1, 41, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (244, 1, 39, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (243, 1, 22, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (242, 1, 21, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (241, 1, 20, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (240, 1, 19, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (239, 1, 18, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (238, 1, 17, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (237, 1, 16, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (236, 1, 15, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (235, 1, 47, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (234, 1, 8, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (233, 1, 9, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (247, 1, 48, 1, 0, 0, 0, 0, 1, 0, 1, '2011-03-09 16:42:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (263, 1, 49, 1, 0, 0, 0, 0, 1, 0, 1, '2011-04-15 02:03:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `post`
-- 

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL auto_increment,
  `post` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `post`
-- 

INSERT INTO `post` VALUES (1, '普通员工', 1);
INSERT INTO `post` VALUES (2, '物料收发员', 1);
INSERT INTO `post` VALUES (3, 'IQC', 1);
INSERT INTO `post` VALUES (4, '仓库主管', 1);
INSERT INTO `post` VALUES (5, '采购主管', 1);
INSERT INTO `post` VALUES (6, '销售主管', 1);
INSERT INTO `post` VALUES (7, '副总经理', 1);
INSERT INTO `post` VALUES (8, '总经理', 1);
INSERT INTO `post` VALUES (9, '网站管理员', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `productdir`
-- 

CREATE TABLE `productdir` (
  `id_proddir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL default '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_proddir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 导出表中的数据 `productdir`
-- 

INSERT INTO `productdir` VALUES (1, 0, '产品中心', '', 1, '', 0, 1, 1);
INSERT INTO `productdir` VALUES (2, 0, '域名', '', 1, '', 1, 2, 2);
INSERT INTO `productdir` VALUES (3, 0, '空间', '', 1, '', 1, 2, 3);
INSERT INTO `productdir` VALUES (4, 0, '企业邮局', '', 1, '', 1, 2, 4);
INSERT INTO `productdir` VALUES (5, 0, '服务器', '', 1, '', 1, 2, 5);
INSERT INTO `productdir` VALUES (6, 0, '邮件群发', '', 1, '', 1, 2, 6);
INSERT INTO `productdir` VALUES (7, 0, '短信业务', '', 1, '', 1, 2, 7);
INSERT INTO `productdir` VALUES (8, 0, '产品中心2', '', 1, '', 0, 1, 8);
INSERT INTO `productdir` VALUES (9, 0, '企业网站', '', 1, '', 8, 2, 9);
INSERT INTO `productdir` VALUES (10, 0, '电子商务', '', 1, '', 8, 2, 10);
INSERT INTO `productdir` VALUES (11, 0, '社区门户', '', 1, '', 8, 2, 11);
INSERT INTO `productdir` VALUES (12, 0, '手机版网站', '', 1, '', 8, 2, 12);
INSERT INTO `productdir` VALUES (13, 0, 'B/S开发', '', 1, '', 1, 2, 13);
INSERT INTO `productdir` VALUES (14, 0, '成品网站', '', 1, '', 1, 2, 14);
INSERT INTO `productdir` VALUES (15, 0, 'Domain', '', 1, '', 8, 2, 15);
INSERT INTO `productdir` VALUES (16, 0, 'Hosting', '', 1, '', 8, 2, 16);
INSERT INTO `productdir` VALUES (17, 0, 'Email', '', 1, '', 8, 2, 17);
INSERT INTO `productdir` VALUES (18, 0, 'Service', '', 1, '', 8, 2, 18);
INSERT INTO `productdir` VALUES (19, 0, 'Website', '', 1, '', 8, 2, 19);

-- --------------------------------------------------------

-- 
-- 表的结构 `productinfo`
-- 

CREATE TABLE `productinfo` (
  `id_prodinfo` int(11) NOT NULL auto_increment,
  `id_proddir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `productinfo`
-- 

INSERT INTO `productinfo` VALUES (1, 5, 0, 1, '服务器托管', '拥有独立的电力变电系统，两路专用电力供电系统，具备先进的断电自动切换装置 ，UPS 组在断电时能提供可靠安全的电力保障。\r\n', '拥有独立的电力变电系统，两路专用电力供电系统，具备先进的断电自动切换装置 ，UPS 组在断电时能提供可靠安全的电力保障。<br />\r\n6根独立千兆光纤直连骨干出口，千兆级带宽，突破网络瓶颈，挑战速度极限，采用 CISCO 高性能路由器和交换机；机房自建独立的发电机组，在供电稳定性和网络扩展性上具有巨大优势。<br />', '', 1, 1, '2011-12-29 14:55:25', '2012-03-04 15:49:31', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (2, 4, 0, 1, '企业邮局', '提升企业凝聚力:您可以上传代表公司形象标识的图片或文字到企业邮箱，提高企业的凝聚力，让您的员工每次打开邮箱都可以看到公司的品牌标志。', '<div class="details">提升企业凝聚力:您可以上传代表公司形象标识的图片或文字到企业邮箱，提高企业的凝聚力，让您的员工每次打开邮箱都可以看到公司的品牌标志。提升企业的品牌形象,推广企业的网站,大量节省公司运营费用,让您拥有对邮箱的全部管理权.</div>\r\n<!-- required for IE6/IE7 --><br clear="all" />', '', 1, 1, '2011-12-30 16:38:11', '2012-03-04 15:49:47', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (3, 3, 0, 1, '网站空间', '专为中国2000万家中小企业度身量做的商务型虚拟主机，在数据运行安全稳定方面表现独到，特别适合第一次建设网站的公司和单位，也推荐已经有网站的公司进行转入。', '<p>专为中国2000万家中小企业度身量做的商务型虚拟主机，在数据运行安全稳定方面表现独到，特别适合第一次建设网站的公司和单位，也推荐已经有网站的公司进行转入。</p>', '', 1, 1, '2011-12-30 17:36:38', '2012-03-04 15:44:35', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (4, 2, 0, 1, '国际英文域名', '国际英文域名包括.COM / .NET / .ORG等，是国际最广泛流行的通用域名格式。\r\n', '<p>购买国际域名，免费赠送域名控制面板，可以直接在线修改域名的注册信息，立即生效。 赠送DNS域名解析管理，在线提交域名解析，自己操作不求人。<br />\r\n让您享有超级自助域名管理服务，通过全图文界面，让非技术人员轻松自由操作与DNS有关的各种指令如URL转发、IP指向、CNAME、Mail指向等，而无需额外付费。</p>', '', 1, 1, '2011-12-30 20:37:34', '2012-03-04 15:04:41', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `productpic`
-- 

CREATE TABLE `productpic` (
  `id_prodpic` int(11) NOT NULL auto_increment,
  `id_prodinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `productpic`
-- 

INSERT INTO `productpic` VALUES (1, 4, 1, '', '', '', '1330846369.jpg', '', 1, 'JPG', '2012-03-04 15:32:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (2, 3, 1, '', '', '', '1330847074.jpg', '', 1, 'JPG', '2012-03-04 15:44:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (3, 2, 1, '', '', '', '1330847205.jpg', '', 1, 'JPG', '2012-03-04 15:46:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (4, 1, 1, '', '', '', '1330847364.jpg', '', 1, 'JPG', '2012-03-04 15:49:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `siteset`
-- 

CREATE TABLE `siteset` (
  `id_siteset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `otherheader` text NOT NULL,
  `iscopy` int(1) NOT NULL default '0',
  `rmailbox` varchar(50) NOT NULL,
  `smailbox` varchar(50) NOT NULL,
  `smailboxpass` varchar(50) NOT NULL,
  `icp` varchar(25) NOT NULL,
  `mapcode` text NOT NULL,
  `statistics` text NOT NULL,
  `isstyle` int(1) NOT NULL,
  PRIMARY KEY  (`id_siteset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `siteset`
-- 

INSERT INTO `siteset` VALUES (1, 1, '上海腾岩信息科技有限公司', '上海腾岩信息科技有限公司', '© 2012 SHANGHAI TENGYAN TECH CO,.LTD 上海市松江区叶榭政府路9号-2号楼101室021-37691017 info@ty-sh.com 沪ICP备10009206号', '', 0, '', '', '', '', '', '', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `title`
-- 

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `title`
-- 

INSERT INTO `title` VALUES (15, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `webmenu`
-- 

CREATE TABLE `webmenu` (
  `id_webmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `url` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_webmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `webmenu`
-- 

INSERT INTO `webmenu` VALUES (1, 1, '网站首页', '/', 1, 0, 1, 8);
INSERT INTO `webmenu` VALUES (2, 1, '公司简介', '/about/aboutus.php', 1, 0, 1, 7);
INSERT INTO `webmenu` VALUES (3, 1, '产品中心', '/product/index.php', 1, 0, 1, 6);
INSERT INTO `webmenu` VALUES (4, 1, '新闻动态', '/news/index.php', 1, 0, 1, 5);
INSERT INTO `webmenu` VALUES (5, 1, '人才招聘', '/hr/index.php', 1, 0, 1, 4);
INSERT INTO `webmenu` VALUES (8, 1, '联系我们', '/about/contactus.php', 1, 0, 1, 1);

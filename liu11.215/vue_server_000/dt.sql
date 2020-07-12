#数据库执行sql脚本三种方式
#1）mysql -uroot -ppassword -Ddb<“文件路径”
#2）mysql -uroot -ppassword 连接上数据库，再 source “文件路径”
#3）mysql客户端执行

SET NAMES UTF8;
DROP DATABASE IF EXISTS dm;
CREATE DATABASE dm DEFAULT CHARACTER SET UTF8;
##########################首页图片数据
USE dm;
CREATE TABLE play(
  id INT PRIMARY KEY AUTO_INCREMENT,
  areaid INT,
  pic VARCHAR(128),
  title VARCHAR(128),
  address VARCHAR(128),
  date VARCHAR(128),
  price INT,
  type INT
);
#1楼演唱会数据
#全国
INSERT INTO play VALUES(1,1,"http://127.0.0.1:3000/zhuye/f1.png","MY BEAUTIFUL LIVE 杨千嬅世界巡回演唱会-苏州站","南京奥体中心体育馆","2019.12.14 周六","380",1);
INSERT INTO play VALUES(2,1,"http://127.0.0.1:3000/zhuye/play1.png","2019 JonyJ＜Call Back＞南京奥体演唱会","南京奥体中心体育馆","2019.12.14 周六","300",1);
INSERT INTO play VALUES(3,1,"http://127.0.0.1:3000/zhuye/play2.png","2020任贤齐【齐迹】演唱会-深圳站","华润深圳湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",1);
INSERT INTO play VALUES(4,1,"http://127.0.0.1:3000/zhuye/play3.png","阿里鱼潮流动漫音乐节","广州长隆度假区音乐节广场","2019.12.07-12.08","200",1);
INSERT INTO play VALUES(5,1,"http://127.0.0.1:3000/zhuye/play4.png","厦门江小白YOLO青年文化节","厦门市巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",1);
INSERT INTO play VALUES(6,1,"http://127.0.0.1:3000/zhuye/play5.png","吴青峰“太空备忘记”巡回演唱会-杭州站","黄龙体育中心(体育馆)","2020.01.03-01.04","380",1);
INSERT INTO play VALUES(7,1,"http://127.0.0.1:3000/zhuye/play6.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-绍兴站","绍兴市奥体中心体育馆","2019.12.28 周六 19:30","288",1);
#北京
INSERT INTO play VALUES(8,2,"http://127.0.0.1:3000/zhuye/bjp1.png","北京「30年 」专场演唱会 ","","","180",1);
INSERT INTO play VALUES(9,2,"http://127.0.0.1:3000/zhuye/bjp2.png","北京高嘉朗2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",1);
INSERT INTO play VALUES(10,2,"http://127.0.0.1:3000/zhuye/bjp3.png","北京【齐迹】演唱会-北京站","华润北京湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",1);
INSERT INTO play VALUES(11,2,"http://127.0.0.1:3000/zhuye/bjp4.png","北京潮流动漫音乐节","北京长隆度假区音乐节广场","2019.12.07-12.08","200",1);
INSERT INTO play VALUES(12,2,"http://127.0.0.1:3000/zhuye/bjp5.png","北京江小白YOLO青年文化节","北京巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",1);
INSERT INTO play VALUES(13,2,"http://127.0.0.1:3000/zhuye/bjp6.png","吴青峰“太空备忘记”巡回演唱会-北京站","北京黄龙体育中心(体育馆)","2020.01.03-01.04","380",1);
INSERT INTO play VALUES(14,2,"http://127.0.0.1:3000/zhuye/bjp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-北京站","北京奥体中心体育馆","2019.12.28 周六 19:30","288",1);
#上海
INSERT INTO play VALUES(15,3,"http://127.0.0.1:3000/zhuye/shp1.png","上海面孔乐队「30年 」专场演唱会 ","","","180",1);
INSERT INTO play VALUES(16,3,"http://127.0.0.1:3000/zhuye/shp2.png","上海2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",1);
INSERT INTO play VALUES(17,3,"http://127.0.0.1:3000/zhuye/shp3.png","上海【齐迹】演唱会-上海站","上海湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",1);
INSERT INTO play VALUES(18,3,"http://127.0.0.1:3000/zhuye/shp4.png","上海潮流动漫音乐节","上海长隆度假区音乐节广场","2019.12.07-12.08","200",1);
INSERT INTO play VALUES(19,3,"http://127.0.0.1:3000/zhuye/shp5.png","上海江小白YOLO青年文化节","上海巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",1);
INSERT INTO play VALUES(20,3,"http://127.0.0.1:3000/zhuye/shp6.png","吴青峰“太空备忘记”巡回演唱会-上海站","上海体育中心(体育馆)","2020.01.03-01.04","380",1);
INSERT INTO play VALUES(21,3,"http://127.0.0.1:3000/zhuye/shp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-上海站","上海奥体中心体育馆","2019.12.28 周六 19:30","288",1);
#深圳
INSERT INTO play VALUES(22,4,"http://127.0.0.1:3000/zhuye/szp1.png","深圳面孔乐队「30年 」专场演唱会 ","","","180",1);
INSERT INTO play VALUES(23,4,"http://127.0.0.1:3000/zhuye/szp2.png","深圳2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",1);
INSERT INTO play VALUES(24,4,"http://127.0.0.1:3000/zhuye/szp3.png","深圳【齐迹】演唱会-深圳站","华润深圳湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",1);
INSERT INTO play VALUES(25,4,"http://127.0.0.1:3000/zhuye/szp4.png","深圳潮流动漫音乐节","深圳长隆度假区音乐节广场","2019.12.07-12.08","200",1);
INSERT INTO play VALUES(26,4,"http://127.0.0.1:3000/zhuye/szp5.png","深圳江小白YOLO青年文化节","深圳巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",1);
INSERT INTO play VALUES(27,4,"http://127.0.0.1:3000/zhuye/szp6.png","吴青峰“太空备忘记”巡回演唱会-深圳站","深圳体育中心(体育馆)","2020.01.03-01.04","380",1);
INSERT INTO play VALUES(28,4,"http://127.0.0.1:3000/zhuye/szp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-深圳站","深圳奥体中心体育馆","2019.12.28 周六 19:30","288",1);
#广州
INSERT INTO play VALUES(29,5,"http://127.0.0.1:3000/zhuye/gzp1.png","广州面孔乐队「30年 」专场演唱会 ","","","180",1);
INSERT INTO play VALUES(30,5,"http://127.0.0.1:3000/zhuye/gzp2.png","广州高嘉朗2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",1);
INSERT INTO play VALUES(31,5,"http://127.0.0.1:3000/zhuye/gzp3.png","2020任贤齐【齐迹】演唱会-广州站","广州湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",1);
INSERT INTO play VALUES(32,5,"http://127.0.0.1:3000/zhuye/gzp4.png","广州潮流动漫音乐节","广州长隆度假区音乐节广场","2019.12.07-12.08","200",1);
INSERT INTO play VALUES(33,5,"http://127.0.0.1:3000/zhuye/gzp5.png","广州江小白YOLO青年文化节","广州市巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",1);
INSERT INTO play VALUES(34,5,"http://127.0.0.1:3000/zhuye/gzp6.png","吴青峰“太空备忘记”巡回演唱会-广州站","广州体育中心(体育馆)","2020.01.03-01.04","380",1);
INSERT INTO play VALUES(35,5,"http://127.0.0.1:3000/zhuye/gzp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-广州站","广州市奥体中心体育馆","2019.12.28 周六 19:30","288",1);


#3楼话剧歌剧数据opera
INSERT INTO play VALUES(36,1,"http://127.0.0.1:3000/zhuye/o1.png","【首轮开票 99元限时抢】开心麻花爆笑舞台剧《皇帝的新娘》","南京奥体中心体育馆","2019.12.14 周六","100",2);
INSERT INTO play VALUES(37,1,"http://127.0.0.1:3000/zhuye/opera1.png","百老汇原版音乐剧《狮子王》国际巡演北京站","保利剧院","2020.05.22-05.24","299",2);
INSERT INTO play VALUES(38,1,"http://127.0.0.1:3000/zhuye/opera2.png","张国立首部执导话剧《我爱桃花》","国家话剧院-剧场","2020.01.10-01.12","100",2);
INSERT INTO play VALUES(39,1,"http://127.0.0.1:3000/zhuye/opera3.png","李宗盛作品音乐剧《当爱已成往事》","保利剧院","2019.12.06-12.08","180",2);
INSERT INTO play VALUES(40,1,"http://127.0.0.1:3000/zhuye/opera4.png","东野圭吾悬疑舞台剧-《回廊亭杀人事件》经典版","美琪大戏院","2020.04.17-04.18","180",2);
INSERT INTO play VALUES(41,1,"http://127.0.0.1:3000/zhuye/opera5.png","世界原版经典音乐剧《猫》CATS 【2020中国“猫”年震撼回归】","上音歌剧院","2020.05.15-05.21","80",2);
INSERT INTO play VALUES(42,1,"http://127.0.0.1:3000/zhuye/opera6.png","开心麻花五星爆笑贺岁大戏《瞎画艺术家》","民族文化宫大剧院","2019.11.21-12.01","80",2);
#北京
INSERT INTO play VALUES(43,2,"http://127.0.0.1:3000/zhuye/bjp1.png","北京「30年 」专场演唱会 ","","","180",2);
INSERT INTO play VALUES(44,2,"http://127.0.0.1:3000/zhuye/bjp2.png","北京高嘉朗2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",2);
INSERT INTO play VALUES(45,2,"http://127.0.0.1:3000/zhuye/bjp3.png","北京【齐迹】演唱会-北京站","华润北京湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",2);
INSERT INTO play VALUES(46,2,"http://127.0.0.1:3000/zhuye/bjp4.png","北京潮流动漫音乐节","北京长隆度假区音乐节广场","2019.12.07-12.08","200",2);
INSERT INTO play VALUES(47,2,"http://127.0.0.1:3000/zhuye/bjp5.png","北京江小白YOLO青年文化节","北京巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",2);
INSERT INTO play VALUES(48,2,"http://127.0.0.1:3000/zhuye/bjp6.png","吴青峰“太空备忘记”巡回演唱会-北京站","北京黄龙体育中心(体育馆)","2020.01.03-01.04","380",2);
INSERT INTO play VALUES(49,2,"http://127.0.0.1:3000/zhuye/bjp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-北京站","北京奥体中心体育馆","2019.12.28 周六 19:30","288",2);
#上海
INSERT INTO play VALUES(50,3,"http://127.0.0.1:3000/zhuye/shp1.png","上海面孔乐队「30年 」专场演唱会 ","","","180",2);
INSERT INTO play VALUES(51,3,"http://127.0.0.1:3000/zhuye/shp2.png","上海2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",2);
INSERT INTO play VALUES(52,3,"http://127.0.0.1:3000/zhuye/shp3.png","上海【齐迹】演唱会-上海站","上海湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",2);
INSERT INTO play VALUES(53,3,"http://127.0.0.1:3000/zhuye/shp4.png","上海潮流动漫音乐节","上海长隆度假区音乐节广场","2019.12.07-12.08","200",2);
INSERT INTO play VALUES(54,3,"http://127.0.0.1:3000/zhuye/shp5.png","上海江小白YOLO青年文化节","上海巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",2);
INSERT INTO play VALUES(55,3,"http://127.0.0.1:3000/zhuye/shp6.png","吴青峰“太空备忘记”巡回演唱会-上海站","上海体育中心(体育馆)","2020.01.03-01.04","380",2);
INSERT INTO play VALUES(56,3,"http://127.0.0.1:3000/zhuye/shp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-上海站","上海奥体中心体育馆","2019.12.28 周六 19:30","288",2);
#深圳
INSERT INTO play VALUES(57,4,"http://127.0.0.1:3000/zhuye/szp1.png","深圳面孔乐队「30年 」专场演唱会 ","","","180",2);
INSERT INTO play VALUES(58,4,"http://127.0.0.1:3000/zhuye/szp2.png","深圳2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",2);
INSERT INTO play VALUES(59,4,"http://127.0.0.1:3000/zhuye/szp3.png","深圳【齐迹】演唱会-深圳站","华润深圳湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",2);
INSERT INTO play VALUES(60,4,"http://127.0.0.1:3000/zhuye/szp4.png","深圳潮流动漫音乐节","深圳长隆度假区音乐节广场","2019.12.07-12.08","200",2);
INSERT INTO play VALUES(61,4,"http://127.0.0.1:3000/zhuye/szp5.png","深圳江小白YOLO青年文化节","深圳巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",2);
INSERT INTO play VALUES(62,4,"http://127.0.0.1:3000/zhuye/szp6.png","吴青峰“太空备忘记”巡回演唱会-深圳站","深圳体育中心(体育馆)","2020.01.03-01.04","380",2);
INSERT INTO play VALUES(63,4,"http://127.0.0.1:3000/zhuye/szp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-深圳站","深圳奥体中心体育馆","2019.12.28 周六 19:30","288",2);
#广州
INSERT INTO play VALUES(64,5,"http://127.0.0.1:3000/zhuye/gzp1.png","广州面孔乐队「30年 」专场演唱会 ","","","180",2);
INSERT INTO play VALUES(65,5,"http://127.0.0.1:3000/zhuye/gzp2.png","广州高嘉朗2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",2);
INSERT INTO play VALUES(66,5,"http://127.0.0.1:3000/zhuye/gzp3.png","2020任贤齐【齐迹】演唱会-广州站","广州湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",2);
INSERT INTO play VALUES(67,5,"http://127.0.0.1:3000/zhuye/gzp4.png","广州潮流动漫音乐节","广州长隆度假区音乐节广场","2019.12.07-12.08","200",2);
INSERT INTO play VALUES(68,5,"http://127.0.0.1:3000/zhuye/gzp5.png","广州江小白YOLO青年文化节","广州市巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",2);
INSERT INTO play VALUES(69,5,"http://127.0.0.1:3000/zhuye/gzp6.png","吴青峰“太空备忘记”巡回演唱会-广州站","广州体育中心(体育馆)","2020.01.03-01.04","380",2);
INSERT INTO play VALUES(70,5,"http://127.0.0.1:3000/zhuye/gzp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-广州站","广州市奥体中心体育馆","2019.12.28 周六 19:30","288",2);


#3楼话体育比赛sports
INSERT INTO play VALUES(71,1,"http://127.0.0.1:3000/zhuye/s1.png","2019-2020赛季CBA联赛常规赛北京首钢主场比赛（首钢会员版）","南京奥体中心体育馆","2019.12.14 周六","50",3);
INSERT INTO play VALUES(72,1,"http://127.0.0.1:3000/zhuye/sports1.png","2019-2020赛季CBA联赛常规赛辽宁本钢主场比赛","辽宁体育馆(奥体中心西侧)","2019.12.01-2020.03.12","50",3);
INSERT INTO play VALUES(73,1,"http://127.0.0.1:3000/zhuye/sports2.png","2019-2020赛季CBA联赛常规赛广东东莞银行主场比赛","东莞银行篮球中心(原东莞篮球中心)","2019.11.29-2020.03.04","100",3);
INSERT INTO play VALUES(74,1,"http://127.0.0.1:3000/zhuye/sports3.png","2019-2020赛季CBA常规赛浙江稠州银行主场比赛（常规赛）","滨江体育馆","2019.11.28 周四","80",3);
INSERT INTO play VALUES(75,1,"http://127.0.0.1:3000/zhuye/sports4.png","2019国际乒联世界巡回赛年终总决赛","郑州奥林匹克体育中心体育馆","2019.12.12-12.15","50",3);
INSERT INTO play VALUES(76,1,"http://127.0.0.1:3000/zhuye/sports5.png","2019-2020赛季CBA联赛常规赛 山西汾酒男篮散票","山西体育中心体育馆","2019.11.27-12.04","90",3);
INSERT INTO play VALUES(77,1,"http://127.0.0.1:3000/zhuye/sports6.png","2019赛季中超联赛 上海绿地申花 VS 江苏苏宁","虹口足球场","2019.11.27 周三 19:35","150",3);
#北京
INSERT INTO play VALUES(78,2,"http://127.0.0.1:3000/zhuye/bjp1.png","北京「30年 」专场演唱会 ","","","180",3);
INSERT INTO play VALUES(79,2,"http://127.0.0.1:3000/zhuye/bjp2.png","北京高嘉朗2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",3);
INSERT INTO play VALUES(80,2,"http://127.0.0.1:3000/zhuye/bjp3.png","北京【齐迹】演唱会-北京站","华润北京湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",3);
INSERT INTO play VALUES(81,2,"http://127.0.0.1:3000/zhuye/bjp4.png","北京潮流动漫音乐节","北京长隆度假区音乐节广场","2019.12.07-12.08","200",3);
INSERT INTO play VALUES(82,2,"http://127.0.0.1:3000/zhuye/bjp5.png","北京江小白YOLO青年文化节","北京巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",3);
INSERT INTO play VALUES(83,2,"http://127.0.0.1:3000/zhuye/bjp6.png","吴青峰“太空备忘记”巡回演唱会-北京站","北京黄龙体育中心(体育馆)","2020.01.03-01.04","380",3);
INSERT INTO play VALUES(84,2,"http://127.0.0.1:3000/zhuye/bjp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-北京站","北京奥体中心体育馆","2019.12.28 周六 19:30","288",3);
#上海
INSERT INTO play VALUES(85,3,"http://127.0.0.1:3000/zhuye/shp1.png","上海面孔乐队「30年 」专场演唱会 ","","","180",3);
INSERT INTO play VALUES(86,3,"http://127.0.0.1:3000/zhuye/shp2.png","上海2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",3);
INSERT INTO play VALUES(87,3,"http://127.0.0.1:3000/zhuye/shp3.png","上海【齐迹】演唱会-上海站","上海湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",3);
INSERT INTO play VALUES(88,3,"http://127.0.0.1:3000/zhuye/shp4.png","上海潮流动漫音乐节","上海长隆度假区音乐节广场","2019.12.07-12.08","200",3);
INSERT INTO play VALUES(89,3,"http://127.0.0.1:3000/zhuye/shp5.png","上海江小白YOLO青年文化节","上海巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",3);
INSERT INTO play VALUES(90,3,"http://127.0.0.1:3000/zhuye/shp6.png","吴青峰“太空备忘记”巡回演唱会-上海站","上海体育中心(体育馆)","2020.01.03-01.04","380",3);
INSERT INTO play VALUES(91,3,"http://127.0.0.1:3000/zhuye/shp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-上海站","上海奥体中心体育馆","2019.12.28 周六 19:30","288",3);
#深圳
INSERT INTO play VALUES(92,4,"http://127.0.0.1:3000/zhuye/szp1.png","深圳面孔乐队「30年 」专场演唱会 ","","","180",3);
INSERT INTO play VALUES(93,4,"http://127.0.0.1:3000/zhuye/szp2.png","深圳2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",3);
INSERT INTO play VALUES(94,4,"http://127.0.0.1:3000/zhuye/szp3.png","深圳【齐迹】演唱会-深圳站","华润深圳湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",3);
INSERT INTO play VALUES(95,4,"http://127.0.0.1:3000/zhuye/szp4.png","深圳潮流动漫音乐节","深圳长隆度假区音乐节广场","2019.12.07-12.08","200",3);
INSERT INTO play VALUES(96,4,"http://127.0.0.1:3000/zhuye/szp5.png","深圳江小白YOLO青年文化节","深圳巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",3);
INSERT INTO play VALUES(97,4,"http://127.0.0.1:3000/zhuye/szp6.png","吴青峰“太空备忘记”巡回演唱会-深圳站","深圳体育中心(体育馆)","2020.01.03-01.04","380",3);
INSERT INTO play VALUES(98,4,"http://127.0.0.1:3000/zhuye/szp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-深圳站","深圳奥体中心体育馆","2019.12.28 周六 19:30","288",3);
#广州
INSERT INTO play VALUES(99,5,"http://127.0.0.1:3000/zhuye/gzp1.png","广州面孔乐队「30年 」专场演唱会 ","","","180",3);
INSERT INTO play VALUES(100,5,"http://127.0.0.1:3000/zhuye/gzp2.png","广州高嘉朗2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",3);
INSERT INTO play VALUES(101,5,"http://127.0.0.1:3000/zhuye/gzp3.png","2020任贤齐【齐迹】演唱会-广州站","广州湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",3);
INSERT INTO play VALUES(102,5,"http://127.0.0.1:3000/zhuye/gzp4.png","广州潮流动漫音乐节","广州长隆度假区音乐节广场","2019.12.07-12.08","200",3);
INSERT INTO play VALUES(103,5,"http://127.0.0.1:3000/zhuye/gzp5.png","广州江小白YOLO青年文化节","广州市巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",3);
INSERT INTO play VALUES(104,5,"http://127.0.0.1:3000/zhuye/gzp6.png","吴青峰“太空备忘记”巡回演唱会-广州站","广州体育中心(体育馆)","2020.01.03-01.04","380",3);
INSERT INTO play VALUES(105,5,"http://127.0.0.1:3000/zhuye/gzp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-广州站","广州市奥体中心体育馆","2019.12.28 周六 19:30","288",3);


#4楼儿童亲子child
INSERT INTO play VALUES(106,1,"http://127.0.0.1:3000/zhuye/c1.png","2020年春季巧虎大型舞台剧《什么都有专卖店》北京站 ","南京奥体中心体育馆","2019.12.14 周六","120",4);
INSERT INTO play VALUES(107,1,"http://127.0.0.1:3000/zhuye/child1.png","大船文化·美国原版音乐舞台剧《汪汪队立大功-海盗的宝藏》","艺海剧院-大剧场","2019.12.12-12.29","180",4);
INSERT INTO play VALUES(108,1,"http://127.0.0.1:3000/zhuye/child2.png","音乐剧《故宫里的大怪兽之消失的龙女嫁衣》","天桥艺术中心-中剧场","2020.01.10-01.12","80",4);
INSERT INTO play VALUES(109,1,"http://127.0.0.1:3000/zhuye/child3.png","小马宝莉中文版舞台剧《友谊的皇冠》北京站","海淀剧院","2020.02.22-03.01","120",4);
INSERT INTO play VALUES(110,1,"http://127.0.0.1:3000/zhuye/child4.png","欢度春节 超级马戏－2020国际马戏小丑嘉年华","北京工人体育馆","2020.01.27-01.29","100",4);
INSERT INTO play VALUES(111,1,"http://127.0.0.1:3000/zhuye/child5.png","正版授权 大型实景舞台剧《奥特曼·宇宙之光》","艺海剧院-大剧场","2020.01.01-01.29","80",4);
INSERT INTO play VALUES(112,1,"http://127.0.0.1:3000/zhuye/child6.png","2019年秋冬巧虎大型舞台剧《和拖拉虫说再见》成都站","四川大剧院 大剧场","2019.12.21 周六","120",4);
#北京
INSERT INTO play VALUES(113,2,"http://127.0.0.1:3000/zhuye/bjp1.png","北京「30年 」专场演唱会 ","","","180",4);
INSERT INTO play VALUES(114,2,"http://127.0.0.1:3000/zhuye/bjp2.png","北京高嘉朗2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",4);
INSERT INTO play VALUES(115,2,"http://127.0.0.1:3000/zhuye/bjp3.png","北京【齐迹】演唱会-北京站","华润北京湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",4);
INSERT INTO play VALUES(116,2,"http://127.0.0.1:3000/zhuye/bjp4.png","北京潮流动漫音乐节","北京长隆度假区音乐节广场","2019.12.07-12.08","200",4);
INSERT INTO play VALUES(117,2,"http://127.0.0.1:3000/zhuye/bjp5.png","北京江小白YOLO青年文化节","北京巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",4);
INSERT INTO play VALUES(118,2,"http://127.0.0.1:3000/zhuye/bjp6.png","吴青峰“太空备忘记”巡回演唱会-北京站","北京黄龙体育中心(体育馆)","2020.01.03-01.04","380",4);
INSERT INTO play VALUES(119,2,"http://127.0.0.1:3000/zhuye/bjp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-北京站","北京奥体中心体育馆","2019.12.28 周六 19:30","288",4);
#上海
INSERT INTO play VALUES(120,3,"http://127.0.0.1:3000/zhuye/shp1.png","上海面孔乐队「30年 」专场演唱会 ","","","180",4);
INSERT INTO play VALUES(121,3,"http://127.0.0.1:3000/zhuye/shp2.png","上海2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",4);
INSERT INTO play VALUES(122,3,"http://127.0.0.1:3000/zhuye/shp3.png","上海【齐迹】演唱会-上海站","上海湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",4);
INSERT INTO play VALUES(123,3,"http://127.0.0.1:3000/zhuye/shp4.png","上海潮流动漫音乐节","上海长隆度假区音乐节广场","2019.12.07-12.08","200",4);
INSERT INTO play VALUES(124,3,"http://127.0.0.1:3000/zhuye/shp5.png","上海江小白YOLO青年文化节","上海巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",4);
INSERT INTO play VALUES(125,3,"http://127.0.0.1:3000/zhuye/shp6.png","吴青峰“太空备忘记”巡回演唱会-上海站","上海体育中心(体育馆)","2020.01.03-01.04","380",4);
INSERT INTO play VALUES(126,3,"http://127.0.0.1:3000/zhuye/shp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-上海站","上海奥体中心体育馆","2019.12.28 周六 19:30","288",4);
#深圳
INSERT INTO play VALUES(127,4,"http://127.0.0.1:3000/zhuye/szp1.png","深圳面孔乐队「30年 」专场演唱会 ","","","180",4);
INSERT INTO play VALUES(128,4,"http://127.0.0.1:3000/zhuye/szp2.png","深圳2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",4);
INSERT INTO play VALUES(129,4,"http://127.0.0.1:3000/zhuye/szp3.png","深圳【齐迹】演唱会-深圳站","华润深圳湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",4);
INSERT INTO play VALUES(130,4,"http://127.0.0.1:3000/zhuye/szp4.png","深圳潮流动漫音乐节","深圳长隆度假区音乐节广场","2019.12.07-12.08","200",4);
INSERT INTO play VALUES(131,4,"http://127.0.0.1:3000/zhuye/szp5.png","深圳江小白YOLO青年文化节","深圳巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",4);
INSERT INTO play VALUES(132,4,"http://127.0.0.1:3000/zhuye/szp6.png","吴青峰“太空备忘记”巡回演唱会-深圳站","深圳体育中心(体育馆)","2020.01.03-01.04","380",4);
INSERT INTO play VALUES(133,4,"http://127.0.0.1:3000/zhuye/szp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-深圳站","深圳奥体中心体育馆","2019.12.28 周六 19:30","288",4);
#广州
INSERT INTO play VALUES(134,5,"http://127.0.0.1:3000/zhuye/gzp1.png","广州面孔乐队「30年 」专场演唱会 ","","","180",4);
INSERT INTO play VALUES(135,5,"http://127.0.0.1:3000/zhuye/gzp2.png","广州高嘉朗2020“I Need You”生日会","M空间","2020.01.12 周日 19:30","¥280",4);
INSERT INTO play VALUES(136,5,"http://127.0.0.1:3000/zhuye/gzp3.png","2020任贤齐【齐迹】演唱会-广州站","广州湾体育中心“春茧”体育馆","2020.03.21 周六 19:30","399",4);
INSERT INTO play VALUES(137,5,"http://127.0.0.1:3000/zhuye/gzp4.png","广州潮流动漫音乐节","广州长隆度假区音乐节广场","2019.12.07-12.08","200",4);
INSERT INTO play VALUES(138,5,"http://127.0.0.1:3000/zhuye/gzp5.png","广州江小白YOLO青年文化节","广州市巨鹏飞梦幻海岸(观音山沙滩)","2019.12.07 周六 13:00","450",4);
INSERT INTO play VALUES(139,5,"http://127.0.0.1:3000/zhuye/gzp6.png","吴青峰“太空备忘记”巡回演唱会-广州站","广州体育中心(体育馆)","2020.01.03-01.04","380",4);
INSERT INTO play VALUES(140,5,"http://127.0.0.1:3000/zhuye/gzp7.png","MIA觅雅文化呈现·杨丞琳“青春住了谁”巡回演唱会-广州站","广州市奥体中心体育馆","2019.12.28 周六 19:30","288",4);


##########################轮播图数据
USE dm;
CREATE TABLE banner(
  id INT PRIMARY KEY AUTO_INCREMENT,
  picture VARCHAR(128),
  areaid INT
);
#全国
INSERT INTO banner VALUES(1,"http://127.0.0.1:3000/banner/lun1.png",1);
INSERT INTO banner VALUES(2,"http://127.0.0.1:3000/banner/lun2.png",1);
#北京
INSERT INTO banner VALUES(3,"http://127.0.0.1:3000/banner/bjlun1.png",2);
INSERT INTO banner VALUES(4,"http://127.0.0.1:3000/banner/bjlun2.png",2);
INSERT INTO banner VALUES(5,"http://127.0.0.1:3000/banner/bjlun3.png",2);
INSERT INTO banner VALUES(6,"http://127.0.0.1:3000/banner/bjlun4.png",2);
#上海
INSERT INTO banner VALUES(7,"http://127.0.0.1:3000/banner/shlun1.png",3);
INSERT INTO banner VALUES(8,"http://127.0.0.1:3000/banner/shlun2.png",3);
INSERT INTO banner VALUES(9,"http://127.0.0.1:3000/banner/shlun3.png",3);
#深圳
INSERT INTO banner VALUES(10,"http://127.0.0.1:3000/banner/szlun1.png",4);
INSERT INTO banner VALUES(11,"http://127.0.0.1:3000/banner/szlun2.png",4);
#广州
INSERT INTO banner VALUES(12,"http://127.0.0.1:3000/banner/gzlun1.png",5);
INSERT INTO banner VALUES(13,"http://127.0.0.1:3000/banner/gzlun2.png",5);

##########################用户数据
USE dm;
CREATE TABLE user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  phone VARCHAR(128),
  pwd VARCHAR(128)
);

#插入用户数据
INSERT INTO user VALUES(1,"13297071872","123456yy");
INSERT INTO user VALUES(2,"13297071873","123456xx");

##########################详情页数据
USE dm;
CREATE TABLE prices(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pname VARCHAR(128),
  pprice INT,
  pstock INT,
  playid INT
);

#插入详情页数据
#play
INSERT INTO prices VALUES(1,"四等票680元","680",0,1);
INSERT INTO prices VALUES(2,"三等票980元","980",0,1);
INSERT INTO prices VALUES(3,"二等票1280元","1280",1,1);
INSERT INTO prices VALUES(4,"一等票1680元","1680",1,1);
INSERT INTO prices VALUES(5,"VIP 2020元","2020",1,1);

INSERT INTO prices VALUES(6,"380元看台","380",0,2);
INSERT INTO prices VALUES(7,"680元看台","680",0,2);
INSERT INTO prices VALUES(8,"980元看台","980",1,2);
INSERT INTO prices VALUES(9,"1280元看台","1280",1,2);
INSERT INTO prices VALUES(10,"1680元看台","1680",1,2);

INSERT INTO prices VALUES(11,"380元看台","380",0,3);
INSERT INTO prices VALUES(12,"680元看台","680",0,3);
INSERT INTO prices VALUES(13,"980元看台","980",0,3);
INSERT INTO prices VALUES(14,"1280元看台","1280",1,3);
INSERT INTO prices VALUES(15,"1680元看台","1680",1,3);

INSERT INTO prices VALUES(16,"四等票680元","680",1,4);
INSERT INTO prices VALUES(17,"三等票980元","980",1,4);
INSERT INTO prices VALUES(18,"二等票1280元","1280",1,4);
INSERT INTO prices VALUES(19,"一等票1680元","1680",1,4);
INSERT INTO prices VALUES(20,"一等票1680元","1680",1,4);

INSERT INTO prices VALUES(21,"四等票680元","680",1,5);
INSERT INTO prices VALUES(22,"三等票980元","980",1,5);
INSERT INTO prices VALUES(23,"二等票1280元","1280",1,5);
INSERT INTO prices VALUES(24,"一等票1680元","1680",1,5);
INSERT INTO prices VALUES(25,"一等票1680元","1680",1,5);

INSERT INTO prices VALUES(26,"四等票680元","680",1,6);
INSERT INTO prices VALUES(27,"三等票980元","980",1,6);
INSERT INTO prices VALUES(28,"二等票1280元","1280",1,6);
INSERT INTO prices VALUES(29,"一等票1680元","1680",1,6);
INSERT INTO prices VALUES(30,"一等票1680元","1680",1,6);

INSERT INTO prices VALUES(31,"四等票680元","680",1,7);
INSERT INTO prices VALUES(32,"三等票980元","980",1,7);
INSERT INTO prices VALUES(33,"二等票1280元","1280",1,7);
INSERT INTO prices VALUES(34,"一等票1680元","1680",1,7);
INSERT INTO prices VALUES(35,"一等票1680元","1680",1,7);

#opera
INSERT INTO prices VALUES(36,"四等票680元","680",1,8);
INSERT INTO prices VALUES(37,"三等票980元","980",1,8);
INSERT INTO prices VALUES(38,"二等票1280元","1280",1,8);
INSERT INTO prices VALUES(39,"一等票1680元","1680",1,8);
INSERT INTO prices VALUES(40,"VIP 2020元","2020",1,8);

INSERT INTO prices VALUES(41,"四等票680元","680",1,9);
INSERT INTO prices VALUES(42,"三等票980元","980",1,9);
INSERT INTO prices VALUES(43,"二等票1280元","1280",1,9);
INSERT INTO prices VALUES(44,"一等票1680元","1680",1,9);
INSERT INTO prices VALUES(45,"一等票1680元","1680",1,9);

INSERT INTO prices VALUES(46,"四等票680元","680",1,10);
INSERT INTO prices VALUES(47,"三等票980元","980",1,10);
INSERT INTO prices VALUES(48,"二等票1280元","1280",1,10);
INSERT INTO prices VALUES(49,"一等票1680元","1680",1,10);
INSERT INTO prices VALUES(50,"一等票1680元","1680",1,10);

INSERT INTO prices VALUES(51,"四等票680元","680",1,11);
INSERT INTO prices VALUES(52,"三等票980元","980",1,11);
INSERT INTO prices VALUES(53,"二等票1280元","1280",1,11);
INSERT INTO prices VALUES(54,"一等票1680元","1680",1,11);
INSERT INTO prices VALUES(55,"一等票1680元","1680",1,11);

INSERT INTO prices VALUES(56,"四等票680元","680",1,12);
INSERT INTO prices VALUES(57,"三等票980元","980",1,12);
INSERT INTO prices VALUES(58,"二等票1280元","1280",1,12);
INSERT INTO prices VALUES(59,"一等票1680元","1680",1,12);
INSERT INTO prices VALUES(60,"一等票1680元","1680",1,12);

INSERT INTO prices VALUES(61,"四等票680元","680",1,13);
INSERT INTO prices VALUES(62,"三等票980元","980",1,13);
INSERT INTO prices VALUES(63,"二等票1280元","1280",1,13);
INSERT INTO prices VALUES(64,"一等票1680元","1680",1,13);
INSERT INTO prices VALUES(65,"一等票1680元","1680",1,13);

INSERT INTO prices VALUES(66,"四等票680元","680",1,14);
INSERT INTO prices VALUES(67,"三等票980元","980",1,14);
INSERT INTO prices VALUES(68,"二等票1280元","1280",1,14);
INSERT INTO prices VALUES(69,"一等票1680元","1680",1,14);
INSERT INTO prices VALUES(70,"一等票1680元","1680",1,14);

#sports
INSERT INTO prices VALUES(71,"四等票680元","680",1,15);
INSERT INTO prices VALUES(72,"三等票980元","980",1,15);
INSERT INTO prices VALUES(73,"二等票1280元","1280",1,15);
INSERT INTO prices VALUES(74,"一等票1680元","1680",1,15);
INSERT INTO prices VALUES(75,"VIP 2020元","2020",1,15);

INSERT INTO prices VALUES(76,"四等票680元","680",1,16);
INSERT INTO prices VALUES(77,"三等票980元","980",1,16);
INSERT INTO prices VALUES(78,"二等票1280元","1280",1,16);
INSERT INTO prices VALUES(79,"一等票1680元","1680",1,16);
INSERT INTO prices VALUES(80,"一等票1680元","1680",1,16);

INSERT INTO prices VALUES(81,"四等票680元","680",1,17);
INSERT INTO prices VALUES(82,"三等票980元","980",1,17);
INSERT INTO prices VALUES(83,"二等票1280元","1280",1,17);
INSERT INTO prices VALUES(84,"一等票1680元","1680",1,17);
INSERT INTO prices VALUES(85,"一等票1680元","1680",1,17);

INSERT INTO prices VALUES(86,"四等票680元","680",1,18);
INSERT INTO prices VALUES(87,"三等票980元","980",1,18);
INSERT INTO prices VALUES(88,"二等票1280元","1280",1,18);
INSERT INTO prices VALUES(89,"一等票1680元","1680",1,18);
INSERT INTO prices VALUES(90,"一等票1680元","1680",1,18);

INSERT INTO prices VALUES(91,"四等票680元","680",1,19);
INSERT INTO prices VALUES(92,"三等票980元","980",1,19);
INSERT INTO prices VALUES(93,"二等票1280元","1280",1,19);
INSERT INTO prices VALUES(94,"一等票1680元","1680",1,19);
INSERT INTO prices VALUES(95,"一等票1680元","1680",1,19);

INSERT INTO prices VALUES(96,"四等票680元","680",1,20);
INSERT INTO prices VALUES(97,"三等票980元","980",1,20);
INSERT INTO prices VALUES(98,"二等票1280元","1280",1,20);
INSERT INTO prices VALUES(99,"一等票1680元","1680",1,20);
INSERT INTO prices VALUES(100,"一等票1680元","1680",1,20);

INSERT INTO prices VALUES(101,"四等票680元","680",1,21);
INSERT INTO prices VALUES(102,"三等票980元","980",1,21);
INSERT INTO prices VALUES(103,"二等票1280元","1280",1,21);
INSERT INTO prices VALUES(104,"一等票1680元","1680",1,21);
INSERT INTO prices VALUES(105,"一等票1680元","1680",1,21);

#child
INSERT INTO prices VALUES(106,"四等票680元","680",1,22);
INSERT INTO prices VALUES(107,"三等票980元","980",1,22);
INSERT INTO prices VALUES(108,"二等票1280元","1280",1,22);
INSERT INTO prices VALUES(109,"一等票1680元","1680",1,22);
INSERT INTO prices VALUES(110,"VIP 2020元","2020",1,22);

INSERT INTO prices VALUES(111,"四等票680元","680",1,23);
INSERT INTO prices VALUES(112,"三等票980元","980",1,23);
INSERT INTO prices VALUES(113,"二等票1280元","1280",1,23);
INSERT INTO prices VALUES(114,"一等票1680元","1680",1,23);
INSERT INTO prices VALUES(115,"一等票1680元","1680",1,23);

INSERT INTO prices VALUES(116,"四等票680元","680",1,24);
INSERT INTO prices VALUES(117,"三等票980元","980",1,24);
INSERT INTO prices VALUES(118,"二等票1280元","1280",1,24);
INSERT INTO prices VALUES(119,"一等票1680元","1680",1,24);
INSERT INTO prices VALUES(120,"一等票1680元","1680",1,24);

INSERT INTO prices VALUES(121,"四等票680元","680",1,25);
INSERT INTO prices VALUES(122,"三等票980元","980",1,25);
INSERT INTO prices VALUES(123,"二等票1280元","1280",1,25);
INSERT INTO prices VALUES(124,"一等票1680元","1680",1,25);
INSERT INTO prices VALUES(125,"一等票1680元","1680",1,25);

INSERT INTO prices VALUES(126,"四等票680元","680",1,26);
INSERT INTO prices VALUES(127,"三等票980元","980",1,26);
INSERT INTO prices VALUES(128,"二等票1280元","1280",1,26);
INSERT INTO prices VALUES(129,"一等票1680元","1680",1,26);
INSERT INTO prices VALUES(130,"一等票1680元","1680",1,26);

INSERT INTO prices VALUES(131,"四等票680元","680",1,27);
INSERT INTO prices VALUES(132,"三等票980元","980",1,27);
INSERT INTO prices VALUES(133,"二等票1280元","1280",1,27);
INSERT INTO prices VALUES(134,"一等票1680元","1680",1,27);
INSERT INTO prices VALUES(135,"一等票1680元","1680",1,27);

INSERT INTO prices VALUES(136,"四等票680元","680",1,28);
INSERT INTO prices VALUES(137,"三等票980元","980",1,28);
INSERT INTO prices VALUES(138,"二等票1280元","1280",1,28);
INSERT INTO prices VALUES(139,"一等票1680元","1680",1,28);
INSERT INTO prices VALUES(140,"一等票1680元","1680",1,28);
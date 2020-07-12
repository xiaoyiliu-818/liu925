SET NAMES UTF8;
DROP DATABASE IF EXISTS fd;
CREATE DATABASE fd CHARSET=UTF8;
USE fd;

/**商店衣服**/
CREATE TABLE fd_shop(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  goodsName VARCHAR(128),     #商品名称
  price VARCHAR(128),         #商品价格
  photo VARCHAR(128)         #商品图片
);

/**用户信息**/
CREATE TABLE fd_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  upwd VARCHAR(32),
  phone VARCHAR(16)
);



/*******************/
/******数据导入******/
/*******************/
/**笔记本电脑型号家族**/
INSERT INTO fd_shop VALUES
(1,'谢天笑周边卫衣1','¥299.00','img/1533541186.jpg'),
(2,'谢天笑周边卫衣2','¥299.00','img/1533541186.jpg'),
(3,'谢天笑周边卫衣3','¥149.00','img/1533541347.jpg'),
(4,'谢天笑周边卫衣4','¥149.00','img/1533541347.jpg');


/**用户信息**/
INSERT INTO fd_user VALUES
(1,'12345678','13297071872'),
(2,'123lxy11','13297071873');


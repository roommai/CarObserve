SET NAMES UTF8;
DROP DATABASE IF EXISTS car;
CREATE DATABASE car CHARSET=UTF8;
USE car;


/**用户信息**/
CREATE TABLE car_user(
uid INT PRIMARY KEY AUTO_INCREMENT,
uname VARCHAR(32),
upwd VARCHAR(32),
email VARCHAR(64),
phone VARCHAR(16),
avatar VARCHAR(128),   #头像图片路径
user_name VARCHAR(32), #用户名，如王小明
gender INT #性别 0-女 1-男
);


/****首页主打车****/
CREATE TABLE car_index_onsale(
osid INT PRIMARY KEY AUTO_INCREMENT,
cname VARCHAR(32),
img VARCHAR(128),
isShow INT
);


/****首页轮播图****/
CREATE TABLE car_index_banner(
bid INT PRIMARY KEY AUTO_INCREMENT,
img VARCHAR(128)
);


/****首页热文****/
CREATE TABLE car_index_article(
aid INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(128),
img VARCHAR(256),
readed INT
);

/**汽车家族**/
CREATE TABLE car_list_family(
fid INT PRIMARY KEY,
fname VARCHAR(32),
img VARCHAR(256)
);

/****汽车详情列表****/
CREATE TABLE car_list(
cid INT PRIMARY KEY AUTO_INCREMENT,
family_id INT,           #所属家族编号
cname VARCHAR(32),
img VARCHAR(128),
index_url VARCHAR(128)
);

/****360看车图片地址****/
CREATE TABLE car_three_sixty_img(
tid INT PRIMARY KEY AUTO_INCREMENT,
cid INT,
cname VARCHAR(32),
color VARCHAR(32),
src VARCHAR(128)
);


/*******************/
/******数据导入******/
/*******************/


/**用户信息**/
INSERT INTO car_user VALUES
(NULL,'kaipat','123456789','597683167@qq.com','13902237988',NULL,'jiapeng',1);


/****首页主打车****/
INSERT INTO car_index_onsale VALUES
(NULL,'广汽本田皓影','index/onsale/car1.jpg',1),
(NULL,'威马EX5','index/onsale/car2.jpg',1),
(NULL,'智达X3','index/onsale/car3.jpg',1),
(NULL,'比亚迪 宋Pro','index/onsale/car4.jpg',1),
(NULL,'Aion LX','index/onsale/car5.jpg',1),
(NULL,'丰田普拉多','index/onsale/car6.jpg',1),
(NULL,'丰田普拉多','index/onsale/car6.jpg',0),
(NULL,'丰田普拉多','index/onsale/car6.jpg',0),
(NULL,'丰田普拉多','index/onsale/car6.jpg',0);


/****首页轮播图****/
INSERT INTO car_index_banner VALUES
(NULL,'index/banner/banner1.jpg'),
(NULL,'index/banner/banner2.jpg'),
(NULL,'index/banner/banner3.jpg'),
(NULL,'index/banner/banner4.jpg');


/****首页热文****/
INSERT INTO car_index_article VALUES
(NULL,'10万元真的能买到一款同级最优的车？全新远景X6给你答案','index/article-img/article-img2-1.jpg|index/article-img/article-img2-2.jpg|index/article-img/article-img2-3.jpg',17076),
(NULL,'终极解决方案！售价近百万再加30万选装包，保时捷卡宴Coupe实拍','index/article-img/article-img1-1.jpg|index/article-img/article-img1-2.jpg|index/article-img/article-img1-3.jpg',8560),
(NULL,' 有30万的预算，不知怎么选择？这款SUV应该适合你！推荐理由：当我们提到揽胜极光','index/article-img/article-img3-1.jpg|index/article-img/article-img3-2.jpg|index/article-img/article-img3-3.jpg',590),
(NULL,'10万元真的能买到一款同级最优的车？全新远景X6给你答案','index/article-img/article-img2-1.jpg|index/article-img/article-img2-2.jpg|index/article-img/article-img2-3.jpg',17076),
(NULL,'终极解决方案！售价近百万再加30万选装包，保时捷卡宴Coupe实拍','index/article-img/article-img1-1.jpg|index/article-img/article-img1-2.jpg|index/article-img/article-img1-3.jpg',8560),
(NULL,' 有30万的预算，不知怎么选择？这款SUV应该适合你！推荐理由：当我们提到揽胜极光','index/article-img/article-img3-1.jpg|index/article-img/article-img3-2.jpg|index/article-img/article-img3-3.jpg',590),
(NULL,'10万元真的能买到一款同级最优的车？全新远景X6给你答案','index/article-img/article-img2-1.jpg|index/article-img/article-img2-2.jpg|index/article-img/article-img2-3.jpg',17076),
(NULL,'终极解决方案！售价近百万再加30万选装包，保时捷卡宴Coupe实拍','index/article-img/article-img1-1.jpg|index/article-img/article-img1-2.jpg|index/article-img/article-img1-3.jpg',8560),
(NULL,' 有30万的预算，不知怎么选择？这款SUV应该适合你！推荐理由：当我们提到揽胜极光','index/article-img/article-img3-1.jpg|index/article-img/article-img3-2.jpg|index/article-img/article-img3-3.jpg',590),
(NULL,'10万元真的能买到一款同级最优的车？全新远景X6给你答案','index/article-img/article-img2-1.jpg|index/article-img/article-img2-2.jpg|index/article-img/article-img2-3.jpg',17076),
(NULL,'终极解决方案！售价近百万再加30万选装包，保时捷卡宴Coupe实拍','index/article-img/article-img1-1.jpg|index/article-img/article-img1-2.jpg|index/article-img/article-img1-3.jpg',8560),
(NULL,' 有30万的预算，不知怎么选择？这款SUV应该适合你！推荐理由：当我们提到揽胜极光','index/article-img/article-img3-1.jpg|index/article-img/article-img3-2.jpg|index/article-img/article-img3-3.jpg',590),
(NULL,'10万元真的能买到一款同级最优的车？全新远景X6给你答案','index/article-img/article-img2-1.jpg|index/article-img/article-img2-2.jpg|index/article-img/article-img2-3.jpg',17076),
(NULL,'终极解决方案！售价近百万再加30万选装包，保时捷卡宴Coupe实拍','index/article-img/article-img1-1.jpg|index/article-img/article-img1-2.jpg|index/article-img/article-img1-3.jpg',8560),
(NULL,' 有30万的预算，不知怎么选择？这款SUV应该适合你！推荐理由：当我们提到揽胜极光','index/article-img/article-img3-1.jpg|index/article-img/article-img3-2.jpg|index/article-img/article-img3-3.jpg',590),
(NULL,'10万元真的能买到一款同级最优的车？全新远景X6给你答案','index/article-img/article-img2-1.jpg|index/article-img/article-img2-2.jpg|index/article-img/article-img2-3.jpg',17076),
(NULL,'终极解决方案！售价近百万再加30万选装包，保时捷卡宴Coupe实拍','index/article-img/article-img1-1.jpg|index/article-img/article-img1-2.jpg|index/article-img/article-img1-3.jpg',8560),
(NULL,' 有30万的预算，不知怎么选择？这款SUV应该适合你！推荐理由：当我们提到揽胜极光','index/article-img/article-img3-1.jpg|index/article-img/article-img3-2.jpg|index/article-img/article-img3-3.jpg',590),
(NULL,'10万元真的能买到一款同级最优的车？全新远景X6给你答案','index/article-img/article-img2-1.jpg|index/article-img/article-img2-2.jpg|index/article-img/article-img2-3.jpg',17076),
(NULL,'终极解决方案！售价近百万再加30万选装包，保时捷卡宴Coupe实拍','index/article-img/article-img1-1.jpg|index/article-img/article-img1-2.jpg|index/article-img/article-img1-3.jpg',8560),
(NULL,' 有30万的预算，不知怎么选择？这款SUV应该适合你！推荐理由：当我们提到揽胜极光','index/article-img/article-img3-1.jpg|index/article-img/article-img3-2.jpg|index/article-img/article-img3-3.jpg',590),
(NULL,'10万元真的能买到一款同级最优的车？全新远景X6给你答案','index/article-img/article-img2-1.jpg|index/article-img/article-img2-2.jpg|index/article-img/article-img2-3.jpg',17076),
(NULL,'终极解决方案！售价近百万再加30万选装包，保时捷卡宴Coupe实拍','index/article-img/article-img1-1.jpg|index/article-img/article-img1-2.jpg|index/article-img/article-img1-3.jpg',8560),
(NULL,' 有30万的预算，不知怎么选择？这款SUV应该适合你！推荐理由：当我们提到揽胜极光','index/article-img/article-img3-1.jpg|index/article-img/article-img3-2.jpg|index/article-img/article-img3-3.jpg',590);

/**汽车家族**/
INSERT INTO car_list_family VALUES
(1,"宝马",NULL),
(2,"奔驰",NULL),
(4,"沃尔沃",NULL),
(5,"奥迪",NULL),
(6,"本田",NULL),
(7,"丰田",NULL);

/****汽车详情列表****/
INSERT INTO car_list VALUES
(NULL,1,'宝马100',NULL,NULL),
(NULL,1,'宝马105',NULL,NULL),
(NULL,1,'宝马200',NULL,NULL),
(NULL,1,'宝马205',NULL,NULL),
(NULL,1,'宝马300',NULL,NULL),
(NULL,1,'宝马305',NULL,NULL),
(NULL,1,'宝马400',NULL,NULL),
(NULL,1,'宝马405',NULL,NULL),
(NULL,1,'宝马500',NULL,NULL),
(NULL,1,'宝马505',NULL,NULL),
(NULL,2,'奔驰c100',NULL,NULL),
(NULL,2,'奔驰c200',NULL,NULL),
(NULL,2,'奔驰c300',NULL,NULL),
(NULL,2,'奔驰c400',NULL,NULL),
(NULL,2,'奔驰c500',NULL,NULL),
(NULL,2,'奔驰c600',NULL,NULL),
(NULL,2,'奔驰c700',NULL,NULL),
(NULL,2,'奔驰c800',NULL,NULL),
(NULL,2,'奔驰c900',NULL,NULL),
(NULL,2,'奔驰c1000',NULL,NULL),
(NULL,3,'沃尔沃s10',NULL,NULL),
(NULL,3,'沃尔沃s20',NULL,NULL),
(NULL,3,'沃尔沃s30',NULL,NULL),
(NULL,3,'沃尔沃s40',NULL,NULL),
(NULL,3,'沃尔沃s50',NULL,NULL),
(NULL,3,'沃尔沃s60',NULL,NULL),
(NULL,3,'沃尔沃s60',NULL,NULL),
(NULL,3,'沃尔沃s70',NULL,NULL),
(NULL,3,'沃尔沃s80',NULL,NULL),
(NULL,3,'沃尔沃s90',NULL,NULL);

/****360看车图片地址****/
INSERT INTO car_three_sixty_img VALUES
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),
(NULL,1,'bmw','red','three_sixty/BMW/red/'),

(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),
(NULL,1,'bmw','blue','three_sixty/BMW/blue/'),

(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),
(NULL,1,'bmw','white','three_sixty/BMW/white/'),

(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),
(NULL,1,'bmw','black','three_sixty/BMW/black/'),

(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),
(NULL,1,'bmw','grey','three_sixty/BMW/grey/'),

(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/'),
(NULL,1,'bmw','yellow','three_sixty/BMW/yellow/');



















































#打开xampp 命令提示符，输入： mysql -uroot <  拖入本文件
SET NAMES UTF8;
drop database if exists team8;
create database team8 CHARSET=UTF8;

use team8;

#用户表(team_user)
#编号(uid),昵称(sname)，密码(pwd),姓名(name),手机号(phone),电子邮箱(email)
drop table if exists team_user;
create table team_user(
	uid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	pwd varchar(16),
	phone varchar(16),
	email varchar(128)
);

#插入数据
INSERT INTO team_user VALUES(1,'123456','13757131031','theflyking@163.com');		
INSERT INTO team_user VALUES(2,'123456','13588202146','bff@163.com');	



#=======================================================================


-- DROP TABLE IF EXISTS pro_classify;  #分类总表

CREATE TABLE pro_classify(
	cid INT PRIMARY KEY AUTO_INCREMENT,					#总分类ID主键约束，值可不填，可自增长
	classify VARCHAR(64)								#分类名
);

#分类总表插入数据
INSERT INTO pro_classify VALUES(1,'商城型');		
INSERT INTO pro_classify VALUES(2,'展示型');			
INSERT INTO pro_classify VALUES(3,'平台型');		
INSERT INTO pro_classify VALUES(4,'社交型');			
INSERT INTO pro_classify VALUES(5,'APP开发');				


#=======================================================================

DROP TABLE IF EXISTS pro_classify_a;  #二级A型分类

CREATE TABLE pro_classify_a(
	ca_id INT PRIMARY KEY AUTO_INCREMENT,				#二级A型分类
	cid INT,				#二级A型分类
	classify_a VARCHAR(64),								#分类名
	r_price DECIMAL(10,2),								#参考价格
	FOREIGN KEY (cid) REFERENCES pro_classify(cid)   	#关联分类总表cid列
);

#插入数据
INSERT INTO pro_classify_a VALUES(1,1,'商城型电脑端网站',6000);		
INSERT INTO pro_classify_a VALUES(2,1,'商城型移动端网站',5000);		
INSERT INTO pro_classify_a VALUES(3,1,'商城型响应式网站',6000);		
INSERT INTO pro_classify_a VALUES(4,2,'展示型电脑端网站',5000);		
INSERT INTO pro_classify_a VALUES(5,2,'展示型移动端网站',4000);		
INSERT INTO pro_classify_a VALUES(6,2,'展示型响应式网站',6000);	
INSERT INTO pro_classify_a VALUES(7,3,'平台型电脑端网站',8000);		
INSERT INTO pro_classify_a VALUES(8,3,'平台型移动端网站',8000);		
INSERT INTO pro_classify_a VALUES(9,3,'平台型响应式网站',8000);		
INSERT INTO pro_classify_a VALUES(10,4,'社交型电脑端网站',8000);		
INSERT INTO pro_classify_a VALUES(11,4,'社交型移动端网站',9000);		
INSERT INTO pro_classify_a VALUES(12,4,'社交型响应式网站',10000);		
INSERT INTO pro_classify_a VALUES(13,5,'移动端APP开发',null);		

#=======================================================================

DROP TABLE IF EXISTS pro_classify_b;  #二级B型分类

CREATE TABLE pro_classify_b(
	cb_id INT PRIMARY KEY AUTO_INCREMENT,				#二级B型分类
	classify_b VARCHAR(16),								#分类名
	double_price DECIMAL(10,2)							#价格*倍数
);

#插入数据
INSERT INTO pro_classify_b VALUES(1,'普通型',1.0);		
INSERT INTO pro_classify_b VALUES(2,'精华型',1.5);		
INSERT INTO pro_classify_b VALUES(3,'豪华型',null);		


#=======================================================================

DROP TABLE IF EXISTS p_case;  #案例
CREATE TABLE p_case(
	pid INT PRIMARY KEY AUTO_INCREMENT,			#案例id
	p_name VARCHAR(16),							#案例名
	over_time VARCHAR(16),								#结案时间
	s_price DECIMAL(10,2),						#结案价格
	img_src VARCHAR(128),						#展示图地址路径
	p_href VARCHAR(128),
	p_content VARCHAR(64),                    #案例地址
	p_id INT(16),								#类别
	a_id INT(16),								#二级A型类别
	b_id INT(16),								#二级B型类别
	FOREIGN KEY (p_id) REFERENCES pro_classify(cid),   		#关联分类总表cid列
	FOREIGN KEY (a_id) REFERENCES pro_classify_a(ca_id),   	#关联二级A型类别表ca_id列
	FOREIGN KEY (b_id) REFERENCES pro_classify_b(cb_id)   	#关联二级B型类别表cb_id列
);


INSERT INTO p_case VALUES(1,"猎豹网","2016-7-15",10000.00,"images/pro/01.jpg","case-show.html","这是一个出售运动套装的商店，这里有这各种运动商品，如果你是运动爱好者，我保证你会喜欢我们的设备。",1,1,1);
INSERT INTO p_case VALUES(2,"美食馆","2017-4-20",13340.00,"images/pro/02.jpg","case-show.html","这里只有你没吃过的美食，没有我们做不出的美食！！！",1,1,2);

INSERT INTO p_case VALUES(3,"电子设备","2017-7-12",12000.00,"images/pro/03.jpg","case-show.html","在这个科技时代，你不准备买些电子设备来提高你生活的效率吗？",1,2,3);

INSERT INTO p_case VALUES(4,"足球俱乐部","2017-12-1",13000.00,"images/pro/04.jpg","case-show.html","在这里我们不聊别的只谈足球，如果你热爱足球就来加入我们吧",1,2,1);

INSERT INTO p_case VALUES(5,"速度与激情","2017-7-20",18000.00,"images/pro/05.jpg","case-show.html","速度和激情的融合，带你见证最极致的速度和最火热的友情，come 朋友加入我们吧",1,3,2);

INSERT INTO p_case VALUES(6,"同一个电竞","2018-1-20",20000.00,"images/pro/06.jpg","case-show.html","如果你也爱玩游戏就来加入我们吧，让我们在游戏和现实中一起成长。",1,3,3);

INSERT INTO p_case VALUES(7,"网站标题7","2017-7-20",12000.00,"images/pro/07.jpg","case-show.html","网站7介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",2,1,1);

INSERT INTO p_case VALUES(8,"网站标题8","2017-7-20",12000.00,"images/pro/08.jpg","case-show.html","网站8介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",2,1,2);

INSERT INTO p_case VALUES(9,"网站标题9","2017-7-20",12000.00,"images/pro/09.jpg","case-show.html","网站9介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",2,2,3);

INSERT INTO p_case VALUES(10,"网站标题10","2017-7-20",12000.00,"images/pro/10.jpg","case-show.html","网站10介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",2,2,1);

INSERT INTO p_case VALUES(11,"网站标题11","2017-7-20",12000.00,"images/pro/11.jpg","case-show.html","网站11介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",2,3,2);

INSERT INTO p_case VALUES(12,"网站标题12","2017-7-20",12000.00,"images/pro/12.jpg","case-show.html","网站12介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",2,3,3);

INSERT INTO p_case VALUES(13,"网站标题13","2017-7-20",12000.00,"images/pro/13.jpg","case-show.html","网站13介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",3,1,1);

INSERT INTO p_case VALUES(14,"网站标题14","2017-7-20",12000.00,"images/pro/14.jpg","case-show.html","网站14介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",3,1,2);

INSERT INTO p_case VALUES(15,"网站标题15","2017-7-20",12000.00,"images/pro/15.jpg","case-show.html","网站15介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",3,2,3);

INSERT INTO p_case VALUES(16,"网站标题16","2017-7-20",12000.00,"images/pro/16.jpg","case-show.html","网站16介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",3,2,1);

INSERT INTO p_case VALUES(17,"网站标题17","2017-7-20",12000.00,"images/pro/17.jpg","case-show.html","网站17介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",3,3,2);

INSERT INTO p_case VALUES(18,"网站标题18","2017-7-20",12000.00,"images/pro/18.jpg","case-show.html","网站18介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",3,3,3);

INSERT INTO p_case VALUES(19,"网站标题19","2017-7-20",12000.00,"images/pro/19.jpg","case-show.html","网站19介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",4,1,1);

INSERT INTO p_case VALUES(20,"网站标题20","2017-7-20",12000.00,"images/pro/20.jpg","case-show.html","网站20介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",4,1,2);

INSERT INTO p_case VALUES(21,"网站标题21","2017-7-20",12000.00,"images/pro/21.jpg","case-show.html","网站21介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",4,2,3);

INSERT INTO p_case VALUES(22,"网站标题22","2017-7-20",12000.00,"images/pro/22.jpg","case-show.html","网站22介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",4,2,1);

INSERT INTO p_case VALUES(23,"网站标题23","2017-7-20",12000.00,"images/pro/23.jpg","case-show.html","网站23介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",4,3,2);

INSERT INTO p_case VALUES(24,"网站标题24","2017-7-20",12000.00,"images/pro/24.jpg","case-show.html","网站24介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",4,3,3);

INSERT INTO p_case VALUES(25,"网站标题25","2017-7-20",12000.00,"images/pro/25.jpg","case-show.html","网站25介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",5,1,1);

INSERT INTO p_case VALUES(26,"网站标题26","2017-7-20",12000.00,"images/pro/26.jpg","case-show.html","网站26介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",5,1,2);

INSERT INTO p_case VALUES(27,"网站标题27","2017-7-20",12000.00,"images/pro/27.jpg","case-show.html","网站27介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",5,2,3);

INSERT INTO p_case VALUES(28,"网站标题32","2017-7-20",12000.00,"images/pro/28.jpg","case-show.html","网站28介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",5,2,1);

INSERT INTO p_case VALUES(29,"网站标题28","2017-7-20",12000.00,"images/pro/29.jpg","case-show.html","网站29介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",5,3,2);

INSERT INTO p_case VALUES(30,"网站标题29","2017-7-20",12000.00,"images/pro/30.jpg","case-show.html","网站30介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",5,3,3);

INSERT INTO p_case VALUES(31,"网站标题30","2017-7-20",12000.00,"images/pro/31.jpg","case-show.html","网站31介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",1,1,1);

INSERT INTO p_case VALUES(32,"网站标题31","2017-7-20",12000.00,"images/pro/32.jpg","case-show.html","网站32介绍呀，我也不知道写什么，就找点字填充一下吧，请大家就当没看到吧，谢谢了呀！",2,3,3);








SET NAMES UTF8;

DROP DATABASE IF EXISTS sc_data;

CREATE DATABASE sc_data CHARSET = UTF8;

USE sc_data;

-- ----------------------------
-- 创建轮播图表 for sz_index_carousel
-- ----------------------------
DROP TABLE IF EXISTS sc_index_carousel;
CREATE TABLE sc_index_carousel (
  cid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128) DEFAULT NULL,
  title VARCHAR(64) DEFAULT NULL,
  chref VARCHAR(128) DEFAULT NULL,
  cbg VARCHAR(16) DEFAULT "transparent"
);

-- -----------------------------------
-- 插入轮播图表数据 of sc_index_carousel
-- -------------------------------------
INSERT INTO sc_index_carousel VALUES ('1', 'images/index/banner1-1.jpg', '365天放心购', 'lookforward.html','#f21a2f');
INSERT INTO sc_index_carousel VALUES ('2', 'images/index/banner1-2.jpg', '小家电3.15秒杀 正品超省', 'lookforward.html','#2757dd');
INSERT INTO sc_index_carousel VALUES ('3', 'images/index/banner1-3.jpg', '空调放心购 全免费安装', 'lookforward.html','#ffb400');
INSERT INTO sc_index_carousel VALUES ('4', 'images/index/banner2-1.jpg', '春季新品7折起', 'lookforward.html','#53c2ef');


-- ----------------------------
-- 创建商品表 for sc_laptop
-- ----------------------------
DROP TABLE IF EXISTS sc_laptop;
CREATE TABLE sc_laptop (
  lid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  fid INT default NULL,
  title VARCHAR(128) default NULL,
  subtitle VARCHAR(128) default NULL,
  price DECIMAL(10,2) default NULL,
  spec VARCHAR(64) default NULL,
  details VARCHAR(1024) default NULL,
  shelf_time BIGINT(20) default NULL,
  sold_count INT(11) default NULL,
  is_onsale TINYINT(1) default NULL
);

-- ----------------------------
-- 插入商品数据 of sc_laptop
-- ----------------------------
INSERT INTO sc_laptop VALUES (
  '1',
  '1',
  '【稀缺货源，限量抢购】HUAWEI/华为Mate 20 极光色 6GB+128GB 麒麟980芯片全面屏徕卡三摄移动联通电信4G手机', 
  '【货源紧张，限量抢购，赠一年碎屏险】麒麟980芯片 超广角三摄 超微距摄影  <a>新品不断，优惠升级</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '4499.00', 
  '亮黑色/mate20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '150123456789', 
  '2968', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '2',
  '1',
  '【稀缺货源，限量抢购】HUAWEI/华为Mate 20 亮黑色 6GB+64GB 麒麟980芯片全面屏徕卡三摄移动联通电信4G手机', 
  '【货源紧张，限量抢购，赠一年碎屏险】麒麟980芯片 超广角三摄 超微距摄影  <a>新品不断，优惠升级</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '3999.00', 
  '亮黑色/mate20 6GB+64GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '150123458158', 
  '3580', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '3',
  '1',
  '【稀缺货源，限量抢购】HUAWEI/华为Mate 20 宝石蓝 6GB+128GB 麒麟980芯片全面屏徕卡三摄移动联通电信4G手机', 
  '【货源紧张，限量抢购，赠一年碎屏险】麒麟980芯片 超广角三摄 超微距摄影  <a>新品不断，优惠升级</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '4499.00', 
  '宝石蓝/mate20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '150025358158', 
  '5204', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '4',
  '1',
  '【稀缺货源，限量抢购】HUAWEI/华为Mate 20 宝石蓝 6GB+64GB 麒麟980芯片全面屏徕卡三摄移动联通电信4G手机', 
  '【货源紧张，限量抢购，赠一年碎屏险】麒麟980芯片 超广角三摄 超微距摄影  <a>新品不断，优惠升级</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '3999.00', 
  '宝石蓝/mate20 6GB+64GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '198240458158', 
  '5264', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '5',
  '1',
  '【稀缺货源，限量抢购】HUAWEI/华为Mate 20 X 幻影银 6GB+128GB 麒麟980芯片全面屏徕卡三摄移动联通电信4G手机', 
  '【货源紧张，抢先加购！】麒麟980芯片 超广角三摄 超微距摄影 7.2英寸全景巨幕屏  <a>新品不断，优惠升级</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '4999.00', 
  '幻影银/mate20X 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '295840458158', 
  '8888', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '6',
  '1',
  '【稀缺货源，限量抢购】HUAWEI/华为Mate 20 极光色 6GB+128GB 麒麟980芯片全面屏徕卡三摄移动联通电信4G手机', 
  '【货源紧张，限量抢购，赠一年碎屏险】麒麟980芯片 超广角三摄 超微距摄影  <a>新品不断，优惠升级</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '3999.00', 
  '极光色/mate20 6GB+64GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480458158', 
  '9999', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '7',
  '1',
  '【稀缺货源，限量抢购】HUAWEI/华为Mate 20 樱粉金 6GB+128GB 麒麟980芯片全面屏徕卡三摄移动联通电信4G手机', 
  '【货源紧张，限量抢购，赠一年碎屏险】麒麟980芯片 超广角三摄 超微距摄影  <a>新品不断，优惠升级</a>', 
  '4999.00', 
  '樱粉金/mate20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '295840458158', 
  '8888', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '8',
  '1',
  '【稀缺货源，限量抢购】HUAWEI/华为Mate 20 翡冷翠 6GB+128GB 麒麟980芯片全面屏徕卡三摄移动联通电信4G手机', 
  '【货源紧张，限量抢购，赠一年碎屏险】麒麟980芯片 超广角三摄 超微距摄影  <a>新品不断，优惠升级</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '4499.00', 
  '翡冷翠/mate20 6GB+64GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480458158', 
  '2058', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '9',
  '2',
  '华为(HUAWEI) 华为nova2s 全网通版 6GB+64GB 曜石黑色 移动联通电信4G手机 华为手机', 
  '【顺丰急速发，限购1台！先下单先发货，发货时间参考详情页通知。】6.0英寸全面屏，前后双摄，裸妆美颜，人脸识别  <a>【推荐选购一年碎屏险服务/碎屏无忧】</a>', 
  '1688.00', 
  '曜石黑/全网通（6GB+64GB）', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480455896', 
  '2002', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '10',
  '2',
  '华为(HUAWEI) 华为nova2s 全网通版 6GB+128GB 银钻灰色 移动联通电信4G手机 华为手机', 
  '【顺丰急速发，限购1台！先下单先发货，发货时间参考详情页通知。】6.0英寸全面屏，前后双摄，裸妆美颜，人脸识别  <a>【推荐选购一年碎屏险服务/碎屏无忧】</a>', 
  '2028.00', 
  '银钻灰/全网通（6GB+128GB）', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480455896', 
  '2002', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '11',
  '2',
  '华为(HUAWEI) 华为nova2s 全网通版 6GB+128GB 浅艾蓝色 移动联通电信4G手机 华为手机', 
  '【现货速发，顺丰配送，限购1台！】6.0英寸全面屏，前后双摄，裸妆美颜，人脸识别  <a>【推荐选购一年碎屏险服务/碎屏无忧】</a>', 
  '1969.00', 
  '浅艾蓝/全网通（6GB+128GB）', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480455896', 
  '2002', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '12',
  '2',
  '华为(HUAWEI) 华为nova2s 全网通版 6GB+128GB 银钻灰色 移动联通电信4G手机 华为手机', 
  '【顺丰急速发，限购1台！先下单先发货，发货时间参考详情页通知。】6.0英寸全面屏，前后双摄，裸妆美颜，人脸识别  <a>【推荐选购一年碎屏险服务/碎屏无忧】</a>', 
  '2028.00', 
  '银钻灰/全网通（6GB+128GB）', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480455896', 
  '2002', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '13',
  '2',
  '华为(HUAWEI) 华为nova2s 全网通版 6GB+128GB 樱粉金色 移动联通电信4G手机 华为手机', 
  '【现货速发，顺丰配送，限购1台！】6.0英寸全面屏，前后双摄，裸妆美颜，人脸识别  <a>【推荐选购一年碎屏险服务/碎屏无忧】</a>', 
  '2038.00', 
  '樱粉金/全网通（6GB+128GB）', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480455896', 
  '1586', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '14',
  '2',
  '华为(HUAWEI) 华为nova2s 全网通版 6GB+128GB 相思红色 移动联通电信4G手机 华为手机', 
  '【现货速发，顺丰配送，限购1台！】6.0英寸全面屏，前后双摄，裸妆美颜，人脸识别  <a>【推荐选购一年碎屏险服务/碎屏无忧】</a>', 
  '2038.00', 
  '樱粉金/全网通（6GB+128GB）', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480451566', 
  '4220', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '15',
  '3',
  '【下单享6期免息】HUAWEI/华为P20 6GB+128GB亮黑色移动联通电信4G全面屏手机', 
  '【限量抢券减100，到手价3288】新一代徕卡双镜头 麒麟970智慧芯片！  <a>双十一华为会场</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '3888.00', 
  '亮黑色/P20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480456982', 
  '5602', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '16',
  '3',
  '【下单享6期免息】HUAWEI/华为P20 6GB+128GB典藏 雅黑色移动联通电信4G全面屏手机', 
  '【限量抢券减100，到手价3288】新一代徕卡双镜头 麒麟970智慧芯片！  <a>双十一华为会场</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '4888.00', 
  '典藏 雅黑色/P20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480456582', 
  '6602', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '17',
  '3',
  '【到手价4888】HUAWEI/华为P20 Pro 6GB+128GB宝石蓝移动联通电信4G全面屏手机', 
  '【限时抢券减100，享6期免息，到手价6188】4000万像素徕卡三摄！一秒记忆960个定格  <a>双十一华为会场</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '4888.00', 
  '宝石蓝/P20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480620122', 
  '5200', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '18',
  '3',
  '【到手价4888】HUAWEI/华为P20 Pro 6GB+128GB极光色移动联通电信4G全面屏手机', 
  '【限时抢券减100，享6期免息，到手价6188】4000万像素徕卡三摄！一秒记忆960个定格  <a>双十一华为会场</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '4888.00', 
  '极光色/P20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480620022', 
  '2053', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '19',
  '3',
  '【到手价4888】HUAWEI/华为P20Pro 极光闪蝶色 6G+128G移动联通电信4G全面屏手机', 
  '【限时抢券减100，享6期免息，到手价6188】4000万像素徕卡三摄！一秒记忆960个定格  <a>双十一华为会场</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '4888.00', 
  '极光闪蝶色/P20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480620000', 
  '2520', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '20',
  '3',
  '【到手价4888】HUAWEI/华为P20Pro 樱粉金 6G+128G移动联通电信4G全面屏手机', 
  '【限时抢券减100，享6期免息，到手价6188】4000万像素徕卡三摄！一秒记忆960个定格  <a>双十一华为会场</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '4888.00', 
  '樱粉金/P20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480612056', 
  '5960', 
  '0'
);
INSERT INTO sc_laptop VALUES (
  '21',
  '3',
  '【下单享6期免息】HUAWEI/华为P20 珠光贝母色 6G+128G移动联通电信4G全面屏手机', 
  '【限时抢券减100，享6期免息，到手价3788】新一代徕卡双镜头 麒麟970智慧芯片  <a>双十一华为会场</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '3888.00', 
  '珠光贝母色/P20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480603256', 
  '1025', 
  '1'
);
INSERT INTO sc_laptop VALUES (
  '22',
  '3',
  '【下单享6期免息】HUAWEI/华为P20 香槟金色 6G+128G移动联通电信4G全面屏手机', 
  '【限时抢券减100，享6期免息，到手价3788】新一代徕卡双镜头 麒麟970智慧芯片  <a>双十一华为会场</a>
19.9元40GB流量，100M包年电信宽带低至599元<a>点击抢购</a>。', 
  '3888.00', 
  '香槟金/P20 6GB+128GB', 
  '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 
  '260480603023', 
  '6025', 
  '0'
);
-- ----------------------------
-- 创建分类表 for sc_laptop_family
-- ----------------------------
DROP TABLE IF EXISTS sc_laptop_family;
CREATE TABLE sc_laptop_family (
  fid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32) DEFAULT NULL,
  top_pic VARCHAR(1024) DEFAULT NULL
);
-- ----------------------------
-- Records of sc_laptop_family
-- ----------------------------
INSERT INTO sc_laptop_family VALUES ('1', '华为Mate20手机','images/product_details/top1.png');
INSERT INTO sc_laptop_family VALUES ('2', '华为nova2s手机','images/product_details/top1.png');
INSERT INTO sc_laptop_family VALUES ('3', '华为P20手机','images/product_details/top1.png');



-- ----------------------------
-- Table structure for `sc_user`
-- ----------------------------
DROP TABLE IF EXISTS sc_user;
CREATE TABLE sc_user (
  uid int NOT NULL PRIMARY KEY auto_increment,
  uname varchar(32) default NULL,
  upwd varchar(32) default NULL,
  phone varchar(16) default NULL,
  avatar varchar(128) default 'image/users/default.jpg',
  user_name varchar(32) default NULL,
  gender int(11) default NULL
);

-- ----------------------------
-- Records of xz_user
-- ----------------------------
INSERT INTO sc_user VALUES ('1', 'dingding', '123456', '13511011000', null, '丁春秋', '0');
INSERT INTO sc_user VALUES ('2', 'dangdang', '123456', '13501234568', null, '当当喵', '1');
INSERT INTO sc_user VALUES ('3', 'doudou', '123456', '13501234569', null, '窦志强', '1');
INSERT INTO sc_user VALUES ('4', 'yaya', '123456', '13501234560', null, '秦小雅', '0');
INSERT INTO sc_user VALUES ('5', '1111', '111111', '18357100796', null, null, null);


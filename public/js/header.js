window.onload=function(){
	document.getElementsByTagName('header')[0].innerHTML=
		'<div class="welcome" id="HAS_LOGINED"><span></span>：欢迎登录 <a href="" style="cursor:pointer;">退出</a></div><nav><img src="image/logo2.png" class="logo"/> <a class="nav_moer"  onclick="show(phone_nav)"><img src="image/nav_moer.png"></a><ul><li><a href="index.html">首页<br><span>Home</span></a></li><li><a href="about.html" target="_blank">关于我们<br><span>About Us</span></a></li><li><a href="case.html" target="_blank">案例展示<br><span>Case Study</span></a></li><li><a href="pro.html" target="_blank">产品介绍<br><span>Product </span></a></li><li><a href="contact.html" target="_blank">联系我们<br><span>Contact Us</span></a></li></ul></nav><nav id="phone_nav" style="display: none;"><div> <a href="index.html">首页</a> <a href="about.html">关于我们</a> <a href="case.html">案例展示</a> <a href="pro.html">产品介绍</a> <a href="contact.html">联系我们</a> </div></nav>'
	
	document.getElementsByTagName('footer')[0].innerHTML='<img src="image/logo2.png" /><p>Copyright © 2018.Company name All rights reserved.</p>'

	
	
}


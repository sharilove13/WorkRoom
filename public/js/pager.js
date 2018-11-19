function toTop_an(BK){
	if(document.documentElement&&document.documentElement.scrollTop)
	{var toTop=document.documentElement.scrollTop;}
	else if(document.body){toTop=document.body.scrollTop;}   //声明toTop，获取滚动条高度
		
		var win_H=outerHeight   //获取窗口高度
		var BK_H=BK.outerHeight()  //元素的高度
		var BK_T=BK.offset().top //元素距顶的高度
		
	//var An_H=parseInt(BK.offset().top-win_H*0.6)//希望触发动画的高度
	//注意触发的动画，不要包含正常显示的样式

		if(toTop>BK_T+BK_H-80 || toTop<BK_T-win_H*0.8)
			{
				BK.removeClass("onscroll_animation")
			}else
			{
				BK.addClass("onscroll_animation")
			}
}
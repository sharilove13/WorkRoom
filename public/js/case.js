$(function(){
	$.ajax({
		url:"http://localhost:3000/case/case-show",
		type:"get",
		dataType:"json",//ajax可自动将json转为obj
		success:function(res){	
			//console.log(res);
				
			var html=`<a href="http://localhost:4000/index.html" target="_blank">
						<div><img src="./images/pro/pro0.png"></div>
						<div>
							<h1>苏宁易购商城</h1>
							<h2>2018-11-1<span>￥15000</span></h2>
							<p>这是一个仿制苏宁易购的商城样式</p>
						</div>
					</a>`;
			for(var i=0;i<res.length;i++){
				var {p_name,over_time,s_price,img_src,p_href,p_content}=res[i];
				html+=` <a href="${p_href}" target="_blank">
						<div><img src="${img_src}"></div>
						<div>
							<h1>${p_name}</h1>
							<h2>${over_time}<span>￥${s_price}</span></h2>
							<p>${p_content}</p>
						</div>
					</a>`;//删除html中57~65行
			}
			var $divCard=$("#pro>.products");
			$divCard.html(html);
			var fenlei_0 = res;
			var fenlei_1=[]  //商城型分类的案例
			var fenlei_2=[]  //展示型分类的案例
			var fenlei_3=[]  //平台型分类的案例
			var fenlei_4=[]  //社交型分类的案例
			var fenlei_5=[]  //app分类的案例
			for(var item of res){
				if(item.p_id==1){
					fenlei_1.push(item);
				}else if(item.p_id==2){
					fenlei_2.push(item);
				}else if(item.p_id==3){
					fenlei_3.push(item);
				}else if(item.p_id==4){
					fenlei_4.push(item);
				}else if(item.p_id==5){
					fenlei_5.push(item);
				}
			}
			var fenlei_all = [fenlei_0,fenlei_1,fenlei_2,fenlei_3,fenlei_4,fenlei_5];
			function dh(num,arr){	
				var nav=document.getElementById("pro_nav");//获取id为nav 的元素
				nav=nav.getElementsByTagName("a");//获取nav元素下子元素<li></li>的数组，
				
				$divCard.html("");				
				
				var n=nav.length;//获取ength值（个数）
				//console.log(nav.length);
				for(var i=0;i<n;i++){
					//pro[i].style.display =  "none";  
					nav[i].className="";
				}
				//pro[num].style.display =  ""; 
				nav[num].className="active";
				var html="";
				for(var i =0;i<arr.length;i++){
					html += `<a href="${arr[i].p_href}">
					<div><img src="${arr[i].img_src}"></div>
					<div>
						<h1>${arr[i].p_name}</h1>
						<h2>${arr[i].over_time}<span>￥:${arr[i].s_price}</span></h2>
						<p>${arr[i].p_content}</p>
					</div>
				</a>`;
				}
				$divCard.html(html);
				console.log("hello")
			}
			$("#pro_nav").on("click",function(e){
				e.preventDefault();
				if(e.target.nodeName=="A"){
					var $a=$(e.target);
					for(i=0;i<$("#pro_nav>li>a").length;i++){
						if($a.parent().prevAll().length === i){
							dh(i,fenlei_all[i]);
						}
					}
				}
			})
		}
	});
})
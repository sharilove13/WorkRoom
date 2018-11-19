// JavaScript Document
function show(i){
if (i.style.display == "none") {
 i.style.display = "";
}else{
 i.style.display = "none";
}
}


window.onscroll=function(){  //绑定滚动条动作事件
	if(document.documentElement&&document.documentElement.scrollTop)
	{toTop=document.documentElement.scrollTop;}
	else if(document.body){toTop=document.body.scrollTop;}   //声明toTop，获理滚动条高度
	//var show=document.body.getElementsByClassName("PRO_2_k1")[0];
	var header=document.getElementsByTagName("header")[0];
	//console.log(show)
	//console.log(toTop)
	
	if(toTop>200){
		header.style.background="rgba(42,52,72,0.8)"
		header.className="header"
	}else{
		header.style.background="rgba(42,52,72,1)"
		header.className=""
	}
	
}


$(function(){
	// 登录，将用户名和密码存入session
	$("#LOG_BTN").on("click",function(){
		var phone=$("#LOG_UPHONE").val();
		var pwd=$("#LOG_UPWD").val();
		(async function(){
			var res = await $.ajax({
				url:"http://localhost:3000/users/login",
				type:"post",
				data:{phone,pwd},
				dataType:"json"
			})
			if(res.ok==0){
				alert(res.msg);
			}else{
				alert("登录成功");
				if(location.search.startsWith("?back=")){
					var url=location.search.slice(6);
				}else{
				var url="index.html";
				}
				location.href=url;
			}
		})()
	   
		
	})


})


$(function(){
	/*登录 */
	$.ajax({
		url:"",
		type:"get",
		success:function(res){	
			$.ajax({
				url:"http://localhost:3000/users/islogin",
				type:"get",
				dataType:"json",
				success:function(res){
					//console.log(res);
					if(res.ok==0){
						$("#HAS_LOGINED").hide();
						$("#LOG_BOX").show();
						$("#HAS_LOGINED").children(":first-child").html("");
					}else{
						$("#HAS_LOGINED").children(":first-child").html(res.phone);
						$("#HAS_LOGINED").show();
						$("#LOG_BOX").hide();
					}
				}
			})



			/*注销功能 */
			$("#HAS_LOGINED>a").click(function(e){
				e.preventDefault();
				$.ajax({
					url:"http://localhost:3000/users/signout",
					type:"get",
					success:function(){
						location.reload();
					}
				})
			})
		}
	})
})
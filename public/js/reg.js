$(function(){
    $("#REG_PHONE").on("blur",function(){
		var phone = $("#REG_PHONE").val();
		console.log(1);
		$.ajax({
			url:"http://localhost:3000/users/isreg",
			type:"post",
			data:{phone},
			dataType:"json",
			success:function(res){
				console.log(res);
				if(res.ok==0){
					alert("用户名已存在")
				}else{
					alert("用户名可用")
				}
			}
		})
	})
    $("#REG_BTN").on("click",function(){
        var phone = $("#REG_PHONE").val();
        var pwd = $("#REG_PWD").val()
        var email = $("#REG_EMAIL").val()
        //console.log(uname,upwd,email)
        $.ajax({
            url:"http://localhost:3000/users/reg",
            type:"post",
            data:{phone,pwd,email},
            dataType:"json",
            success:function(res){
                //console.log(res);
                if(res.ok==1){
                    alert("注册成功,跳转登录页面");
                    location.href="index.html";
                }
            }
        })
    })

});
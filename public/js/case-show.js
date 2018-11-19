$(function(){
    if(location.search.indexOf("?pid=")!=-1){
        var pid = location.search.split("=")[1];
        //console.log(lid);
        $.ajax({
            url:"http://localhost:3000/casemain/data",
            type:"get",
            data:{pid},
            dataType:"json",
            success: function(res) {
                console.log(res);
                var html=`<img src="${res.img_src}" alt="">`;
                $("#caseShowImg").html(html);
                console.log("1");
            }
        })
    }
})
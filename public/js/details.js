/*详情页事件 */
$(function(){
    if(location.search.indexOf("?ca_id=")!=-1){
        var ca_id = location.search.split("=")[1];
        //console.log(lid);
        $.ajax({
            url:"http://localhost:3000/details/getdetails",
            type:"get",
            data:{ca_id},
            dataType:"json",
            success: function(res) {
                console.log(res);
                var {product,title,specs} = res;
                $("#DETAILS_TITLE").html(title.classify+"网站解决方案");
                $("#DETAILS_PRICE>h3").html("￥"+product.r_price.toFixed(2));
               
                var html="";
                for(var sp of specs){
                    html+=`<a href="details.html?ca_id=${sp.ca_id}" class="my_format text-muted">${sp.classify_a}</a>`;
                }
                
                $("#DETAILS_SPEC").html(html);
            }
        })
    }
})
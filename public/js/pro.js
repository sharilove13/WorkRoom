var i1=$(".pro_info .i1")
var $href=[
	"details.html?ca_id=1",
	"details.html?ca_id=2",
	"details.html?ca_id=3",
	"details.html?ca_id=4",
	"details.html?ca_id=5",
	"details.html?ca_id=6",
	"details.html?ca_id=7",
	"details.html?ca_id=8",
	"details.html?ca_id=9",
	"details.html?ca_id=10",
	"details.html?ca_id=11",
	"details.html?ca_id=12",
	"details.html?ca_id=13"

]
var $price=[6000,5000,6000,5000,4000,6000,8000,8000,8000,8000,9000,10000,"面议"]

//console.log(i1)
i1.click(function(e){
	e.preventDefault()//取消默认行为
	var i=$('.i1').index(this)//获取.i1的序列值（数组下标值，第几个.i1）
	var p=$(this).parent().children("div").children("i").children("span")  //获取显示价格的元素
	$(".price").html(" ")  //价格显示为空
	p.html($price[i])  //显示价格

	i1.removeClass("i1_in")//点击删除所有i1的样式
	$(this).addClass("i1_in")//点击增加样式，选中购买的产品类型



	
	//console.log(i)
	var an=$(this).parent().children("div").children("input")
	an.click(function(){open($href[i],"_self")})
})



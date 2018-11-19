const express=require("express")
const router=express.Router()
const pool=require("../pool.js")




router.get("/getdetails",(req,res)=>{
    var ca_id = req.query.ca_id;
    //console.log(lid);
    var output={product:{},title:{},specs:[]};
    var sql1 = "select * from pro_classify_a where ca_id= ? ";  //插右侧信息
    var sql2 = "select classify from pro_classify where cid=(select cid from pro_classify_a where ca_id=?)";
    var sql3 = "select ca_id,classify_a from pro_classify_a where cid=(select cid from pro_classify_a where ca_id=?)";
    // var sql2 = "select * from case where pid=?" //根据id查图片
    // var sql3 = "select lid,spec from pro_classify_a where family_id =(select family_id from sc_pro_classify_a where lid=?)";

    Promise.all([
        //查询商品
        new Promise(function(open){
            pool.query(sql1,[ca_id],(err,result)=>{
                if(err) console.log(err)
                //console.log(result);
                output.product =result[0];
                open();
            })
        }),
        new Promise(function(open){
            pool.query(sql2,[ca_id],(err,result)=>{
                if(err) console.log(err);
                //console.log(result);
                output.title=result[0];
                open()
            })
        }),
        new Promise(function(open){
            pool.query(sql3,[ca_id],(err,result)=>{
                if(err) console.log(err)
                //console.log(result);
                output.specs = result;
                open();
            })
        })
    ]).then(function(){
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            "Access-Control-Allow-Origin":'*'
        })
        res.write(JSON.stringify(output));
        res.end();
    })
})




module.exports= router;

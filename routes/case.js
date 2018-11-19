const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.get("/case-show",(req,res)=>{
  var pid=req.query.pid;
	var sql1="SELECT * FROM p_case order by pid";
	pool.query(sql1,[],(err,result)=>{
	  if(err) console.log(err);
    //res.send(result);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.end();
  })
})
module.exports=router
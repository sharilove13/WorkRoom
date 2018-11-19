const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/data",(req,res)=>{
  var pid=req.query.pid;
	var sql="SELECT img_src FROM p_case where pid=? ";
	pool.query(sql,[pid],(err,result)=>{
	  if(err) console.log(err);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result[0]));
    res.end();
  })
})
module.exports=router
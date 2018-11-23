const express=require('express');
//引入mysql连接池
const pool=require('../pool.js');
//创建路由器
var router=express.Router();
//在路由器下添加路由
//1.用户注册
router.post('/register',(req,res)=>{
  //浏览器发送的数据
  //console.log(req.body);
  var obj=req.body;
  //验证表单提交的内容是否为空
  //验证用户名为空
  var $uname=obj.uname;
  if($uname==''){
    res.send({code:401,msg:'uname required'});
	return;//终止函数中的代码继续执行
  }
  //验证密码为空
  var $upwd=obj.upwd;
  if($upwd==''){
    res.send({code:402,msg:'upwd required'});
    return;
  }
  //验证邮箱和电话
  var $email=obj.email;
  if($email==''){
    res.send({code:404,msg:'email required'});
	return;
  }
  var $phone=obj.phone;
  if($phone==''){
    res.send({code:403,msg:'phone required'});
	return;
  }
  //以上验证都通过了，执行插入数据库操作
  var sql='INSERT INTO team_user VALUES(NULL,?,?,?,?,NULL,NULL,NULL)';
  pool.query(sql,[$uname,$upwd,$email,$phone],(err,result)=>{
    if(err) throw err;
    //如何判断插入成功————affectedRows
	if(result.affectedRows>0){
	  res.send({code:200,msg:'reg success'});
	}else{
	  res.send({code:301,msg:'reg error'})
	}
  }); 
});
//2.删除用户
router.get('/delete',(req,res)=>{
	var obj=req.query;
	//console.log(obj);
	var $uid =obj.uid;
	if ($uid==''){
		res.send({code:401,msg:'uid required'});
		return;
	}
	var sql='DELETE FROM team_user WHERE uid=?';
	pool.query(sql,[$uid],(err,result)=>{
		if(err) throw err;
		//console.log(result);
		if(result. affectedRows>0){
			res.send({code:200,msg:'delete  success'})
		}else{
				res.send({code:301,msg:'delete err'});
			}
	});
});
//3.用户登录
router.post('/login',(req,res)=>{
	var obj = req.body;
	var $uname=obj.uname;
	if ($uname==''){
		res.send({code:401,msg:'uname required'});
			return;
	}
	var $upwd=obj.upwd
	if ($upwd==''){
		res.send({code:401,msg:'upwd required'})
			return;
	}
	var sql = 'SELECT * FROM team_user WHERE  uname=?AND upwd=? ';
	pool.query(sql,[$uname,$upwd],(err,result)=>{
		if (err){
			throw err;
		}	
		//console.log(result);
		if(result. length>0){
			res.send({code:200,msg:'login  success'})
		}else{
				res.send({code:301,msg:'login error'});
			}
	});
});
router.get('/detail',(req,res)=>{
	var obj=req.query;
	var $uid = obj.uid;
	if (!$uid)
	{
		res.send({code:401,msg:'uid required'});
		return;
	}
	var sql ='SELECT * FROM team_user WHERE uid =?';
	pool.query(sql,[$uid],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result[0]);
		}else{
			res.send({code:301,msg:'select error'});
		}
	});
});
router.post('/update',(req,res)=>{
	var obj = req.body;
	var $uid=obj.uid;
	if(!$uid){
	res.send({code:401,msg:'uid required'});
	return;
	}
	var $email = obj.email;
	if(!$email){
	res.send({code:402,msg:'email required'});
	return;
	}
	var $phone=obj.phone;
	if(!$phone){
		res.send({code:403,msg:'phone required'});
		return;
	}
	var $gender=obj.gender;
	if(!$gender){
	res.send({code:404,msg:'gender required'});
	return;
	}
	var $user_name=obj.user_name;
	if(!$user_name){
	res.send({code:405,msg:'user_name required'});
	return;
	}
	var sql='UPDATE team_user SET email=?,phone=?,gender=?,user_name=? WHERE uid=?';
	pool.query(sql,[$email,$phone,$gender,$user_name,$uid],(err,result)=>{
	if(err) throw err;
	if (result. affectedRows>0){
		res.send({code:200,msg:'update success'});
	}	else{
		res.send({code:301,msg:'update error'});
		}
	});
});
router.get('/list',(req,res)=>{
  var obj =req.query;
  var $size=parseInt(obj.size);
	 if (!$size){
    	$size=2;
	 }
  var $page=parseInt(obj.page);
  if (!$page){
	  $page=1;
  }
  var sql='SELECT  *  FROM  team_user LIMIT ?,?';
  pool.query(sql,[($page-1)*$size,$page],(err,result)=>{
		if(err) throw err;
		res.send(result);
  });
});
//路由器导出
module.exports=router;
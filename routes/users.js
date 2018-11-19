const express=require("express")
const router=express.Router()
const pool=require("../pool.js")


//登录路由
router.post("/login",(req,res)=>{
    var phone = req.body.phone;
    var pwd = req.body.pwd;
    var sql="select * from team_user where phone=? and pwd=?";
    pool.query(sql,[phone,pwd],(err,result)=>{
        if(err) console.log(err);
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
        });
        if(result.length>0){
            var user=result[0]
            req.session.uid=user.uid;
        //    console.log(req.session);
            res.write(JSON.stringify({
                ok:1
            }))
        }else{
            res.write(JSON.stringify({
                ok:0,
                msg:"用户名或者密码错误"
            }))
        }
        res.end();
    })
})

//判断用户是否登录
router.get("/islogin",(req,res)=>{
    res.writeHead(200);
    if(req.session.uid===undefined){
        res.write(JSON.stringify({
            ok:0
        }))
        res.end()
    }else{
        var uid = req.session.uid;
        var sql = "select * from team_user where uid=?";
        pool.query(sql,[uid],(err,result)=>{
            if(err) console.log(err);
            var user = result[0];
            res.write(JSON.stringify({
                ok:1,
                phone:user.phone
            }))
            res.end()
        })
    }
})

//注销用户
router.get("/signout",(req,res)=>{
    req.session.uid=undefined;
    res.end();
})

/*用户注册 */
router.post("/isreg",(req,res)=>{
    var phone = req.body.phone;
    var pwd = req.body.pwd;
    var email = req.body.email;
    var sql="select * from team_user where phone=?";
    pool.query(sql,[phone],(err,result)=>{
        if(err) console.log(err);
        if(result.length>0){
            res.writeHead(200,{
                "Content-Type":"application/json charset=utf-8"
            });
            res.write(JSON.stringify({
                ok:0,
                msg:"用户名已经存在"
            }))
            res.end();
        }
    })
})



/*用户注册 */
router.post("/reg",(req,res)=>{
    var phone = req.body.phone;
    var pwd = req.body.pwd;
    var email = req.body.email;
    var sql ="INSERT INTO team_user (phone,pwd,email) VALUES (?,?,?)";
    pool.query(sql,[phone,pwd,email],(err,result)=>{
        if(err) console.log(err);
        //console.log(result);
        res.writeHead(200,{
            "Content-Type":"application/json charset=utf-8",
            
        });
        if(result.affectedRows>0){
            res.write(JSON.stringify({
                ok:1,
                msg:"注册成功"
            }))
            res.end()
        }
    })
})














module.exports = router;
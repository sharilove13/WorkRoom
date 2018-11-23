//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');

const session=require('express-session');
/*引入路由模块*/
const users=require("./routes/users");
const case1=require("./routes/case");
const details=require("./routes/details");
const casemain = require("./routes/case-show");
const user=require("./routes/user");

var app = express();
var server = app.listen(3000);

// 解决session跨域问题
const cors = require("cors");
app.use(cors({
  origin:["http://127.0.0.1:3000","http://localhost:3000"],
  credentials:true
}));

//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));

// session存储
app.use(session({
  secret: '128位随机字符串',
  resave: false,
  saveUninitialized: true
}));

/*使用路由器来管理路由*/
app.use("/users",users);
app.use("/details",details);
app.use("/case",case1);
app.use("/casemain",casemain);
app.use("/admin",user);
//3:加载四个第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");

//4:配置数据库连接池:基本效率高保证
var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   database:"dm",
   port:3306,
   connectionLimit:20
})
//5:创建web服务器
var server = express();
//6:配置跨域  允许程序列表
//  http://127.0.0.1:8080
//  http://localhost:8080
server.use(cors({
   origin:["http://127.0.0.1:8080","http://localhost:8080"],
   credentials:true  //每次请求验证
}))
//7:配置session环境
server.use(session({
   secret:"128位安全字符串",
   resave:true,          //请求更新数据 
   saveUninitialized:true//保存初始数据
}));
//8:配置静态目录 pubic
//8.1:创建public
server.use(express.static("public"))
//9:启动监听端口  3000
server.listen(3000);

//******************调取数据到首页************************
server.get("/play",(req,res)=>{
  var playtype=req.query.type;
  var areaid=req.query.areaId;
  var sql="SELECT * FROM play WHERE type=? AND areaid=? LIMIT 0,7";
  pool.query(sql,[playtype, areaid],(err,result)=>{
    if(err) throw err;
    res.send({data:result});
  })
})

//******************调用首页轮播图************************
server.get("/banner",(req,res)=>{
  var areaid=req.query.areaid;
  var sql="SELECT * FROM banner WHERE areaid=?";
  pool.query(sql,[areaid],(err,result)=>{
    if(err) throw err;
    res.send({data:result});
  })
})

//******************details右边取随机数3条************************
// server.get("/play",(req,res)=>{
//   var playtype=req.query.type;
//   var sql="SELECT *FROM play INNER JOIN (SELECT (RAND() * (SELECT MAX(ID) FROM play)) AS ID) AS t ON play.ID>= t.IDWHERE (Products.HasImages=1) ORDER BY Products.ID ASC LIMIT 3";
//   pool.query(sql,[playtype],(err,result)=>{
//     if(err) throw err;
//     res.send({data:result});
//   })
// })

//****************************用户登录*********************************
server.get("/user",(req,res)=>{
  var phone=req.query.username;
  var pwd=req.query.password;
  console.log(req);
  var sql="SELECT id FROM user WHERE phone=? AND pwd=?";
  pool.query(sql,[phone,pwd],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      res.send({code:-1,msg:"手机号或密码有误"});
    }else{
      var id=result[0].id;
      req.session.id=id;
      res.send({code:1,msg:"登录成功"});
    }
  })
});
// **************************验证用户手机号是否已注册*************************
server.get("/reg/phone",(req,res)=>{
  var phone=req.query.phone;
  var sql="SELECT * FROM user WHERE phone=?";
  pool.query(sql,[phone],(err,result)=>{
    if(result.length>0){
      res.send({code:1,msg:'该手机号已被注册'})
    }else{
      res.send({code:0,msg:'该手机号可以使用'})
    }
  })
});
//************************用户注册*******************************
server.get("/reg",(req,res)=>{
  var phone=req.query.phone;
  var pwd=req.query.password;
  var sql="INSERT INTO user(phone, pwd) value(?, ?)";
  pool.query(sql,[phone,pwd],(err,result)=>{
    if(err) throw err;
    // 如果返回1，说明插入了一条数据，返回0，没有数据变化，就说明没有插入数据，就没有注册成功
    if(result.affectedRows=="1"){
      res.send({code:1,msg:"注册成功"})
    }else{
      res.send({code:0,msg:"注册失败"})
    }
  })
})
//************************详情页传参****************************
server.get("/play/id",(req,res)=>{
  var id=req.query.id;
  var sql="SELECT * FROM play LEFT JOIN prices ON play.id = prices.playid WHERE play.id = ?;";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    res.send({data:result});
  })
})
//************************购物车传参****************************
server.get("/prices/pid",(req,res)=>{
  var pid=req.query.pid;
  var sql="SELECT * FROM play LEFT JOIN prices ON play.id=prices.playid WHERE prices.pid=?;";
  pool.query(sql,[pid],(err,result)=>{
    if(err) throw err;
    res.send({data:result});
  })
})
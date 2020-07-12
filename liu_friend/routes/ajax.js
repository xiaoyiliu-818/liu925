const express=require('express');
//引入连接池对象
const pool=require('../pool.js');
//创建路由器对象
var router=express.Router();
//添加路由
//1.ajax测试
router.get("/demo1",function(req,res){
	console.log("请求成功！");
	res.send("我的第一个ajax程序");
})
//2.http的get登录
router.get("/login",(req,res)=>{
	//获取用户名和密码
	var $uname=req.query.uname;
	var $upwd=req.query.upwd;
	//非空验证
	if (!$uname){
		res.send("用户名为空");
		return;
	}
	if (!$upwd){
		res.send("用户密码为空");
		return;
	}
	//res.send($uname+"---"+$upwd);
	//查询数据库
	var sql="select * from xz_user where uname=? and upwd=?";
	pool.query(sql,[$uname,$upwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
		res.send("1");//约定，查询成功1
		}else{
		res.send("0");
		}
	});
});
//3.http的get登录
router.get("/login_restful/:uname&:upwd",function(req,res){
//获取用户名和密码
var $uname=req.params.uname;
var $upwd=req.params.upwd;
//非空验证

//查询数据库
var sql="select * from xz_user where uname=? and upwd=?";
	pool.query(sql,[$uname,$upwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
});

//4.http-post登录
router.post("/login_post",function(req,res){
	var $uname=req.body.uname;
	var $upwd=req.body.upwd;
	if(!$uname){res.send("用户名为空");return;}
	if(!$upwd){res.send("用户密码为空");return;}
	var sql="select * from xz_user where uname=? and upwd=?";
	pool.query(sql,[$uname,$upwd],function(err,result){
		if(result.length>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
});

//5.http_post登录
router.post("/login_post",function(req,res){
//获取用户名和密码
	var $uname=req.body.uname;
	var $upwd=req.body.upwd;
//非空验证
	if(!$uname){res.send("用户名为空");return;}
	if(!$upwd){res.send("用户密码为空");return;}
//查询数据库
	var sql="select * from xz_user where uname=? and upwd=?";
	pool.query(sql,[$uname,$upwd],function(err,result){
		if(result.length>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
});

//6.查询所有用户
router.get("/getall",function(req,res){
	var sql="select * from xz_user";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		console.log(result);
		console.log(typeof(result));
		res.send(result);
	})
});
//导出路由器对象
module.exports=router;
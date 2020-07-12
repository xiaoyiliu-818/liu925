const express=require('express');
//引入连接池对象
const pool=require('../pool.js');
//创建路由器对象
var router=express.Router();


//添加路由

//1.注册路由
router.post('/reg',function(req,res){
	//1.1获取数据
	var obj=req.body;
	//1.2验证数据是否为空
	if (!obj.upwd){
		res.send({code:401,msg:'upwd required'});
		return;
	} else if (!obj.phone){
		res.send({code:402,msg:'phone required'});
		return;
	}
	//1.3执行SQL语句
	pool.query('select * from fd_user where phone = ?',[obj.phone],function(err,result){
		if (err) throw err;
		//console.log(result);
		//插入成功
		if (result.length == 0){
			//1.4执行SQL语句
			pool.query('INSERT INTO fd_user SET ?',[obj],function(err,result){
				if (err) throw err;
				//console.log(result);
				//插入成功
				res.send({code:200,msg:'register suc'});
			});
		} else {
			res.send({code:403,msg:'手机号已注册'});
			return;
		}
		return;
	});
	
});

//2.登陆路由
router.post('/login',function(req,res){
	//2.1获取数据
	var obj=req.body;
	//2.2验证数据是否为空
	if (!obj.phone){
		res.send({code:401,msg:'phone required'});
		return;
	}else if (!obj.upwd){
		res.send({code:402,msg:'upwd required'});
		return;
	}
	//2.3执行SQL语句
	pool.query('SELECT * FROM fd_user WHERE phone=? AND upwd=?',[obj.phone,obj.upwd],function(err,result){
		if (err) throw err;
		//console.log(result);
		if (result.length>0){//查询到了
			res.send({code:200,msg:'login suc'});
		}else{//没有查询到
			res.send({code:301,msg:'phone or upwd err'});
		}
	});
});

//导出路由器对象
module.exports=router;
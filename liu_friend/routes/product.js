const express=require('express');
//引入连接池对象
const pool=require('../pool.js');
//创建路由器对象
var router=express.Router();


//添加路由

//1.商品列表路由
router.get('/list',function(req,res){
	//1.1获取数据
	var obj=req.query;
	//1.2验证数据是否为空
	//如果页码为空,设置默认值为1
	//如果大小为空,设置默认值为2
	if (!obj.pno) obj.pno=1;
	if (!obj.size) obj.size=4;
	//1.3把输入的页码和大小转为数值型(parseInt)
	var pno=parseInt(obj.pno);
	var size=parseInt(obj.size);
	//1.4计算start开始查询的值
	start=(pno-1)*size;
	//1.5执行SQL语句
	pool.query('SELECT * FROM fd_shop LIMIT ?,?',[start,size],function(err,result){
		if (err) throw err;
		res.send(result);
	});
});

//2.商品详情路由
/*router.get('/detail',function(req,res){
	//2.1获取数据
	var obj=req.query;
	//2.2验证数据是否为空
	if (!obj.lid){
		res.send({code:401,msg:'uname required'});
		return;
	}
	//2.3执行SQL语句
	pool.query('SELECT * FROM xz_laptop WHERE lid=?',[obj.lid],function(err,result){
		if (err) throw err;
		//console.log(result);
		if (result.length>0) {
			res.send( result[0] );
		}else{
			res.send({code:301,msg:'not found'});
		}
	});
});

//3.商品添加路由
router.post('/reg',function(req,res){
	//1.1获取数据
	var obj=req.body;
	console.log(obj);
	//1.2验证数据是否为空
	for (var key in obj){
		i++;
		//obj[key] 属性值
		if (!obj[key]){
			res.send({code:i,msg:key+' required'});
			return;
		}
	}
	//1.3执行SQL语句
	pool.query('INSERT INTO xz_laptop SET ?',[obj],function(err,result){
		if (err) throw err;
		//console.log(result);
		//插入成功
		res.send({code:200,msg:'register suc'});
	});
});

//4.商品修改路由
router.get('/update',function(req,res){
	//3.1获取数据
	var obj=req.query;
	//3.2验证数据是否为空
	//遍历对象,获取每个属性值,如果为空,属性名是必须的
	var i=400;
	for (var key in obj){
		i++;
		//obj[key] 属性值
		if (!obj[key]){
			res.send({code:i,msg:key+' required'});
			return;
		}
	}
	//3.3执行SQL语句
	pool.query('UPDATE xz_user SET ? WHERE uid=?',[obj,obj.uid],function(err,result){
		if (err) throw err;
		//判断是否修改成功
		if (result.affectedRows>0){
			res.send({code:200,msg:'update suc'});
		}else{
			res.send({code:301,msg:'update err'});
		}
	});
});

//5.商品删除路由
router.get('/delete',function(req,res){
	//5.1获取数据
	var obj=req.query;
	//5.2验证数据是否为空
	if (!obj.uid){
		res.send({code:401,msg:'uid required'});
		return;
	}
	//5.3执行SQL语句
	pool.query('DELETE FROM xz_user WHERE uid=?',[obj.uid],function(err,result){
		if (err) throw err;
		//console.log(result);
		if (result.affectedRows>0) {
			res.send({code:200,msg:'delete suc'});
		}else{
			res.send({code:301,msg:'delete err'});
		}
	});
});*/

//导出路由器对象
module.exports=router;
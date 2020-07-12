const express=require('express');
//引入body-parser中间件
const bodyParser=require('body-parser');
//引入路由器user.js
const userRouter=require('./routes/user.js');
const productRouter=require('./routes/product.js');
const ajaxRouter=require('./routes/ajax.js');
var app=express();
app.listen(8080);

//托管静态资源到public目录下
app.use(express.static('friend'));

//使用body-parser中间件
app.use( bodyParser.urlencoded({
	extended:false
}) );

//在服务器下使用,并挂载到/user
//所有路由的url自动添加/user
app.use('/user',userRouter);

//在服务器下使用,并挂载到/product
//所有路由的url自动添加/product
app.use('/product',productRouter);
app.use('/ajax',ajaxRouter);
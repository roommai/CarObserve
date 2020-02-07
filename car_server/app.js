//引入第三方模块
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

//引入token的模块
const jwt=require("./jwt.js");
//const session = require("express-session");

/*引入路由模块*/
const index=require("./routes/index.route.js");
const user=require("./routes/user.route.js");
const carlist=require("./routes/carlist.route.js");
const three_sixty=require("./routes/three_sixty.route.js")

//创建web服务器
var app = express();

//配置跨域
app.use(cors({
    //允许哪个程序列表 脚手架
    origin:["http://127.0.0.1:8080",
    "http://localhost:8080"],
    //每次请求验证
    credentials:true
}));

//配置session对象
/*app.use(session({
   secret:"128位安全字符串",//加密条件
   resave:true,            //请求更新数据
   saveUninitialized:true  //保存初始化数据
}))*/

//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));

//指定静态目录  img 图片下载目录
app.use(express.static("img")); 

//中间件拦截需要验证登陆的路由
app.use((req, res, next)=>{ 
    if ( req.url != '/user/signin' && req.url.startsWith("/user") ) {
      let token = req.headers.token;
      let result = jwt.verifyToken(token);
      // 如果考验通过就next，否则就返回登陆信息不正确
      if(result===undefined){
        res.send({status:403, msg:"未提供证书"})
      }else if (result.name == 'TokenExpiredError') {
        res.send({status: 403, msg: '登录超时，请重新登录'});
      }else if (result.name=="JsonWebTokenError"){
        res.send({status: 403, msg: '证书出错'})
      }else{
        req.user=result;
        next();
      }
    } else {
      next();
    }
});

//启动监听端口  3000
app.listen(3000,()=>{console.log("hello >>> listen ===> 3000")});

/*使用路由器来管理路由*/
app.use("/",index);
app.use("/user",user);
app.use("/carlist",carlist);
app.use("/three_sixty",three_sixty);

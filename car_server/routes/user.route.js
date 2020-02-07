const express=require("express");
const router=express.Router();
const pool=require("../pool.js");
const jwt=require("../jwt.js");

router.post("/signin",(req,res)=>{
	var uname=req.body.uname;
	var upwd=req.body.upwd;
	console.log(uname,upwd);
	var sql="select uid from car_user where uname=? and upwd=?"
	pool.query(sql,[uname,upwd],(err,result)=>{
		if(err) throw err;
		if(result.length===0){
			res.send({code:-1,msg:"登录失败"});
		}else{
			res.send({code:1,msg:"登陆成功",token:jwt.generateToken(result[0])});
		}
	});
});

router.get("/details",(req,res)=>{
	var uid=req.user.uid;
	console.log(uid)
	var sql="select uname,avatar,gender from car_user where uid=?"
	pool.query(sql,[uid],(err,result)=>{
		if(err) throw err;
		res.send(result[0]);
	});
});












module.exports=router;
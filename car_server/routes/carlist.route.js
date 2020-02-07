const express=require("express");
const router=express.Router();
const pool=require("../pool.js");

router.get("/search",(req,res)=>{
  var keyword=req.query.keyword;  
  var sql=`select cid,cname,index_url from car_list where cname like '%${keyword}%'`;
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});












module.exports=router;
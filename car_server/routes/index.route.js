const express=require("express");
const router=express.Router();
const pool=require("../pool.js");

router.get("/",(req,res)=>{
  var output={
    onsale:[],
    banner:[]
  };

  var onsale=new Promise(function(resolve,reject){
    var sql="select * from car_index_onsale where isShow=1";
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      output.onsale=result;
      resolve();
    });
  });

  var banner=new Promise(function(resolve,reject){
    var sql="select * from  car_index_banner";
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      output.banner=result;
      resolve();
    });
  });

  Promise.all([banner,onsale]).then(function(){
    res.send(output);
  });

});

router.get("/article",(req,res)=>{
  var pno=req.query.pno;
  var ps=req.query.pageSize;
  if(!pno){pno=1};
  if(!ps){ps=10};
  var offset=(pno-1)*ps;
  ps=parseInt(ps);
  var sql="select * from car_index_article LIMIT ?,?";
  pool.query(sql,[offset,ps],(err,result)=>{
    if(err) throw err;
    for(var item of result){
	  item.img=item.img.split("|")
    };
    res.send(result);
  });
});

router.post("/upload",(req,res)=>{
  var base64=req.body.base64;

})





module.exports=router;
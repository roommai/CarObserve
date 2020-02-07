const express=require("express");
const router=express.Router();
const pool=require("../pool.js");

router.get("/",(req,res)=>{
  var cid=req.query.cid;
  var color=req.query.color;
  console.log(color)
  var output={
    color:[],
    index_list:[]
  }
  if(color==undefined){
    var sql="select * from car_three_sixty_img where cid=?";
    pool.query(sql,[cid],(err,result)=>{
      if(err) throw err;
      var colorArr=[];
      for(let item of result){
        colorArr.push(item.color);
      };
      var obj=new Set(colorArr);
      output.color=[...obj];
      for(let item of result){
        if(item.color==output.color[0]){
          output.index_list.push(item.src);
        }
      };
      res.send(output)
    });
  }else{
    var sql="select src from car_three_sixty_img where cid=? and color=?";
    console.log(color)
    pool.query(sql,[cid,color],(err,result)=>{
      if(err) throw err;
      res.send(result)
    });
  };


});


module.exports=router;
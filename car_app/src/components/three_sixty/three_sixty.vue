<template>
<div class="three_sisty-container" :style="screenH">
  <div class="three_sisty">
    <ol class="car-img-list" @touchstart="start" @touchmove="move">
      <li class="car-item" v-for="(item,i) of list" :key="i"><img :class="arr[i]" :src="`${axios.defaults.baseURL+item+(i+1)+'.png'}`"></li>
    </ol>                                                                       
  </div>
  <div class="selection" ref="colorBar">
    <ul @click="select" >
      <li v-for="(item,i) of color" :key="i" :style="`${'background-color:'+item}`">
        <div :class="i==0?'active':''" data-target="mask" :data-id="i"></div>
      </li>
    </ul>
  </div>
  <div class="return" @click="goBack"><img :src="require('./img/return.png')"></div>
</div>
</template>


<script>
export default {
  data(){return {
    screenH:"",
    arr:[],
    startX:"",
    list:[],
    color:[],
    activeArr:[]
  }},
  created(){
    if (document.body.clientWidth >375) {
      this.screenH="height:"+window.innerHeight+"px";       
    }else{
      this.screenH="height:"+window.innerWidth*750/1334+"px";
    };
    window.onresize = () => {
      if (document.body.clientWidth >375) {
        this.screenH="height:"+window.innerHeight+"px";       
      }else{
        console.log(window.innerWidth)
        this.screenH="height:"+window.innerWidth*750/1334+"px";
      }
    };
    for(var i=0;i<30;i++){
      if(i===0){
        this.arr.push("current")
      }else{
        this.arr.push("");
      }
    };
    this.axios.get("/three_sixty",{params:{cid:1}}).then(result=>{
      this.list=result.data.index_list;
      this.color=result.data.color;
      for(var i=0;i<this.color.length-1;i++){
        this.activeArr.push("");
      }
      this.activeArr.unshift("active");
    });
  },
  methods:{
    start(e){
      e.preventDefault();
      this.startX = event.changedTouches[0].pageX
    },
    move(e){
      e.preventDefault();
      var endX = event.changedTouches[0].pageX
      var x=endX-this.startX;
      if(Math.abs(x)>8){
        if(x<0){
          if(this.arr[0]=="current"){
            this.arr.shift();
            this.arr.push("current");
          }else{
            this.arr.shift();
            this.arr.push("");
          };
          this.startX=endX;
        }else if(x>=0){
          if(this.arr[this.arr.length-1]=="current"){
            this.arr.pop();
            this.arr.unshift("current");
          }else{
            this.arr.pop();
            this.arr.unshift("");
          };
          this.startX=endX;
        };
      }
    },
    select(e){
      if(e.target.tagName=="UL"){
        return
      };
      var maskList=document.querySelectorAll("[data-target='mask']");
      var index=e.target.dataset.id;
      this.activeArr[this.activeArr.indexOf("active")]="";
      this.activeArr[index]="active";
      for(var i=0;i<maskList.length;i++){
        maskList[i].className=this.activeArr[i];
      };
      this.axios.get("/three_sixty",{params:{cid:1,color:this.color[index]}}).then(result=>{
         var rows=result.data;
         var arr=[];
         for(var item of rows){
           arr.push(item.src);
         };
         this.list=arr;     
      })
    },
    goBack(){
      this.$router.push("/pvareaid");
    }
  }
}
</script>

<style scoped>
.three_sisty-container {
  position: relative;
  background-image: url("./img/bg.png");
  background-size: 100%;
  background-repeat: no-repeat;
  overflow: hidden;
}
.three_sisty-container > .three_sisty > .car-img-list > .car-item {
  position: absolute;
  top: 0;left: 50%;
  height: 100%;
  width: 80%;
  text-align: center;
  margin-left: -40%;
}
.three_sisty-container > .three_sisty > .car-img-list > .car-item > img {
  height: 100%;
  visibility: hidden
}
.three_sisty-container > .three_sisty > .car-img-list > .car-item > img.current {
  visibility: visible
}
.three_sisty-container > .selection > ul > li {
  position: relative;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  margin: 8px;
} 
.three_sisty-container > .selection > ul > li > div {
  position: absolute;
  top: 50%;left: 50%;
  width: 16px;height: 16px;
  margin-left: -8px;
  margin-top: -8px;
  border-radius: 50%;
}
.three_sisty-container > .selection > ul > li > div.active {
  background-color: rgba(255,255,255,0.3)
}
.three_sisty-container > .return {
  position: absolute;
  right: 3%;top: 3%;;
}
</style>


<template>

<van-tabs v-model="active">
  <van-tab title="论坛">

<van-swipe :autoplay="3000" indicator-color="white">
  <van-swipe-item>
    <img src="./img/car001.jpg" alt="" style="width:100%;height:auto">
  </van-swipe-item>
  <van-swipe-item>
    <img src="./img/car02.jpg" alt="" style="width:100%;height:auto">
  </van-swipe-item>
  <van-swipe-item>
    <img src="./img/car03.jpg" alt="" style="width:100%;height:auto">
  </van-swipe-item>
  <van-swipe-item>
    <img src="./img/car04.jpg" alt="" style="width:100%;height:auto">
  </van-swipe-item>
</van-swipe>
  
<!-- <van-grid>
  <div>
  <van-icon-item name="tv-o" text="视频社区"/>
 
  </div>
  <van-grid-item icon="play-circle" text="精选" />
  <van-grid-item icon="play-circle" text="Young" />
  <van-grid-item icon="play-circle" text="车友圈" />
</van-grid> -->
<div class="spanfour">
  <van-row>
  <van-col span="5" class="span-one">
    <img src="./img/movie.png" alt="" style="width:40%">
    <p>视频社区</p>
  </van-col>
  <van-col span="5" class="span-one">
    <img src="./img/movie.png" alt="" style="width:40%">
    <p>精选</p>
  </van-col>
  <van-col span="5" class="span-one">
        <img src="./img/movie.png" alt="" style="width:40%">
    <p>Young</p>
  </van-col>
    <van-col span="5" class="span-one">
        <img src="./img/movie.png" alt="" style="width:40%">
    <p>车友圈</p>
  </van-col>
</van-row>
</div>



<van-tabbar v-model="active">
  <van-tabbar-item icon="home-o">首页</van-tabbar-item>
  <van-tabbar-item icon="search">论坛</van-tabbar-item>
  <van-tabbar-item icon="friends-o">选车</van-tabbar-item>
  <van-tabbar-item icon="setting-o">新车特卖</van-tabbar-item>
  <van-tabbar-item icon="setting-o">我</van-tabbar-item>
</van-tabbar>

    <div class="search">
   <form action="/">
  <van-search
    v-model="sValue"
    placeholder="请搜索论坛或帖子"/>
</form>
  </div>




<div class="tax" style="display:flex;">
<van-row type="flex" justify="space-around">

  <!-- 左边的图片 -->
  <ul style="height:966px">
<ul class="none" style="height:237px">
    <div class="onebutton" style="height:235px">
  <li class="one-pig" >
 <div class="orange-wenzi">
  
    <span class="">精选分类</span>
    <van-icon name="replay" class="shuaxin"    style="margin-left: 37px;margin-right:17px"/>
    
    </div>
 <br></li> 
    <li><van-icon name="add-square" />
      媳妇当车模</li><br>
    <li><van-icon name="add-square" />
      论坛热帖</li><br>
    <li><van-icon name="add-square" />
      论坛红人馆</li><br>
    <li><van-icon name="add-square" />
      论坛直播</li><br> 
 </div>
</ul>
  <li class="one-right-img">
  <van-col style="display: inline-block"> 
  <img src="./img/car02.jpg" alt="" id="one-img">

 <div style="height:50px">
  <p>
【精彩回放】揭秘！儿童安全座椅该如何选购</p><br>  
</div>
<div class="wenzi" style="height:50px">
<van-icon name="hot-sale" />
<span>解答团队</span> 
  <span style="padding-left: 20px;">13.7万观众</span>
  </div>

</van-col>
</li>
  <li class="one-right-img">
  <van-col style="display: inline-block"> 
  <img src="./img/car03.jpg" alt="" id="one-img">

 <div style="height:50px">
  <p>
【精彩回放】揭秘！儿童安全座椅该如何选购</p><br>  
</div>
<div class="wenzi" style="height:50px">
<van-icon name="hot-sale" />
<span>解答团队</span> 
  <span style="padding-left: 20px;">13.7万观众</span>
  </div>

</van-col>
</li>

  <li class="one-right-img">
  <van-col style="display: inline-block"> 
  <img src="./img/car04.jpg" alt="" id="one-img">

 <div style="height:50px">
  <p>
【精彩回放】揭秘！儿童安全座椅该如何选购</p><br>  
</div>
<div class="wenzi" style="height:50px">
<van-icon name="hot-sale" />
<span>解答团队</span> 
  <span style="padding-left: 20px;">13.7万观众</span>
  </div>

</van-col>
</li>
</ul>

<!-- 右边的图片 -->
<ul>
  <li class="one-right-img">
  <van-col style="display: inline-block"> 
  <img src="./img/car001.jpg" alt="" id="one-img">

 <div style="height:50px">
  <p>
【精彩回放】揭秘！儿童安全座椅该如何选购</p><br>  
</div>
<div class="wenzi" style="height:50px">
<van-icon name="hot-sale" />
<span>解答团队</span> 
  <span style="padding-left: 20px;">13.7万观众</span>
  </div>

</van-col>
</li>

  <li class="one-right-img">
  <van-col style="display: inline-block"> 
  <img src="./img/car05.jpg" alt="" id="one-img">

 <div style="height:50px">
  <p>
【精彩回放】揭秘！儿童安全座椅该如何选购</p><br>  
</div>
<div class="wenzi" style="height:50px">
<van-icon name="hot-sale" />
<span>解答团队</span> 
  <span style="padding-left: 20px;">13.7万观众</span>
  </div>

</van-col>
</li>
  <li class="one-right-img">
  <van-col style="display: inline-block"> 
  <img src="./img/car06.jpg" alt="" id="one-img">

 <div style="height:50px">
  <p>
【精彩回放】揭秘！儿童安全座椅该如何选购</p><br>  
</div>
<div class="wenzi" style="height:50px">
<van-icon name="hot-sale" />
<span>解答团队</span> 
  <span style="padding-left: 20px;">13.7万观众</span>
  </div>

</van-col>
</li>
  <li class="one-right-img">
  <van-col style="display: inline-block"> 
  <img src="./img/car08.jpg" alt="" id="one-img">

 <div style="height:50px">
  <p>
【精彩回放】揭秘！儿童安全座椅该如何选购</p><br>  
</div>
<div class="wenzi" style="height:50px">
<van-icon name="hot-sale" />
<span>解答团队</span> 
  <span style="padding-left: 20px;">13.7万观众</span>
  </div>

</van-col>
</li>
</ul>

</van-row>
   </div> 

 </van-tab>

 <!-- 车友圈 -->
  <van-tab title="车友圈">

  <form action="/">
    <van-search
      v-model="sValue"
      placeholder="请搜索论坛或帖子"/>
  </form>

 <div>
   <van-row gutter="4">
    <van-col span="4"
      style="margin-left:15px;" class="bgimg">
      <ul class="botton-1">
       <li>自驾游</li>
       <li>畅游世界</li>
      </ul>

    </van-col>
    <van-col span="4"
  style="margin-left:20px">
    <ul class="botton-2">
      <li>改装</li>
      <li>最酷最炫</li>
    </ul>
    </van-col>
  <van-col span="4"
  style="margin-left:20px">
     <ul class="botton-3">
       <li>车友说</li>
       <li>谈天说地</li>
     </ul>
  </van-col>
  <van-col span="4"
  style="margin-left:20px">
    <ul class="botton-4">
      <li>更多</li>
      <li>分类圈子</li>
    </ul>

    </van-col>
   </van-row>
  </div>



  </van-tab>
 <!-- 车友圈尾部 -->
  <van-tab title="Young">内容3</van-tab>
  <van-tab title="微贴">内容4</van-tab>
  <van-tab title="视频社区">内容5</van-tab>
  <van-tab title="自自自">{{sValue}}</van-tab>
  </van-tabs>



</template>
<script>
export default{
 data(){
   return {
     sValue:"请搜索帖子或文章",
       active:0,
   }
 }
}
</script>


<style scoped>
.container{  
  position:relative;
 }
 .container .item{
    box-shadow: 2px 2px 2px #999;
    /* position: absolute; */
 }
 .container .item img{
      display:block;
    width:250px;
 }
/* 布局   */
.tax .flex{
  display: flex;
  margin-right: 1px;
}
.one-right-img>one-img{
  width: 100px;
}
.span-one p{
  font-size: 0.75rem;
}
.one-carousel{
  display: flex;
  width: 114px;
} 
.one-carousel .one-carousel-1{
position:absolute;
display: inline-block; 
width: 100%;
/* text-align:center; */
}
.one-carousel-1 .img-1{
 position: absolute;

}
.one-carousel-1 .text-1{
  position: absolute;
  font-size: 0.5rem;

}
.span-one{
  display: flex;

}
/* .one-carousel{
   display: inline-block; 
} */
/* .orange-wenzi span{
   font-size: 20px;
   
} */
.one-pig{
  background-color:orangered;
  width: 100%;
  height: auto;
  box-sizing: border-box;
  display: inline-block;
  color: aliceblue;
}
.one-pig h4{
  display: inline-block;
  font-size: 20px;
  font-weight:bold;
  height:3px;
  margin: 15px 0px 7px 3px;
}
.onebutton li{
color: aliceblue;
}
.onebutton{
  background-color:orangered;
  margin: 0px 9px 5px 8px;
  border-radius: 10px;
  padding: 0 18px 0 18px;
}
.none{display: inline-block;}
/* 右边One图片 */
.one-right-img img{
width: 166px;
height: 123px;
}
.one-right-img p{
margin: 8px 0 0;
font-size: 10px;
}
.wenzi span{
  font-size: 8px;
  color: #ccc;
  padding-left: 8px;
}
.span-one{
  display: inline-block;
  margin: 0 5px 0 5px;
}

/* 车友圈 */
.bgimg{
  background-image:('./img/car01.png')
}
.botton-1{
  background-color: blue;

}
.botton-2{
  background-color: darkcyan;
}
.botton-3{
  background-color: #ccc;
}
.botton-4{
  background-color: darkorchid;
}

</style>
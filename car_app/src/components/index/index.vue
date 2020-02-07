<template>
<div class="index">
  <div class="header">
    <div class="logo"><img :src="require('./img/logo.png')"></div>
    <div class="search">
      <input type="text" placeholder="搜索" v-model="keyword">
      <ul class="content" @click="select">
        <li v-for="(item,i) of search_data" :key="i" :data-id="item.cid">{{item.cname}}</li>
      </ul>
    </div>
    <div class="add" @click="add(true)"><img :src="require('./img/add.png')"></div>
    <van-action-sheet 
      v-model="show"   
    >
      <p class="photo">拍照</p>
      <hr style="opacity:0.2">
      <p class="upload">
        <van-uploader :after-read="afterRead">
          <van-button icon="photo" type="primary">上传图片</van-button>
        </van-uploader>
      </p>
      <hr style="opacity:0.2">
      <p class="close" @click="add(false)">关闭</p>
    </van-action-sheet>
    <van-dialog
      v-model="dialog_show"
      show-cancel-button
      width="330px"
      confirm-button-text="查看详情"
      :beforeClose="beforeClose"
    >
      <div class="dialog-img">
        <img :src="base64">
        <span>{{car_detail.name}}</span>
      </div>
    </van-dialog>
  </div>
  <div class="nav-card">
    <router-link to="#">
      <img :src="require('./img/card1.png')">
      <span>
        <p>买新车</p>
        <p>享受现金补贴</p>
      </span>
    </router-link>
    <router-link to="#">
      <img :src="require('./img/card2.png')">
      <span>
        <p>二手车</p>
        <p>诚信交易</p>
      </span>
    </router-link>
    <router-link to="#">
      <img :src="require('./img/card3.png')">
      <span>
        <p>用车服务</p>
        <p>用车无烦恼</p>
      </span>
    </router-link>
    <router-link to="#">
      <img :src="require('./img/card4.png')">
      <span>
        <p>自驾游</p>
        <p>身边的旅行家</p>
      </span>
    </router-link>
  </div>
  <div class="tab-box">
    <van-tabs v-model="active" color="#1989fa" animated swipeable background="#fdfdfd">
      <van-tab title="购车">
        <div class="buy">
          <ul>
            <li>
              <van-image :src="require('./img/brand1.png')" />
              <span>大众</span>
            </li>
            <li>
              <van-image :src="require('./img/brand2.png')" />
              <span>大众</span>
            </li>
            <li>
              <van-image :src="require('./img/brand3.png')" />
              <span>奥迪</span>
            </li>
            <li>
              <van-image :src="require('./img/brand4.png')" />
              <span>宝马</span>
            </li>
            <li>
              <van-image :src="require('./img/brand5.png')" />
              <span>奔驰</span>
            </li>
            <li>
              <van-image :src="require('./img/brand6.png')" />
              <span>丰田</span>
            </li>
            <li>
              <van-image :src="require('./img/brand7.png')" />
              <span>本田</span>
            </li>
            <li>
              <van-image :src="require('./img/brand8.png')" />
              <span>日产</span>
            </li>
            <li>
              <van-image :src="require('./img/brand9.png')" />
              <span>别克</span>
            </li>
            <li>
               <van-image :src="require('./img/more.png')" />
              <span>更多</span>
            </li>
          </ul>
	      </div>
      </van-tab>
      <van-tab title="主打车">
	      <div class="onsale">
          <ul>
            <li v-for="(item,i) of onsale" :key="i">
              <img :src="`${axios.defaults.baseURL+item.img}`">
              <span>{{item.cname}}</span>
            </li>
          </ul>
	      </div>
      </van-tab>
      <van-tab title="贷款购车">
        <div class="loan">
          <van-grid :border="false" :column-num="5">
            <van-grid-item>
              <van-image :src="require('./img/brand1.png')" />
              <span>福特</span>
            </van-grid-item>
            <van-grid-item>
              <van-image :src="require('./img/brand2.png')" />
              <span>福特</span>
            </van-grid-item>
            <van-grid-item>
              <van-image :src="require('./img/brand3.png')" />
              <span>福特</span>
            </van-grid-item>
            <van-grid-item>
              <van-image :src="require('./img/brand4.png')" />
              <span>福特</span>
            </van-grid-item>
            <van-grid-item>
              <van-image :src="require('./img/brand5.png')" />
              <span>福特</span>
            </van-grid-item>
          </van-grid>
          <ul>
            <li>首付</li>
            <li>3万以下</li>
            <li>3-5万</li>
            <li>5-8万</li>
            <li>8-1万</li>
          </ul>
          <ul>
            <li>贷款</li>
            <li>低首付</li>
            <li>0利率</li>
            <li>爆款秒杀</li>
            <li>车主贷款</li>
          </ul>
	      </div>
      </van-tab>
      <van-tab title="二手车">
        <div class="secondhand">
          <van-grid :border="false" :column-num="5">
            <van-grid-item>
              <van-image :src="require('./img/brand1.png')" />
              <span>福特</span>
            </van-grid-item>
            <van-grid-item>
              <van-image :src="require('./img/brand2.png')" />
              <span>福特</span>
            </van-grid-item>
            <van-grid-item>
              <van-image :src="require('./img/brand3.png')" />
              <span>福特</span>
            </van-grid-item>
            <van-grid-item>
              <van-image :src="require('./img/brand4.png')" />
              <span>福特</span>
            </van-grid-item>
            <van-grid-item>
              <van-image :src="require('./img/brand5.png')" />
              <span>福特</span>
            </van-grid-item>
          </van-grid>
          <ul>
            <li>首付</li>
            <li>3万以下</li>
            <li>3-5万</li>
            <li>5-8万</li>
            <li>8-1万</li>
          </ul>
          <ul>
            <li>贷款</li>
            <li>低首付</li>
            <li>0利率</li>
            <li>爆款秒杀</li>
            <li>车主贷款</li>
          </ul>
          <div class="btn">
            <p>买二手车</p>
            <p>高价卖车</p>
            <p>金融服务</p>
          </div>
	      </div>
      </van-tab>
    </van-tabs>
  </div>
  <div class="tab-btn">
    <ul>
      <li>
        <van-image :src="require('./img/tab-btn1.png')"/>
        <p>新车特卖</p>
      </li>
      <li>
        <van-image :src="require('./img/tab-btn2.png')"/>
        <p>新车特卖</p>
      </li>
      <li>
        <van-image :src="require('./img/tab-btn3.png')"/>
        <p>新车特卖</p>
      </li>
      <li>
        <van-image :src="require('./img/tab-btn4.png')"/>
        <p>新车特卖</p>
      </li>
      <li>
        <van-image :src="require('./img/tab-btn5.png')"/>
        <p>新车特卖</p>
      </li>
    </ul>
  </div>
  <div class="swipe">
    <van-swipe :autoplay="3000" indicator-color="#0055ff">
      <van-swipe-item v-for="(item,i) of banner" :key="i">
        <van-image :src="`${axios.defaults.baseURL+item.img}`"></van-image>
      </van-swipe-item>
    </van-swipe>
  </div>
  <div class="article">
    <van-list
      v-model="loading"
      :finished="finished"
      finished-text="没有更多了"
      @load="getMore"
    >
      <a class="article-item" v-for="(item,i) of article" :key="i">
        <div class="title">{{item.title}}</div>
        <div class="imgs">
          <img :src="`${axios.defaults.baseURL+item.img[0]}`">
          <img :src="`${axios.defaults.baseURL+item.img[1]}`">
          <img :src="`${axios.defaults.baseURL+item.img[2]}`">
        </div>
        <p class="read">{{item.readed}}浏览</p>
      </a>
    </van-list>
  </div>
</div>
</template>


<script>
export default {
  data(){
    return {
      active:0,
      loading: false,
      finished: false,
      onsale:[],
      banner:[],
      article:[],
      pno:0,
      show: false,
      dialog_show:false,
      base64:"",
      car_detail:{},
      keyword:"",
      search_data:[]
    }
  },
  created(){
    this.axios.get("/").then((result)=>{
      this.onsale=result.data.onsale;
      this.banner=result.data.banner;
    });
  },
  methods:{
    getMore(){
      this.pno++;
      this.axios.get("article",{params:{pno:this.pno}}).then((result)=>{
        for(var i=0;i<result.data.length;i++){
          this.article.push(result.data[i])
        };
        this.loading = false;
        if(result.data.length===0){
          this.finished = true;
        };
      });
    },
    add(bool){
      this.show=bool;
    },
    beforeClose(action,done){
      if(action==="confirm"){
        console.log("跳转===>");
      }else if(action==='cancel'){
        done();
      };
    },
    afterRead(file) {
      this.$toast.loading({
        message: '加载中...',
        forbidClick: true,
        duration:0,
      });
      this.show=false;
      this.base64=file.content;
      var reg=/^data:image\/(jpeg|png|gif);base64,/;
      var str=this.base64.replace(reg,"");
      var obj={              
        image:str
      }
      this.axios({
        method:"post",
        url:"https://aip.baidubce.com/rest/2.0/image-classify/v1/car"+this.key,
        headers:{
          'Content-Type':'application/x-www-form-urlencoded',
        },
        data:obj
      }).then((result)=>{
        this.$toast.clear()
        this.car_detail=result.data.result[0];
        if(this.car_detail.name!=="非车类"){
          this.dialog_show=true;
        }else{
          this.$toast("所选图片不是汽车")
        };
      })
    },
    select(e){
      console.log(e.target.innerHTML);
    }
  },
  watch:{
    keyword(){
      var obj={keyword:this.keyword};
      if(this.keyword!==""){
        this.axios.get("carlist/search",{params:obj}).then(result=>{
          if(result.data.length>10){
            this.search_data=result.data.slice(0,10);
          }else{
            this.search_data=result.data;
          }
        });
      }else{
        this.search_data=[];
      }
    }
  }
}
</script>




<style scoped>
.index {
   background-color: #fdfdfd;
}
.header {
  display: flex;
  justify-content: space-between;
  flex-wrap: nowrap;
  height: 36px;
  margin: 10px 8px;
}
.header > .logo {
  padding: 5px;
}
.header > .logo > img {
  height: 100%;
}
.header > .search {
  position: relative;
  margin-top: 5px;
}
.header > .search > input {
  height: 80%;
  width: 100%;
  border: 1.5px solid #1989fa;
  padding: 12px;
  padding-left: 28px;
  border-radius: 6.4px;
  font-size: 13px;
  background-image: url("./img/search.png");
  background-position: left;
  background-repeat: no-repeat;
  background-size: 12%;
}
.header > .search > .content {
  position: absolute;
  z-index: 1000;
  left: 0;top: 22px;
  width: 100%;
}
.header > .search > .content > li {
  font-size: 10px;
  font-weight: 600;
  color: #ffffff;
  margin: 6px 0 0 0px;
  padding: 1px 0 1px 8px;
  border-radius: 3px;
  background: rgba(20, 102, 184, 0.6)
}
.header > .add {
  padding: 5px;
}
.header > .add > img {
  height: 100%;
}
.header .photo,
.header .close {
  text-align: center;
  font-size: 12.8px;
  font-weight: 600;
  padding: 13px;
  color: grey;
}
.header .upload {
  text-align: center;
}
.header .upload button {
  padding: 0;
  margin: 0;
  border: 0;  
  color: grey;
  background-color: transparent;
}
.header .dialog-img {
  text-align: center;
}
.header .dialog-img > img {
  width: 100%;
}
.header .dialog-img span {
  font-size: 16px;
  font-weight: 600;
  color: grey;
}

.nav-card {
  display: flex;
  justify-content: space-between;
  margin: 0 8px;
}
.nav-card > a {
  position: relative;
  padding: 4.8px;
}
.nav-card > a >img {
  width: 100%;
}
.nav-card > a > span {
  position: absolute;
  left: 11%;top: 12%;
}
.nav-card > a > span > p {
  font-size: 13px;
  font-weight: 600;
  color: #eaeaea;
  margin:0;
}
.nav-card > a > span > p:last-child {
  font-size: 10px;
}
.tab-box {
  margin: 0 8px;
}
.tab-box  .buy,
.tab-box  .onsale,
.tab-box  .loan,
.tab-box  .secondhand {
  height: 160px;
  font-size: 12px;
  font-weight: 600;
}
.tab-box  .buy > ul,
.tab-box  .onsale > ul { 
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  height: 100%;
}
.tab-box  .loan > ul,
.tab-box  .secondhand > ul,
.tab-box  .secondhand > .btn {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.tab-box  .secondhand > ul {
  padding: 0;
}
.tab-box  .secondhand > .btn {
  padding: 0 8px;
}
.tab-box  .secondhand > .btn > p {
  color: #0055ff;
  width: 25%;
  background-color: rgba(0,85,255,0.1);
  text-align: center;
  padding: 6px;
}
.tab-box  .buy > ul > li {
  width: 20%;
  padding: 10px;
  text-align: center;
  font-size: 12px;
}
.tab-box  .buy > ul > li  img,
.tab-box  .onsale > ul > li  img {
  width: 100%;
}
.tab-box  .onsale > ul > li {
  width: 30%;
  padding: 3.2px;
  text-align: center;
  font-size: 12px;
}
.tab-box  .loan > ul > li,
.tab-box  .secondhand > ul > li {
  width: 20%;
  font-size: 12px;
  text-align: center;
  padding: 6px 0;
  margin-left: -5px;
}
.tab-box  .secondhand > ul > li {
  padding: 0;
}



.tab-btn {
  padding: 6px 8px 8px 0;
}
.tab-btn > ul {
  display: flex;
  flex-wrap: nowrap;
  justify-content: space-between;
}
.tab-btn > ul > li {
  width: 20%;
  padding: 10px;
  padding-bottom: 0;
} 
.tab-btn > ul > li > p {
  margin: 0;
  font-size: 10px;
  font-weight: 600;
  text-align: center;
} 



.swipe {
  margin: 8px 8px;
}



.article {
  margin: 18px 8px;
}
.article  .article-item > .imgs {
  display: flex;
  flex-wrap: nowrap;
  justify-content: space-between;
}
.article  .article-item > .title {
  font-size: 12px;
  margin: auto;
  padding: 3px 3px;
}
.article  .article-item > .imgs > img {
  width: 33%;
}
.article  .article-item > .imgs > img:first-child {
  border-top-left-radius: 6.4px;
  border-bottom-left-radius: 6.4px;
}
.article  .article-item > .imgs > img:last-child {
  border-top-right-radius: 6.4px;
  border-bottom-right-radius: 6.4px;
}
.article  .article-item > .read {
  color: grey;
  margin: 0;
  font-size: 8px;
  margin-bottom: 12px;
}
</style>

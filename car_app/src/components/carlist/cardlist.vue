<template>
  <div class="m_header">
    <van-tabs class="reset" v-model="active">
      <van-tab title="选车">
        <xuanche></xuanche>
      </van-tab>
      <van-tab title="新能源">内容 2</van-tab>
      <van-tab title="七步买车">内容 3</van-tab>
      <van-tab title="1成首付">内容 4</van-tab>
      <van-tab title="二手车">二首车</van-tab>
    </van-tabs>
  </div>
</template>

<script>
import xuanche from "./xuanche";
export default {
  components:{"xuanche":xuanche},
  data(){
    return{
      active:0,
    }
  }
}
</script>

<style>
.m_header .van-tabs__line{
     width:.5rem !important;
     background-color:#1989fa;
     bottom:1.25rem;
}
.m_header .van-tabs--line .van-tabs__wrap{
    height:40px;
}
.m_header .van-tab--active{
    font-size:.9rem;
    color:#000;
    font-weight: bold;
}
.m_header .van-tab{
    line-height:40px;
    transition: all 1s;
}
.m_header .van-hairline--top-bottom::after, .van-hairline-unset--top-bottom::after{
    border-width:0 0;
}
.m_header .van-tabs--line .van-tabs__wrap{
    position:fixed;
    width:100%;
    z-index: 3;
  }

.m_header .van-index-anchor{
    background:#f8f9fc;
}
.m_header .van-index-bar{
    margin-top:-1.2rem;
}
.m_header .van-index-bar__index--active{
    color:#fff !important;
    background:#1989fa;
    border-radius: 50%;
   
}
.m_header .van-index-bar__index{
    padding:0;
    display:block;
    width:0.7rem;
    height:0.7rem;
    font-size:0.4rem;
    line-height: 0.7rem;
    text-align:center;
    margin-bottom:0.2rem;
    margin-right:0.2rem;
}
.m_header .van-index-anchor--sticky{
    top:40px;
    color:#1989fa !important;
}
.m_header .van-index-bar>div[data-v-01a8ef79]:nth-child(2){
    padding-top: 40px ;
    height:32px !important;
}
.m_header .van-cell{
    padding:0;
}
.m_header .van-icon-arrow:before{
    display: none;
}
.m_popup .van-tabs::before{
    display: table;
    content:"";
}
.m_popup  .van-tabs__content{
    margin-top:40px;
}
</style>


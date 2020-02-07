<template>
<div>
  <div class="content">
    <router-view></router-view>
  </div>
  <div class="footer">
    <van-tabbar v-model="active" route>
      <van-tabbar-item replace  to="/">
        <span>首页</span>
        <img
          slot="icon"
          slot-scope="props"
          :src="props.active ? require('./index/img/home.active.png') : require('./index/img/home.inactive.png')"
        >
      </van-tabbar-item>
      <van-tabbar-item replace  to="/cardlist">
        <span>选车</span>
        <img
          slot="icon"
          slot-scope="props"
          :src="props.active ? require('./index/img/car.active.png') : require('./index/img/car.inactive.png')"
        >
      </van-tabbar-item>
      <van-tabbar-item replace  to="/luntan">
        <span>论坛</span>
        <img
          slot="icon"
          slot-scope="props"
          :src="props.active ? require('./index/img/blog.active.png') : require('./index/img/blog.inactive.png')"
        >
      </van-tabbar-item>
      <van-tabbar-item replace  to="/page">
        <span>我</span>
        <img
          slot="icon"
          slot-scope="props"
          :src="props.active ? require('./index/img/user.active.png') : require('./index/img/user.inactive.png')"
        >
      </van-tabbar-item>
    </van-tabbar>
  </div>
</div>
</template>/


<script>
export default {
  data(){return {
    active:0,
    }
  },
}
</script>



<style scoped>
.footer{
  font-weight: 600;
  height: 40px;
}
</style>





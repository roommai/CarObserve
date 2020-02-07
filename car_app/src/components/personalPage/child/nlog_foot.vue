<template>
<div>
    <div class="log_img">
        <img src="../img/icon-qq.png"/>
        <img src="../img/icon-weibo.png"/>
        <img src="../img/icon-yizhangtong.png"/>
        <!-- <van-image :src="require('./img/icon-qq.png')"/>
        <van-image :src="require('./img/icon-weibo.png')"/>
        <van-image :src="require('./img/icon-yizhangtong.png')"/> -->
    </div>
    <p class="contact">
        如有问题，请联系客服 
        <router-link to="/">4000-666-850</router-link>
    </p>
</div>
</template>

<script>
export default {

}
</script>

<style scoped>
    .log_img{
        text-align: center;
        padding-top: 7.5vh;
    }
    .log_img img{
        height: 4.5vh;
        margin: 0 5vw;
    }
    .contact{
        text-align: center;
        font-size: 12px;
        color: grey;
    }
</style>

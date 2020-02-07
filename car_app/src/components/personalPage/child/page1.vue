<template>
    <div class="log_head">
        <van-nav-bar title="我的">
            <van-icon name="search" slot="left" class="search"></van-icon>
            <van-icon name="search" slot="right" class="search"></van-icon>
            <van-icon name="search" slot="right"></van-icon>
        </van-nav-bar>
        <page1c></page1c>
    </div>
</template>

<script>
import page1c from "./page1_1.vue"
export default {
    components:{
        "page1c":page1c
    }
}
</script>

<style scoped>
/*组件对应修改*/
/*van-nav-bar*/
.van-nav-bar{
    background-color:transparent;
}
.van-nav-bar__title{
    color: white;
}
[class*=van-hairline]::after{
    border: 0;
}
.van-nav-bar__left .van-icon-search:nth-child(1):before{
    content: url("../img/search.png")
}
.van-nav-bar__right .van-icon-search:nth-child(1):before{
    content: url("../img/search.png")
}
.van-nav-bar__right .van-icon-search:nth-child(2):before{
    content: url("../img/icon1.png")
}

.log_head{
    background: url(../img/bg-car.png) no-repeat;
    background-size: contain;
    width:100%;
    position: absolute;
    /* height: 27vh; */
}
</style>

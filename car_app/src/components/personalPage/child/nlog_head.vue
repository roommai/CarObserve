<template>
        <nav class="nav">
            <div class="nav_left">
            <router-link to="/" class="left_a">
                <img src="../img/left.png"  class="left"/>
            </router-link>
            <router-link to="/">
                <img src="../img/house.png"  class="left"/>
            </router-link>
            </div>
            <span class="log">登录</span>
            <div class="nav_right">
            <router-link to="/">
                <img src="../img/search1.png"  class="left"/>
            </router-link>
            <router-link to="" class="dot_i">
                <img src="../img/little.png"  class="left" @click="show=true"/>
                <van-overlay :show="show" @click="show=false">
                    <div class="wrapper" @click.stop>
                        <div class="block">
                            <router-link to="">首页</router-link>
                            <router-link to="">找车</router-link>
                            <router-link to="">论坛</router-link>
                            <router-link to="">金融</router-link>
                            <router-link to="">二手车</router-link>
                            <router-link to="">车商城</router-link>
                            <router-link to="">服务</router-link>
                        </div>
                    </div>
                </van-overlay>        
            </router-link>
            </div>
        </nav>
</template>

<script>
export default {
    data(){
        return{
            show:false,
        }
    },
    methods:{
        onClickleft(){
            toast('返回')
        }
    },
    creat(){
       
    },
}
</script>

<style scoped>
    .nav{
        height: 44px;
        text-align: center;
        position: relative;
        display: flex;
        align-items: center;
        width: 100%;
    }
    .nav .nav_left{
        position: relative;
        left: 0;
    }
    .nav .nav_right{
        position: absolute;
        right: 0;
    }
    /*左箭头*/
    .nav .left{
        width:22px;
        height:22px;
        margin: 1px 8px 1px 0;
    }
    /*登录字体 居中*/
    .nav .log{
        width:183px;
        color: #111E36;
        font-size: 17px;
        font-weight: 700;
    }
    /*三点*/
    .dot_i{
        width: 22px;
        height: 20px;
    }
    .wrapper{
        display: flex;
        /* align-items: center; */
        justify-content: flex-end;
        height: 100%;
    }
    .block{
        width:258px;
        height: 7.75rem;
        background:#fff;
        margin: 1.9rem 0;
        padding: 10px 0;
        border-radius: 4px 0 4px 4px;
    }
    .block::before{
        content:"";
        position: absolute;
        top:0.9rem;
        right: 0.8rem;
        width: 0;
        height: 0;
        border-width: 0 1rem 1rem !important;
        border: solid;
        border-color: transparent transparent #fff;
        overflow: hidden;
    }
    .block a{
        display: inline-block;
        color: #111E36;
        width: 33.333%;
        font-size:15px;
        font-weight: 400;
        text-align: center;
        line-height: 36px;
    }

    /*组件 居中*/
    .nav[data-v-4a654726]{
    text-align: left !important;
    }
</style>

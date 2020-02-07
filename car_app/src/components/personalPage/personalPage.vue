<template>
<div class="bg_p">
<div class="log_head">
        <!--第一部分-->
        <van-nav-bar title="我的">
            <van-icon name="search" slot="left" class="search"></van-icon>
        </van-nav-bar>
        <!--第二部分-->
        <div class="u_panel">
            <div class="uname">
                <img src="./img/head_120X120.png" class="u_img"/>
                <van-button type="primary" class="sign">
                    <img src="./img/sign.png" class="sign_i"/>
                    <span class="sign_p">签到有礼</span>
                </van-button>
            <div class="info_uname">
        <!--头部-->
        <myloghead></myloghead>
        <!--信息-->
        <img src="./img/level1.png" class="level1"/>
                <div class="uname_info">
                    <router-link to="">
                        <span class="info">0</span>
                            关注
                    </router-link>
                    <router-link to="">
                        <span  class="info">0</span>
                            粉丝
                    </router-link>
                    <router-link to="">
                        <span class="info">0</span>
                            获赞
                    </router-link>
                </div>
            </div>
            </div>
        </div>
        <uinfo></uinfo>
</div>
</div>
</template>

<script>
import uinfo from "./child/child_c/uinfo.vue"
// import loghead from "./log_head.vue"

export default {
    data(){
        return{
            image:[
                require('./img/head_120X120.png'),
            ],
            img:require('./img/i-icon.png'),
            uname:""
        }
    },
    created(){
        this.axios.get("user/details").then((res)=>{
            console.log(res.data)
        })
    },
    components:{
        // "page1":page1,
        // "page1c":page1c,
        "uinfo":uinfo,
        //zww
        // "loghead":loghead
    }
}
</script>

<style scoped>
    .bg{
        background: #f8f9fc;
    }
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
        content: url("./img/search.png")
    }
    .van-nav-bar__right .van-icon-search:nth-child(1):before{
        content: url("./img/search.png")
    }
    .van-nav-bar__right .van-icon-search:nth-child(2):before{
        content: url("./img/icon1.png")
    }

    .log_head{
        background: url(./img/bg-car.png) no-repeat;
        background-color: #f8f9fc;
        background-size: contain;
        width:100%;
        position: absolute;
        /* height: 27vh; */
    }
    .bg_p{
        background:  #f8f9fc;
    }

    .u_panel{
        /* margin: 0 5.6vw; */
        margin-top:6.3vh;
        background:transparent;
    }
    /*用户头像 模块*/
    .uname{
        background:#fff;
        border:1px solid #f8f9fc;
        margin: 0 5.6vw;
        padding: 0 4.3px;
        position: relative;
        border-radius: .625rem;
    }
    /*用户图片对象*/
    .u_img{
        width:21.4vw;
        height:12vh;
        border-radius: 50%; 
        /* position: absolute; */
        margin-top:-4.2vh;
    }
    /* 签到有礼前的图标
    .van-icon-star-o:before{
        content:url("./img/sign.png");
    } */
    /*签到 按钮*/
    .sign{
        position:absolute;
        top:1vh;
        right:1vw;
        width:5.625rem;
        height: 2rem;
        text-align: center;
    }
    .sign_i{
        width: 16px;
        position: relative;
        top:-5px;
    }
    .sign_p{
        margin-left:3px;
        font-size: .75rem;
        position: relative;
        top:-8px;
    }
    /*组件清、换样式*/
    .van-button--normal{
        padding: 0;
    }
    .van-button--primary{
        background: transparent;
        color: #05f;
        border:1px solid rgba(0,81,255,.2);
        width: 24vw;
    }

    .info_uname{
        padding-bottom: 2.4vh;
    }
    
    
    
    .level1{
        width:30%;
    }
    .uname_info{
        text-align: center;
        display: flex;
        justify-content: space-around;
    }
    .uname_info a{
        color: #666d7f;
    }
    .uname_info a span{
        color: #000000;
    }
    .info{
        display: block;
        width:27vw;
        font-size:1.25rem;
    }
</style>

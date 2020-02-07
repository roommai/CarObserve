<template>
    <div class="u_panel">
        <div class="uname">
            <img src="../img/head_120X120.png" class="u_img"/>
            <van-button type="primary" class="sign">
                <img src="../img/sign.png" class="sign_i"/>
                <span class="sign_p">签到有礼</span>
            </van-button>
            <uname></uname>
        </div>
        <uinfo></uinfo>
    </div>
</template>

<script>
import uname from "./child_c/uname.vue"
import uinfo from "./child_c/uinfo.vue"
export default {
    data(){
        return{
                image:[
                    require('../img/head_120X120.png'),
                ]
        }
    },
    methods: {
        
    },
    components:{
        "uname":uname,
        "uinfo":uinfo
    }
}
</script>

<style scoped>
    .u_panel{
        padding: 0 5.6vw;
        margin-top:6.3vh;
        background: #f8f9fc;
    }
    .uname{
        background:#fff;
        /* border:1px solid #e0e1e4; */
        padding: 0 4.3vw;
        position: relative;
        border-radius: .625rem;
    }
    .u_img{
        width:21.4vw;
        height:12vh;
        border-radius: 50%; 
        /* position: absolute; */
        margin-top:-4.2vh;
    }
    /* 签到有礼前的图标
    .van-icon-star-o:before{
        content:url("../img/sign.png");
    } */
    .sign{
        position:absolute;
        top:1vh;
        right:1vw;
    }
    .sign_i{
        width: 16px;
    }
    .sign_p{
        margin-left:.625rem;
    }
    .van-button--normal{
        padding: 0;
    }
    .van-button--primary{
        background: transparent;
        color: #05f;
        border:1px solid rgba(0,81,255,.2);
        width: 24vw;
    }
</style>

<template>
    <div class="u_bg">
        <van-grid clickable :column-num="4">
            <div class="uifo1">
                <router-link to="" class="a_uifo">
                    <i class="uifo uifo_c1"></i>
                    <span>收藏</span>
                </router-link>
                <router-link to="" class="a_uifo">
                    <i class="uifo uifo_c2"></i>
                    <span>
                        发布
                    </span>
                </router-link>
                <router-link to="" class="a_uifo">
                    <i class="uifo uifo_c3"></i>
                    <span>
                        私信
                    </span>
                </router-link>
                <router-link to="" class="a_uifo">
                    <i class="uifo uifo_c4"></i>
                    <span>
                        车友圈
                    </span>
                </router-link>
            </div>
        </van-grid>
        <mynesw></mynesw>
        
        <div class="foot"></div>
    </div>
</template>

<script>
import mynews from "../5_module/news.vue"
export default {
    components:{
        "mynesw":mynews
    }
}
</script>

<style scoped>
    .u_bg{
        background: #f8f9fc;
        padding: 0 1.25rem .75rem;
    }
    /*1*/
    /*总体*/
    .uifo1{
        display: flex;
    }
    /*a标签*/
    .uifo1 .a_uifo{
        display: block;
        text-align: center;
        color:#111e36;
        width: 22.3vw;
        margin: 18px 0; 
    }
    /*字体大小*/
    .a_uifo{
        font-size:12px;
    } 
    /*图片大小*/
    .uifo1 .uifo{
        width: 10.7vw;
        height: 6vh;
        display: block;
    }
    .uifo1 .uifo_c1{
        background: url("../../img/i-mine/i-mine1.png") no-repeat;
        background-size: cover;
        margin: 0 auto;
    }
    .uifo1 .uifo_c2{
        background: url("../../img/i-mine/i-mine2.png") no-repeat;
        background-size: cover;
        margin: 0 auto;
    }
    .uifo1 .uifo_c3{
        background: url("../../img/i-mine/i-mine3.png") no-repeat;
        background-size: cover;
        margin: 0 auto;
    }
    .uifo1 .uifo_c4{
        background: url("../../img/i-mine/i-mine4.png") no-repeat;
        background-size: cover;
        margin: 0 auto;
    }
    .foot{
        height:9vh;
    }
</style>

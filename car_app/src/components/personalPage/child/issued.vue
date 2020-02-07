<template>
    <div class="bg">
        <ul class="issued">
            <li>
            <router-link to="">
                <img src="../img/issued/issued1.png"/>
                <span>我的论坛</span>
                <van-icon name="arrow" class="right_i"/>
            </router-link>
            </li>
            <li>
            <router-link to="">
                <img src="../img/issued/issued2.png"/>
                <span>我的口碑</span>
                <van-icon name="arrow" class="right_i"/>
            </router-link>
            </li>
            <li>
            <router-link to="">
                <img src="../img/issued/issued3.png"/>
                <span>车主结构</span>
                <van-icon name="arrow" class="right_i"/>
            </router-link>
            </li>
            <li>
            <router-link to="">
                <img src="../img/issued/issued4.png"/>
                <span>我的回答</span>
                <van-icon name="arrow" class="right_i"/>
            </router-link>
            </li>
        </ul>
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>
    /* .bg{
        background: #f8f8f8;
        height: 100%;
    } */
    .issued{
        background: #fff;
        position: relative;
        height:184px;
    }
    .issued li{
        height: 2.5rem;
        line-height: 2.5rem;
        position: relative;
        font-size: 14px;
    }
    .issued li:after{
        content: "";
        display: block;
        width: auto;
        border-bottom: 1px solid #eee;
    }
    .issued li a{
        color:#333;
        padding: 0 .9375rem 0 1.0625rem;
    }
    .issued li a img{
        width:1.375rem;
        height:1.375rem;
        margin: -.125rem .375rem 0 0;
    }
    .issued li a span{
        position: absolute;
        top:-5px;
        left:52px;
    }
    .issued li a .right_i{
        position: absolute;
        right:16px;
        top:10px;
        color: #999;
    }
</style>

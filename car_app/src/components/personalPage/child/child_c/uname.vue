<template>
    <div class="info_uname">
        <h2 class="log_h2">
            <router-link to="">awlbgtmhy6m</router-link>
            <i class="log_ic"></i>
        </h2>
        <img src="../../img/level1.png" class="level1"/>
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
</template>

<script>
export default {
    data(){
        return{
            img:require('../../img/i-icon.png')
        }
    }
}
</script>

<style scoped>
    .info_uname{
        padding-bottom: 2.4vh;
    }
    .log_ic{
        width:4.3vw;
        height:2.4vh;
        background: url('../../img/i-icon.png');
        background-position:0 0;
    }
    .log_h2{
        margin-bottom: 0;
    }
    .level1{
        width:30%;
    }
    .uname_info{
        text-align: center;
        display: flex;
        justify-content: space-around;
    }
    .info{
        display: block;
        width:27vw;
        font-size:1.25rem;
    }
</style>

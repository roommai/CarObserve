<template>
    <h2 class="log_h2">
        <router-link to="" class="code">
            <h5 v-if="uname==''">未登录</h5>
            <h5 v-else>{{uname}}</h5>
        </router-link>
        <i class="log_ic"></i>
    </h2>
</template>

<script>
import {mapState,mapActions} from "vuex"
export default {
    data(){return{}},
    computed:{
        ...mapState(["uname"])
    },
    methods:{
        ...mapActions(["getUserDetail"])
    },
    created(){
        this.getUserDetail();
    }
}
</script>

<style scoped>
    .log_h2{
        margin-bottom: 0;
    }
    .log_ic{
        width:4.3vw;
        height:2.4vh;
        background: url('./img/i-icon.png');
        background-position:0 0;
    }
    .code{
        color: #000;
        font-size: 1.264rem;
    }
</style>

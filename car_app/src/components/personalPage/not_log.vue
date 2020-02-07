<template>
    <div class="notlog">
        <nloghead></nloghead>
        <h2 class="account">账户登录</h2>
        <van-cell-group>
            <van-field v-model="uname" label="账户" placeholder="请输入手机号"/>
            <van-field v-model="upwd" label="密码" placeholder="请输入密码"/>
        </van-cell-group>
        <button type="primary" size="large" v-bind:class="{login1:c2,login2:c1}" class="login" @click="login({uname})" :disabled="!checked">登录</button>
        <div class="deal">
            <span class="left">
                <input type="checkbox" v-model="checked" :checked="checked" @click="checkbox">
                <router-link to="">《用户服务协议》</router-link><router-link to="">《隐私政策》</router-link>
            </span>
            <span class="left">
                <input type="checkbox" @click="do_remember">
                记住我
            </span>
        </div>
        <nlogfoot></nlogfoot>
        <span class="register" @click="go_register">注册</span>
    </div>
</template>

<script>

import nloghead from "./child/nlog_head.vue"
import nlogfoot from "./child/nlog_foot.vue"
import {mapState,mapMutations} from 'vuex';

export default {
    data(){
        return{
            uname:"",
            upwd:"",
            checked:false,
            c1:false,
            c2:true,
        }
    },
    methods: {
        ...mapMutations(["setRemember"]),
        do_remember(e){
            this.setRemember(e.target.checked)
        },
        checkbox(){
            if(this.c1=false){
                this.c1=this.checked;
                this.c2=!this.checked;
            }else{
                this.c1=!this.checked;
                this.c2=this.checked;
            }
        },      
        login(name){
            /*
            this.log({
                uname:this.uname,
                upwd:this.upwd
            })
            .then(()=>{
                if(this.remember){
                    localStorage.setItem("uname",this.uname)
                    console.log(uname);
                }else{
                    sessionStorage.setItem("uname",this.uname)
                    console.log(uname);
                }
            })
            */
            //  获取用户账号
            var  uname = this.uname;
            //  获取用户密码
            var  upwd = this.upwd; 
            //  创建正则  
            //var reg = /^1([38]\d|5[0-35-9]|7[3678])\d{8}$/;
            var reg_upwd=/^\d{9}$/;
            var reg_uname=/^[a-z0-9\u4e00-\u9fa5]{2,12}$/i;
            // 验证账号如果不匹配提示
            if(!reg_uname.test(uname)){
                this.$toast("账号格式不正确")
                return;
            }
            // 验证密码如果不匹配提示
            if(!reg_upwd.test(upwd)){
                this.$toast("密码格式不正确")
                return;
            }
            // 发送ajax请求完成登录验证
            var url = "user/signin";
            var obj = {uname,upwd};
            this.axios.post(url,obj).then(res=>{
                if(res.data.code == 1){
                    this.$toast("登录成功"); 
                    this.$router.push("/page");
                }else{
                    this.$toast("用户名或密码有误");
                }
            })
            .catch(err=>{
                console.log(err);
            })
        },
        go_register(){
            this.$router.push("reg");
        }
    },
    computed:{
        ...mapState(["remember"])
    },
    components:{
        "nlogfoot":nlogfoot,
        "nloghead":nloghead,
    }
    /*
    mounted(){
    //zww
    //尝试从浏览器的localStorage或者sessionStorage中获取uname变量
    //因为locaStorage和sessionStorage不受网页影响的，他们属于浏览器的存储进制。
    var uname=localStorage.getItem("uname")||sessionStorage.getItem("uname");
    this.setUname(uname||"");
    // console.log(uname)
        if(uname!=null){
        this.uname=uname;
        }
    },
    */
}
</script>

<style scoped>
    /*整体*/
    .notlog{
        position: relative;
        padding: 0 4vw;
    }
    /*账户登录*/
    .account{
        padding: 30px 0;
    }
    /*组件 按钮的边框、背景*/
    .van-button--primary{
        background: transparent;
        border: 0;
    }
    .login{
        width:100%;
        height:44px;
        border:0;
        margin-top: 4.5vh;
        border-radius: .1875rem;
    }
    /*登录按钮*/
    .login1{
        color: #fff;
        background: #c5cad4;
    }
    .login2{
        color: #fff;
        background: blue;
    }
    /*用户协议*/
    .deal {
        margin-top:2.3vh;
        font-size: .75rem;
    }
    .deal .left a{
        color: #ccc;
        border-bottom: 1px solid #999;
    }
    /* van-cell-group 与输入框 内边距 */
    .van-cell{
        padding: 10px 16px 10px 0;
    }
    /* van-cell-group 和 输入框 边框清0*/
    [class*=van-hairline]::after,.van-cell:not(:last-child)::after{
        border: 0;
    }
    .register {
        position: absolute;
        left: 46%;bottom: -35%;
    }
</style>

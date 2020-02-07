<template>
    <div class="notreg">
        <h2 class="account">账户注册</h2>
        <van-cell-group>
            <van-field v-model="uname" label="账户" placeholder="请输入用户名"/>
            <van-field v-model="upwd" label="密码" placeholder="请输入密码"/>
            <van-field v-model="upwd" label="密码" placeholder="请再次输入密码"/>
        </van-cell-group>
        <button type="primary" size="large" v-bind:class="{reg1:c2,reg2:c1}" class="reg" @click="reg" :disabled="!checked">注册</button>
        <!--zww-->

        <div class="deal">
            <span class="left">
                <input type="checkbox" v-model="checked" :checked="checked" @click="checkbox">
                <router-link to="">《用户服务协议》</router-link><router-link to="">《隐私政策》</router-link>
            </span>
        </div>
        <nlogfoot></nlogfoot>
    </div>
</template>

<script>
import nlogfoot from "./child/nlog_foot.vue"
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
        checkbox(){
            if(this.c1=false){
                this.c1=this.checked;
                this.c2=!this.checked;
            }else{
                this.c1=!this.checked;
                this.c2=this.checked;
            }
            // console.log(checked)
        },
        reg(name){          
            //获取用户名：
            var uname = this.uname;
            // 获取用户名密码
            var upwd = this.upwd; 
            // 正则表达式验证用户名和密码
            var reg_upwd=/^\d{9}$/;
            var reg_uname=/^[a-z0-9\u4e00-\u9fa5]{2,12}$/i;
            // reg_uname.test(this.uname)? console.log(("正确")):console.log(("格式错误"))
		    //  提示交互
            if(!reg_uname.test(uname)){
                this.$toast("用户名格式不正确");
                return;
            }else if(!reg_upwd.test(upwd)){
                this.$toast("密码格式不正确");
                return;        
            }else{
                //发送axios请求
                var url = "reg";//后端
                var obj = {uname,upwd};
                this.axios.post(url,obj).then(res=>{
                    // console.log(res.data.code);
                    if(res.data.code== 1){ 
                        this.$toast("注册成功");
                        this.$router.push("/nologin")    
                    }else{
                        this.$toast("用户名已存在");
                    }
		        })
                .catch(err=>{
                    this.$toast("注册失败"+err)
                })
		    }
	    }
    },
    components:{
        "nlogfoot":nlogfoot,
    },
}
</script>

<style scoped>
    /*整体*/
    .notreg{
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
    .reg{
        width:100%;
        height:44px;
        border:0;
        margin-top: 4.5vh;
        border-radius: .1875rem;
    }
    /*注册按钮*/
    .reg1{
        color: #fff;
        background: #c5cad4;
    }
    .reg2{
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
</style>

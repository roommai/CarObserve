//引入vuex组件
import Vue from 'vue'
import Vuex from 'vuex'

//zww
import axios from "axios"
//注册vuex组件
Vue.use(Vuex);

//创建全局对象
var store=new Vuex.Store({
  //共享数据
  state:{
    remember:false,
    uname:"",
  },
  //修改数据方法
  mutations:{
    //zww  不能异步
    setUname(state,uname){
      state.uname=uname;
    },
    setRemember(state,bool){
      state.remember=bool;
    }
  },
  //获取数据方法
  getters:{
    
  },
  //异步修改数据方法
  actions:{
    getUserDetail(context,user){//contextd代表整个vuex对象
      (async function(){
       var result=await axios.get("/user/details");
       context.commit("setUname",result.data.uname);
      })()
    }
  }
})



export default store
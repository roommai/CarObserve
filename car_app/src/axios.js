//引入axios组件
import Axios from 'axios'
import qs from 'qs'
import store from './store'


//配置axios基础路径
Axios.defaults.baseURL="http://127.0.0.1:3000/"

//是否发送session信息
//Axios.defaults.withCredentials=true

//axios拦截器
Axios.interceptors.request.use(
  config=>{
    console.log("进入请求拦截器...");
    if(config.method==="post"){
      config.data=qs.stringify(config.data)
    }
    if(!(config.url.split("?")[0]=="https://aip.baidubce.com/rest/2.0/image-classify/v1/car")){
      if(localStorage.getItem("token")){
        config.headers.token=localStorage.getItem("token");
      }
      if(sessionStorage.getItem("token")){
        config.headers.token=sessionStorage.getItem("token");
      }
    }
    return config;
  },
  error=>{
    console.log("===发送请求拦截器报错===")
    console.log(error);
    console.log("===end===");
    Promise.reject(error);
  }
);
Axios.interceptors.response.use(
  res=>{
    console.log("触发响应拦截器...")
    if(res.data.status==403 || res.data.code==-1){
      localStorage.removeItem("token");
      sessionStorage.removeItem("token");
    }else if(res.data.token){  
      if(store.state.remember){
        localStorage.setItem("token",res.data.token);
      }else{
        sessionStorage.setItem("token",res.data.token);
      }
    }
    return res;
  },
  error=>{
    
  }
)




export default {
  install: function(Vue, Option){
    Vue.prototype.axios=Axios;
  }
}
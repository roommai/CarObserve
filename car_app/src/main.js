import Vue from 'vue'
import App from './App.vue'

//引入公共仓库store
import store from './store'

//引入路由器
import router from './router'

//百度接口access_token(30天有效期)
var key="?access_token=24.d18f6db40ff3db6d653b639718cb33f7.2592000.1579229749.282335-17970677"
Vue.prototype.key=key

//引入PostCSS将px==>rem
import './rem.js'

//引入axios组件
import axios from './axios'
Vue.use(axios);
//zww
import {mapState} from "vuex"
import loghead from './components/personalPage/log_head.vue'
Vue.component("myloghead",loghead);

//引入第三方组件库 vant
//1:完整引入vant-ui组件库中所有组件
import Vant from "vant"
//2:单独引入vant-ui组件库中样式文件
import "vant/lib/index.css"
//3:将vant-ui注册vue实例中
Vue.use(Vant)
//4:将字体图标引入到当前项目中 !!出错
 //import "./meishifont/iconfont.css"

Vue.config.productionTip = false

var vm=new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')


//console.log(vm)
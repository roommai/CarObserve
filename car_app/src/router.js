import Vue from 'vue'
import VueRouter from 'vue-router'
import home from './components/home.vue'

//主页
import index from './components/index/index.vue'

//选车
import cardlist from './components/carlist/cardlist.vue'
import pvareaid from './components/carlist//pvareaid.vue'

//论坛路由
import luntan from './components/blog/luntan.vue'

//个人主页
import page from './components/personalPage/personalPage.vue'
import notlog from './components/personalPage/not_log.vue'
import reg from './components/personalPage/register.vue'
//import collect from './components/personalPage/child/collect.vue'
//import issued from './components/personalPage/child/issued.vue'
//import informa from './components/personalPage/child/informa.vue'

//360看车
import three_sixty from './components/three_sixty/three_sixty.vue'

Vue.use(VueRouter)

const routes = [
  //组件访问 路径    组件名 
  {path: '/',component: home,
    children:[
      {path:'/',component:index},
      {path:'/cardlist',component:cardlist},
      {path:'/luntan',component:luntan},
      {path:'/page',component:page,meta:{requireAuth:true}},
    ]
  },
  {path:'/reg',component:reg},
  {path:'/notlog',component:notlog},
  {path:'/three_sixty',component: three_sixty},
  {path:'/pvareaid',component: pvareaid},
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

router.beforeEach((to, from, next) => {
  if (to.meta.requireAuth) {
    if (sessionStorage.getItem("token")||localStorage.getItem("token")) {
      next();
    } else {
      next({
        path: "/notlog"//指向为登录界面
      });
    }
  } else {
    next();
  }
  if (to.fullPath === "/notlog") {
    if (sessionStorage.getItem("token")||localStorage.getItem("token")) {
      next({
        path: from.fullPath
      });
    } else {
      next();
    }
  }
});

export default router

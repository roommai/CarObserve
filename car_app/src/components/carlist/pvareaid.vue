<template>
<div>
    <van-nav-bar title="车系综述" left-text="返回" left-arrow @click-left="onClickLeft" @click-right="onClickRight">
        <van-icon name="search" slot="right" />
    </van-nav-bar>
    <div class="yincan" slot="right" @click="show = true">
        <div></div>
        <div></div>
        <div></div>
    </div>
    <van-overlay :show="show" @click="show = false">
        <div class="block" @click.stop>
            <div class="b_header">
                <router-link to="/not_log" class="b_header_login">
                    <img src="./img/jiqiren.png" alt="">登录
                </router-link>
                <span>|</span>
                <router-link to="#" class="b_header_reg">
                    注册
                </router-link>
            </div>
            <div class="b_content">
                <router-link to="/" class="b_content_item">
                    <span>首页</span>
                </router-link>
                <router-link to="/cardlist" class="b_content_item">
                    <span>找车</span>
                </router-link>
                <router-link to="/luntan" class="b_content_item">
                    <span>论坛</span>
                </router-link>
                <router-link to="#" class="b_content_item">
                    <span>金融</span>
                </router-link>
                <router-link to="#" class="b_content_item">
                    <span>二手车</span>
                </router-link>
                <router-link to="#" class="b_content_item">
                    <span>车商城</span>
                </router-link>
                <router-link to="#" class="b_content_item">
                    <span>服务</span>
                </router-link>
            </div>
        </div>
    </van-overlay>
    <div class="nav">
        <router-link to="#" class="item">
            <span>综述</span>
        </router-link>
        <router-link to="#" class="item">
            <span>配置</span>
        </router-link>
        <router-link to="#" class="item">
            <span>图片</span>
        </router-link>
        <router-link to="#" class="item">
            <span>文章</span>
        </router-link>
        <router-link to="#" class="item">
            <span>视频</span>
        </router-link>
        <router-link to="#" class="item">
            <span>论坛</span>
        </router-link>
        <router-link to="#" class="item">
            <span>口碑</span>
        </router-link>
        <router-link to="#" class="item">
            <span>车主价格</span>
        </router-link>
        <router-link to="#" class="item">
            <span>车友圈</span>
        </router-link>
        <router-link to="#" class="item">
            <span>问答</span>
        </router-link>
    </div>
    <div class="thumb">
        <router-link to="#" class="thumb_img_shipai">
            <img src="./img/2.jpg" alt="">
            <span class="sticker">实拍</span>
        </router-link>
        <router-link to="#" class="thumb_img_vr">
            <img src="./img/1.jpg" alt="">
            <span class="sticker">VR</span>
        </router-link>
        <router-link to="#" class="thumb_img_video">
            <img src="./img/0.jpg" alt="">
            <span class="sticker">视频</span>
        </router-link>
    </div>
    <div class="swipe">
        <van-swipe :autoplay="3000" indicator-color="white" class="s_img">
            <van-swipe-item>
                <img src="./img/3.jpg" alt="">
            </van-swipe-item>
            <van-swipe-item>
                <img src="./img/4.jpg" alt="">
            </van-swipe-item>
            <van-swipe-item>
                <img src="./img/5.jpg" alt="">
            </van-swipe-item>
            <van-swipe-item>
                <img src="./img/6.jpg" alt="">
            </van-swipe-item>
        </van-swipe>
        <div class="list">
            <router-link to="#">
                <van-icon class="list_icon" name="photo-o" size="10" />
                <span>实拍</span>
            </router-link>
            <router-link to="#">
                <van-icon name="browsing-history-o" class="list_icon" size="10" />
                <span>VR</span>
            </router-link>
            <router-link to="#">
                <van-icon name="play-circle-o" class="list_icon" size="10" />
                <span>视频</span>
            </router-link>
            <router-link to="#">
                <van-icon name="todo-list-o" class="list_icon" size="10" />
                <span>说明书</span>
            </router-link>
        </div>
    </div>
    <div class="car_detail">
        <div class="container">
            <h3>阿斯顿·马丁DBS<span>跑车 5.2T</span></h3>
            <router-link to="#" class="peizhi">
                <img src="./img/shuxingpeizhi.png" alt="">
                <span>参数匹配</span>
            </router-link>
            <div class="guide">
                指导价：<strong>399.80-409.80</strong>
            </div>
        </div>
        <div id="nav">
            <ul class="tag">
                <li><a href="">车主提车价 <span>1956条</span><van-icon name="arrow" class="v-icon" /></a></li>
                <li><a href="">降价通知<van-icon name="arrow" class="v-icon" /></a></li>
                <li><a href="">本地车市<van-icon name="arrow" class="v-icon" /></a></li>
                <li><a href="">用车助手<van-icon name="arrow" class="v-icon" /></a></li>
                <li><a href="">借钱<van-icon name="arrow" class="v-icon" /></a></li>
            </ul>
        </div>
        <div class="container comu">
            <router-link to="#">
                <strong>943</strong>
                <span>人正在热聊</span>
                <em>Hot</em>
                <van-icon name="arrow" class="v-icon_1" />
            </router-link>
        </div>
        <div class="nav_j">
            <ul class="nav_ul">
                <li>
                    <router-link to="">
                        <h3>经销商</h3>
                        <p>优惠报价</p>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <h3>分期</h3>
                        <p>低至0息</p>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <h3>二手车</h3>
                        <p>均价124.0万</p>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <h3>买新车</h3>
                        <p>享现金优惠</p>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <h3>换车助手</h3>
                        <p>以旧换新</p>
                    </router-link>
                </li>
            </ul>
            <div class="comu_c">
                <router-link to="#">
                    <span>促</span>
                    <span>车型全，价破冰！一键获取优惠！</span>
                    <van-icon name="arrow" class="v-icon_2" />
                </router-link>
            </div>
        </div>
        <div class="sticky">
            <van-sticky class="v_sticky">
                <ul class="s_ul">
                    <li class="line_blue">
                        <span>车型</span>
                    </li>
                    <li>
                        <span>资讯</span>
                    </li>
                    <li>
                        <span>小视频</span>
                    </li>
                    <li>
                        <span>讨论</span>
                    </li>
                    <li>
                        <span>口碑</span>
                    </li>
                    <li>
                        <span>数据说车</span>
                    </li>
                    <li>
                        <span>降价</span>
                    </li>
                </ul>
                <div class="nav_z">
                    <span class="line_blue">在售</span>
                    <span>在售</span>
                    <span>在售</span>
                    <span>在售</span>
                    <span>在售</span>
                    <span>在售</span>
                    <span>在售</span>
                    <span>在售</span>
                    <span>在售</span>
                    <span>在售</span>
                    <span>在售</span>
                </div>
            </van-sticky>
            <div class="container year">
                <div class="year1">
                    <h3>2020款</h3>
                    <div>
                        <div class="w_title">
                            <span>4.0升 双涡轮增压 510马力</span>
                        </div>
                        <ul>
                            <li>
                                <router-link to="#" class="caption">
                                    <span class="c_title"><strong>2019款 4.0T V8 珊瑚橘</strong></span>
                                    <span class="reality"><strong>228.80万起</strong></span>
                                    <span class="attention"><span>66%</span>的人关注</span>
                                    <span class="c_guide">厂商指导价：228.80万</span>
                                    <div class="c_handle">
                                        <router-link to="#" class="c_count">
                                            <i class="iconpng iconpng-count"></i> 计算
                                        </router-link>
                                        <router-link to="#" class="c_pk">
                                            <i class="iconpng iconpng-pk"></i> 对比
                                        </router-link>
                                        <router-link to="#" class="c_btn">
                                            获取底价
                                        </router-link>

                                    </div>
                                </router-link>
                            </li>
                            <li>
                                <router-link to="#" class="caption">
                                    <span class="c_title"><strong>2019款 4.0T V8 珊瑚橘</strong></span>
                                    <span class="reality"><strong>228.80万起</strong></span>
                                    <span class="attention"><span>66%</span>的人关注</span>
                                    <span class="c_guide">厂商指导价：228.80万</span>
                                    <div class="c_handle">
                                        <router-link to="#" class="c_count">
                                            <i class="iconpng iconpng-count"></i> 计算
                                        </router-link>
                                        <router-link to="#" class="c_pk">
                                            <i class="iconpng iconpng-pk"></i> 对比
                                        </router-link>
                                        <router-link to="#" class="c_btn">
                                            获取底价
                                        </router-link>

                                    </div>
                                </router-link>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <div class="w_title">
                            <span>2.0升 涡轮增压 252马力 国VI</span>
                        </div>
                        <ul>
                            <li>
                                <router-link to="#" class="caption">
                                    <span class="c_title"><strong>2019款 4.0T V8 珊瑚橘</strong></span>
                                    <span class="reality"><strong>228.80万起</strong></span>
                                    <span class="attention"><span>66%</span>的人关注</span>
                                    <span class="c_guide">厂商指导价：228.80万</span>
                                    <div class="c_handle">
                                        <router-link to="#" class="c_count">
                                            <i class="iconpng iconpng-count"></i> 计算
                                        </router-link>
                                        <router-link to="#" class="c_pk">
                                            <i class="iconpng iconpng-pk"></i> 对比
                                        </router-link>
                                        <router-link to="#" class="c_btn">
                                            获取底价
                                        </router-link>

                                    </div>
                                </router-link>
                            </li>
                            <li>
                                <router-link to="#" class="caption">
                                    <span class="c_title"><strong>2019款 4.0T V8 珊瑚橘</strong></span>
                                    <span class="reality"><strong>228.80万起</strong></span>
                                    <span class="attention"><span>66%</span>的人关注</span>
                                    <span class="c_guide">厂商指导价：228.80万</span>
                                    <div class="c_handle">
                                        <router-link to="#" class="c_count">
                                            <i class="iconpng iconpng-count"></i> 计算
                                        </router-link>
                                        <router-link to="#" class="c_pk">
                                            <i class="iconpng iconpng-pk"></i> 对比
                                        </router-link>
                                        <router-link to="#" class="c_btn">
                                            获取底价
                                        </router-link>

                                    </div>
                                </router-link>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="year2">
                    <h3>2018款</h3>
                    <div>
                        <div class="w_title">
                            <span>4.0升 双涡轮增压 510马力</span>
                        </div>
                        <ul>
                            <li>
                                <router-link to="#" class="caption">
                                    <span class="c_title"><strong>2019款 4.0T V8 珊瑚橘</strong></span>
                                    <span class="reality"><strong>228.80万起</strong></span>
                                    <span class="attention"><span>66%</span>的人关注</span>
                                    <span class="c_guide">厂商指导价：228.80万</span>
                                    <div class="c_handle">
                                        <router-link to="#" class="c_count">
                                            <i class="iconpng iconpng-count"></i> 计算
                                        </router-link>
                                        <router-link to="#" class="c_pk">
                                            <i class="iconpng iconpng-pk"></i> 对比
                                        </router-link>
                                        <router-link to="#" class="c_btn">
                                            获取底价
                                        </router-link>

                                    </div>
                                </router-link>
                            </li>
                            <li>
                                <router-link to="#" class="caption">
                                    <span class="c_title"><strong>2019款 4.0T V8 珊瑚橘</strong></span>
                                    <span class="reality"><strong>228.80万起</strong></span>
                                    <span class="attention"><span>66%</span>的人关注</span>
                                    <span class="c_guide">厂商指导价：228.80万</span>
                                    <div class="c_handle">
                                        <router-link to="#" class="c_count">
                                            <i class="iconpng iconpng-count"></i> 计算
                                        </router-link>
                                        <router-link to="#" class="c_pk">
                                            <i class="iconpng iconpng-pk"></i> 对比
                                        </router-link>
                                        <router-link to="#" class="c_btn">
                                            获取底价
                                        </router-link>

                                    </div>
                                </router-link>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <div class="w_title">
                            <span>2.0升 涡轮增压 252马力 国VI</span>
                        </div>
                        <ul>
                            <li>
                                <router-link to="#" class="caption">
                                    <span class="c_title"><strong>2019款 4.0T V8 珊瑚橘</strong></span>
                                    <span class="reality"><strong>228.80万起</strong></span>
                                    <span class="attention"><span>66%</span>的人关注</span>
                                    <span class="c_guide">厂商指导价：228.80万</span>
                                    <div class="c_handle">
                                        <router-link to="#" class="c_count">
                                            <i class="iconpng iconpng-count"></i> 计算
                                        </router-link>
                                        <router-link to="#" class="c_pk">
                                            <i class="iconpng iconpng-pk"></i> 对比
                                        </router-link>
                                        <router-link to="#" class="c_btn">
                                            获取底价
                                        </router-link>

                                    </div>
                                </router-link>
                            </li>
                            <li>
                                <router-link to="#" class="caption">
                                    <span class="c_title"><strong>2019款 4.0T V8 珊瑚橘</strong></span>
                                    <span class="reality"><strong>228.80万起</strong></span>
                                    <span class="attention"><span>66%</span>的人关注</span>
                                    <span class="c_guide">厂商指导价：228.80万</span>
                                    <div class="c_handle">
                                        <router-link to="#" class="c_count">
                                            <i class="iconpng iconpng-count"></i> 计算
                                        </router-link>
                                        <router-link to="#" class="c_pk">
                                            <i class="iconpng iconpng-pk"></i> 对比
                                        </router-link>
                                        <router-link to="#" class="c_btn">
                                            获取底价
                                        </router-link>

                                    </div>
                                </router-link>
                            </li>
                            <div class="load_more" v-if="a<3">展开查看更多车型
                                <van-icon name="arrow-down" />
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="advertisement">
                <div class="z_da">
                    <span class="font1">推荐车系</span><span class="font2">广告</span>
                    <ul>
                        <li>
                            <router-link to="#">
                                <img src="./img/asd05.jpg" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="#">
                                <img src="./img/asd05.jpg" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="#">
                                <img src="./img/asd05.jpg" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                            </router-link>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <router-link to="#">
                                <img src="./img/asd04.jpg" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="#">
                                <img src="./img/asd04.jpg" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="#">
                                <img src="./img/asd04.jpg" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                            </router-link>
                        </li>
                    </ul>
                </div>
                <div class="z_da">
                    <span class="font1">推荐二手车</span><span class="cars_more">查看更多</span>
                    <ul>
                        <li>
                            <router-link to="#">
                                <img src="./img/ca.jpg" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                                <p class="car_save">比新车节省13万</p>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="#">
                                <img src="./img/ca.jpg" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                                <p class="car_save">比新车节省13万</p>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="#">
                                <img src="./img/ca.jpg" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                                <p class="car_save">比新车节省13万</p>
                            </router-link>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <router-link to="#">
                                <img src="./img/rw.png" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                                <p class="car_save">比新车节省13万</p>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="#">
                                <img src="./img/rw.png" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                                <p class="car_save">比新车节省13万</p>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="#">
                                <img src="./img/rw.png" alt="">
                                <p class="car_title">名爵ZS</p>
                                <p class="car_price">27.97-33.97万</p>
                                <p class="car_save">比新车节省13万</p>
                            </router-link>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div style="height:50px"></div>
    </div>
    <div class="foot_fixed">
        <router-link to="#">
            <i class="iconpng iconpng-count"></i>
            <span>关注</span>
        </router-link>
        <router-link to="#" class="i_pk">
            <i class="iconpng iconpng-count"></i>
            <span>对比</span>
        </router-link>
        <router-link to="#" class="d_kuan">
            <i class="iconpng iconpng-count"></i>
            <span>贷款</span>
        </router-link>
        <router-link to="#" class="gain">
            <span>获取底价</span>
            <span>一键询全城</span>
        </router-link>
    </div>
</div>
</template>
<script>
export default {
    data() {
        return {
            show: false,
            images: [
                './img/3.jpg',
                './img/4.jpg',
                './img/5.jpg',
                '.img/6.jpg',
            ],
            active: 0,
            a: 1,
        }
    },
    methods: {
        onClickLeft() {
            this.$router.push("/cardlist")
        },
        onClickRight() {
            Toast('按钮');
        }
    }
}
</script>


<style>
/*组件样式*/
.van-nav-bar__right {
    right: 5rem !important;
}

.van-overlay {
    z-index: 2 !important;
    background-color: rgba(0, 0, 0, 0.5) !important;
}

.van-icon,
.van-icon::before {
    margin-right: 3px;
}

.van-sticky--fixed {
    background: #fff;
}
</style>

<style scoped>

/*隐藏导航栏*/

.yincan {
    position: absolute;
    right: 17px;
    top: 17px;
    width: 30px;
    text-align: center;
    z-index: 2 !important;
}

.yincan div {
    margin-bottom: 4px;
    width: 16px;
    height: 2px;
    background: #333;
}


/*导航*/

.item {
    display: inline-block;
    width: 20%;
    text-align: center;
    height: 36px;
    line-height: 36px;
    white-space: nowrap;
    color: #333;
    font-size: 14px;
}


/*显示部件*/

.block::before {
    content: "";
    position: absolute;
    top: -9px;
    right: 30px;
    border: solid;
    border-width: 0 10px 10px;
    border-color: transparent transparent #FFFFFF;
}

.block {
    position: absolute;
    top: 44px;
    right: 0;
    width: 65%;
    height: 150px;
    font-size: 14px;
    background-color: #fff;
}


/*消除高度崩塌*/

.b_header::after {
    content: "";
    display: block;
    clear: both;
}

.b_header_login {
    float: left;
    line-height: 36px;
    padding: 0 12px;
    color: #333;
}

.b_header_login img {
    width: 30px;
    height: 30px;
    vertical-align: bottom;
    margin: 0 16px 0 4px;
}

.b_header span {
    float: left;
    line-height: 36px;
}

.b_header_reg {
    float: left;
    line-height: 36px;
    padding: 0 12px;
    color: #333;
}

.b_content {
    padding-top: 12px;
}

.b_content_item {
    display: inline-block;
    width: 33.333%;
    text-align: center;
    color: inherit;
    line-height: 30px;
}

.thumb {
    position: relative;
    overflow: hidden;
}

.thumb a {
    display: block;
    position: relative;
}

.thumb_img_shipai {
    width: 64%;
    padding: 1px;
}

.thumb_img_shipai img {
    width: 100%;
}

.thumb_img_vr {
    position: absolute !important;
    top: 0;
    left: 64%;
    width: 36%;
}

.thumb_img_vr img {
    width: 100%;
    height: 77px;
}

.thumb_img_video {
    position: absolute !important;
    top: 50%;
    left: 64%;
    width: 36%;
}

.thumb_img_video img {
    width: 100%;
    height: 77px;
}

.sticker {
    position: absolute;
    right: 0;
    font-size: 10px;
    width: 40px;
    height: 20px;
    color: #fff;
    background: rgba(0, 0, 0, 0.3);
    line-height: 20px;
    text-align: center;
}

.s_img img {
    width: 100%;
}

.swipe {
    margin-top: -5px;
    position: relative;
}

.list {
    display: flex;
    flex-direction: column;
    position: absolute;
    width: 50px;
    height: 50%;
    top: 25%;
    right: 0;
}

.list a {
    position: relative;
    display: block;
    margin-top: 10px;
    width: 48px;
    height: 18px;
    line-height: 20px;
    background: rgba(0, 0, 0, 0.3);
    border-radius: 10px;
}

.list span {
    display: block;
    font-size: 9px;
    color: #fff;
    text-align: center;
    padding-left: 10px;
    white-space: nowrap;
    transform: scale(.8);
}

.list_icon {
    position: absolute;
    top: 4px;
    left: 3px;
    color: #fff;
}


/*车详细*/

.car_detail {
    position: relative;
}

.car_detail {
    position: absolute;
    background: #fff;
    border-radius: 20px;
    width: 100%;
    margin-top: -20px;
}

.container {
    position: relative;
    padding: 10px 20px;
}

.car_detail h3 {
    margin: 0;
}

.car_detail h3 span {
    padding-left: 5px;
    font-size: 10px;
    color: #666;
}

.peizhi {
    width: 42px;
    height: 40px;
    text-align: center;
    position: absolute;
    top: 10%;
    right: 10%;
    display: block;
    border: 1px solid #1989fa;
    border-radius: 3px;
    text-align: center;
    padding-top: 2px;
}

.peizhi img {
    width: 15px;
    height: 20px;
}

.peizhi span {
    display: block;
    font-size: 10px;
    color: #3f51b5;
    white-space: nowrap;
    transform: scale(.7);
}

.guide {
    margin-top: 5px;
    font-size: 10px;
    color: #666;
}

.guide strong {
    font-size: 16px;
    color: #f9712c;
}

.tag {
    display: flex;
    flex-wrap: nowrap;
    box-sizing: border-box;
    justify-content: space-between;
    overflow: auto;
    padding-left: 20px;
}

.tag::-webkit-scrollbar {
    display: none
}

#nav::after {
    margin-top: 10px;
    content: "";
    display: block;
    height: 0;
    border-top: 1px solid #eee;
}

.tag li {
    background: #f8f8f8;
    height: 20px;
    line-height: 20px;
    font-size: 10px;
    border-radius: 10px;
    padding: 0 8px;
    box-sizing: border-box;
    flex: 1 0 auto;
    margin-right: 10px;
}

.tag li a {
    color: #333332;
}

.tag li a span {
    color: #212121;
    font-weight: 550;
}

.v-icon {
    vertical-align: middle;
    margin: 0 0 0 4px;
}

.comu a {
    display: block;
    height: 30px;
}

.comu strong {
    float: left;
    color: #f9712c;
    font-size: 14px;
}

.comu span {
    font-size: 12px;
    color: #333;
}

.comu em {
    display: inline-block;
    width: 20px;
    height: 15px;
    background: #fd4d4d;
    border-radius: 8px 8px 8px 0;
    vertical-align: top;
    font-size: 10px;
    color: #fff;
    margin-left: 3px;
}

.v-icon_1 {
    margin-top: 5px;
    float: right;
}


/*滑动导航*/

.nav_ul {
    display: flex;
    justify-content: space-between;
    white-space: nowrap;
    overflow-x: auto;
}

.nav_ul::-webkit-scrollbar {
    display: none;
}

.nav_ul li {
    position: relative;
    flex: 1 auto 0;
}

.nav_j::before {
    content: "";
    display: block;
    height: 0px;
    border-top: solid #f8f8f8 .625rem;
    overflow: hidden;
}

.nav_j li+li::before {
    content: "";
    display: block;
    position: absolute;
    top: 25%;
    width: 1px;
    height: 25px;
    background: #eee;
}

.nav_j li a {
    display: block;
    width: 75px;
    padding: 10px 0px 10px 15px;
}

.nav_j li a h3 {
    font-size: 14px;
    margin-bottom: 4px;
    color: #212121;
}

.nav_j li a p {
    font-size: 10px;
    color: #666;
}

.comu_c {
    padding: 0 20px;
}

.comu_c a::before {
    content: "";
    display: block;
    height: 0px;
    border-top: solid #f8f8f8 2px;
    overflow: hidden;
}

.comu_c a {
    position: relative;
    display: block;
    height: 40px;
}

.comu_c a span:first-child {
    float: left;
    width: 20px;
    height: 20px;
    margin-top: 10px;
    font-size: 12px;
    color: #fff;
    line-height: 20px;
    text-align: center;
    border-radius: 5px 0 5px 0;
    background: #15c1ff;
}

.comu_c a span:nth-child(2) {
    float: left;
    color: #333;
    font-size: 12px;
    margin: 10px 0 0 10px;
}

.v-icon_2 {
    position: absolute;
    top: 30%;
    right: 1%;
}

.sticky::before {
    content: "";
    display: block;
    height: 0px;
    border-top: solid #f8f8f8 .625rem;
    overflow: hidden;
}

.v_sticky {
    background: #fff !important;
}

.sticky .s_ul {
    display: flex;
    white-space: nowrap;
    overflow: auto;
}

.sticky .s_ul::-webkit-scrollbar {
    display: none
}

.sticky .s_ul li {
    position: relative;
    display: block;
    text-align: center;
    padding: 10px 20px;
}

.sticky .s_ul li.line_blue span::after {
    content: "";
    display: block;
    position: absolute;
    bottom: 5px;
    width: 10px;
    height: 2px;
    left: 42%;
    background: #1989fa;
}

.sticky .s_ul .line_blue {
    font-size: 20px;
    color: #000;
    font-weight: 600;
}

.nav_z {
    white-space: nowrap;
    overflow: auto;
    margin-bottom: 5px;
}

.nav_z::-webkit-scrollbar {
    display: none
}

.nav_z>span {
    display: inline-block;
    font-size: 12px;
    padding: 5px 20px;
    margin-left: 20px;
    border-radius: 14px;
    background: #f8f8f8;
}

.nav_z>span.line_blue {
    background: #e9f1ff;
    color: #2873ff;
}

.w_title {
    margin: 0 -20px;
    padding: 0 20px;
    background: #f8f8f8;
}

.w_title span {
    font-size: 12px;
}

.year h3 {
    font-size: 14px;
    margin: 5px 0;
}

.year li {
    padding: 10px 0;
    border-bottom: 1px solid #eee;
}

.year li::after {
    content: "";
    display: block;
    clear: both;
}

.year li span {
    margin-bottom: 6px;
}

.caption {
    float: left;
}

.caption .c_title {
    float: left;
    color: #212121;
    font-size: 15px;
}

.caption .reality {
    float: right;
    color: #f9712c;
    font-size: 15px;
}

.caption .attention {
    float: left;
    color: #666;
    font-size: 12px;
}

.caption .attention span {
    color: #2873ff;
}

.caption .c_guide {
    float: right;
    font-size: 12px;
    color: #666;
}

.c_handle {
    float: left;
    margin: 10px 0;
    overflow: hidden;
    width: 100%;
}

.c_handle a {
    float: left;
    font-size: 14px;
    color: #2873ff;
    line-height: 36px;
}

.c_count {
    margin-right: 40px;
}

.c_pk {
    margin-right: 10px;
}

.c_handle .iconpng::before,
.foot_fixed .iconpng::before {
    content: "";
    display: inline-block;
    vertical-align: top;
    background: url("./img/summary_icon.png") no-repeat;
    background-size: auto;
    background-size: 64px auto;
}

.c_handle .iconpng-count::before {
    width: 16px;
    height: 16px;
    margin: 10px 1px 0 0;
    background-position: 0px -22px;
}

.c_handle .iconpng-pk::before {
    width: 18px;
    height: 16px;
    margin: 10px 1px 0 0;
    background-position: 0px -43px;
}

.c_handle .pk.disabled .iconpng-pk::before {
    background-position: -16px -43px;
}

.c_handle .pk.disabled {
    color: #ccc;
    pointer-events: none;
}

.c_btn {
    margin: 0;
    width: 45%;
    height: 36px;
    line-height: 36px;
    text-align: center;
    background: #e9f1ff;
    border-radius: 6px;
}

.load_more {
    height: 40px;
    line-height: 40px;
    font-size: 14px;
    color: #2873ff;
    text-align: center;
}

.advertisement::before {
    content: "";
    display: block;
    height: 0px;
    border-top: solid #f8f8f8 .625rem;
    overflow: hidden;
}


/*广告*/

.z_da {
    margin-top: 1rem;
    padding: 0 1.0rem;
    border-bottom: 2px solid #f8f8f8;
}

.z_da .font1 {
    font-size: 18px;
    font-weight: bold;
}

.z_da .font2 {
    font-size: 0.2rem;
    color: #ccc;
    padding-left: 0.3rem;
}

.z_da ul {
    margin: 20px 0;
    display: flex;
    justify-content: space-between;
}

.z_da li {
    text-align: center;
}

.z_da p.car_title {
    margin: 0;
    color: #000;
    font-size: 8px;
    font-weight: bold;
}

.z_da p.car_price {
    margin-top: 4px;
    font-size: 10px;
    color: #f9712c;
    font-weight: bold;
}

.z_da img {
    width: 94px;
    height: 70px;
}

.cars_more {
    float: right;
    font-size: 12px;
    color: #212121;
}

.car_save {
    color: #666;
    font-size: 12px;
    margin-top: 4px;
}


/*底部固定栏*/

.foot_fixed {
    width: 100%;
    height: 50px;
    position: fixed;
    text-align: center;
    bottom: 0;
    background: #fff;
    box-shadow: 1px 1px 1px #000;
    display: flex;
    justify-content: space-around;
    align-items: center;
}

.foot_fixed .iconpng::before {
    background-size: 110px auto;
}

.foot_fixed .iconpng-count::before {
    width: 25px;
    height: 25px;
    background-position: 0px -236px;
}


/*pk*/

.foot_fixed .i_pk .iconpng::before {
    background-size: 100px auto;
}

.foot_fixed .i_pk .iconpng-count::before {
    background-position: -57px -67px;
}


/*贷款*/

.foot_fixed .d_kuan .iconpng::before {
    background-size: 90px auto;
}

.foot_fixed .d_kuan .iconpng-count::before {
    background-position: 0 -476px;
}

.foot_fixed a {
    display: inline-block;
    text-align: center;
    margin-top:3px;
}

.foot_fixed a+a {
    margin-left: 10px;
}

.foot_fixed span {
    margin-top: 5px;
    font-size: 12px;
    color: #666;
    display: block;
}

.gain {
    width: 45%;
    height: 45px;
    background: #2873ff;
    border-radius: 5px;
    margin: 0 !important;
}

.gain span:first-child {
    font-size: 16px;
    color: #fff;
}

.gain span:last-child {
    margin: 0;
    font-size: 12px;
    color: #fff;
    transform: scale(.8)
}
</style>



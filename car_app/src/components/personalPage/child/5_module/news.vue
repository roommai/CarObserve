<template>
<div>
    <!--我的消息-->
    <div class="news">
        <div class="news_t">
            <h3 class="new1">我的消息</h3>
        </div>
        <ul class="new2">
            <li>
                <router-link to="">
                    <i class="new_i1 new"></i>
                    <span>评论回复</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="new_i2 new"></i>
                    <span>论坛回复</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="new_i3 new"></i>
                    <span>私信</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="new_i4 new"></i>
                    <span>车友圈</span>
                </router-link>
            </li>
        </ul>
    </div>
    <!--我的会员-->
    <div class="vip">
        <div class="news_t">
            <h3 class="new1">我的会员</h3>
        </div>
        <ul class="vip2">
           <li>
                <router-link to="">
                    <span>
                        里程值
                        <van-icon name="arrow" />
                    </span>
                    <strong class="vip_num">10</strong>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <span>
                        万里通积分
                        <van-icon name="arrow" />
                    </span>
                    <strong class="vip_num">10</strong>
                </router-link>
            </li>
        </ul>
    </div>
    <!--我的车辆-->
    <div class="car">
        <div class="news_t">
            <h3 class="car_l">我的车辆</h3>
            <router-link to="" class="car_r">
                我的车库
                <van-icon name="arrow" />
            </router-link>
        </div>
        <div class="add">
            <router-link to="" class="add_car">
                <van-icon name="plus" />
                <span class="add_tips">添加认证车</span>
            </router-link>
            <span class="add_desc">享受便捷车主服务</span>
        </div>
        <ul class="car2">
            <li>
                <router-link to="">
                    <i class="car_i1 new"></i>
                    <span>预约保养</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="car_i2 new"></i>
                    <span>油卡充值</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="car_i3 new"></i>
                    <span>低价车险</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="car_i4 new"></i>
                    <span>保值率</span>
                </router-link>
            </li>
        </ul>
    </div>
    <!--我的钱包-->
    <div class="wallet">
        <div class="news_t">
            <h3 class="new1">我的钱包</h3>
        </div>
        <!--资产信息-->
        <ul class="wallet2">
           <li>
                <router-link to="">
                    <span>
                        账户资产(元)
                        <van-icon name="arrow" />
                    </span>
                    <strong class="wallet_num">0.00</strong>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <span>
                        万里通积分(元)
                        <van-icon name="arrow" />
                    </span>
                    <strong class="wallet_num">500,000</strong>
                </router-link>
            </li>
        </ul>
        <!--底部小图标-->
        <ul class="wallet3">
            <li>
                <router-link to="">
                    <i class="wallet_i1 new"></i>
                    <span>车主信用卡</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="wallet_i2 new"></i>
                    <span>分期购车</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="wallet_i3 new"></i>
                    <span>低息借钱</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="wallet_i4 new"></i>
                    <span>意外险</span>
                </router-link>
            </li>
        </ul>
    </div>
    <!--常用工具-->
    <div class="tools">
        <div class="news_t">
            <h3 class="new1">常用工具</h3>
        </div>
        <ul class="tools2">
            <li>
                <router-link to="">
                    <i class="tools_i1 new"></i>
                    <span>我的优惠券</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="tools_i2 new"></i>
                    <span>我的草稿</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="tools_i3 new"></i>
                    <span>七步买车</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="tools_i4 new"></i>
                    <span>经销商咨询</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="tools_i5 new"></i>
                    <span>经销商咨询</span>
                </router-link>
            </li>
            <li>
                <router-link to="">
                    <i class="tools_i6 new"></i>
                    <span>经销商咨询</span>
                </router-link>
            </li>
        </ul>
    </div>
</div>   
</template>

<script>
export default {

}
</script>

<style scoped>
    /*整体*/
    .news,.vip,.car,.wallet,.tools{
        background: #fff;
        border-radius: .625rem;
    }
    .vip,.car,.wallet,.tools{
        margin-top: 20px;
    }
    .news_t{
        padding: 1rem;
    }
     /*字体大小 我的消息 车辆左边*/
    .new1,.car_l{
        font-size: 1.125rem;
        color:#111e36;
        font-weight: 600;
    }
    /*5个模块共有的*/
    .new2,.vip2,.car2,.wallet2,.wallet3{
        display: flex;
    }
    .tools2{
        display: flex;
        flex-wrap: wrap;
    }
    .new2 li,.car2 li,.wallet3 li,.tools2 li{
        width:25%;
        text-align: center;
        padding-bottom: .75rem;
    }
    /*字体*/
    .new2 li span,.vip2 li span,.car2 li span,.wallet2 li span,.wallet3 li span,.tools2 li span{
        font-size:11px;
        color: #111e36;
    }
    /*我的消息*/
    .new{
        display: block;
        width: 28px;
        height: 28px;
        margin: 0 auto;
        text-align: center;
    }
    /*我的会员 我的钱包*/
    .vip,.wallet{
        padding: .25rem 0 1rem;
    }
    .vip2 li,.wallet2 li{
        width: 44%;
        padding-left: 1rem;
        position: relative;
    }
    /*竖线*/
    .vip2 li:not(:first-child):before,.wallet2 li:not(:first-child):before{
        display: inline-block;
        width: 0px;
        content: "";
        height: 100%;
        border-left: 1px solid #e6ebf5;
        position: absolute;
        top: 0;
        left: 0;
    }
    .vip2 li span,.wallet2 li span{
        color: #666d7f;
        font-weight: 300;
        padding-bottom: .375rem;
    }
    .vip_num,.wallet_num{
        display: block;
        font-size: 1.375rem;
        color: #f9712c;
        font-weight: 700
    }
    /*我的车辆的左标题*/
    .car_l{
        display: inline-block;
    }
    /*我的车辆的右标题*/
    .car_r{
        float: right;
        color: #666d7f;
    }
    /*我的车辆的中间部分内容*/
    .add .add_car{
        display: block;
        width: 8.75rem;
        height: 2rem;
        line-height: 2rem;
        text-align: center;
        margin: 0 auto;
        color: #fff;
        background-color:#05f; 
        border-radius: .25rem;
    }
    .add .add_desc{
        display: block;
        color: #666d7f;
        font-weight: 300;
        text-align: center;
        margin: 0 auto;
        font-size: 11px;
        padding:7px 0 10px; 
    }
    /*我的车辆里的两个ul 之间的距离*/
    .wallet2{
        padding-bottom: 16px;
    }
    /*图片*/
    /*我的消息*/
    .new_i1{
        background: url("../../img/new/new1.png") no-repeat;
    }
    .new_i2{
        background: url("../../img/new/new2.png") no-repeat;
    }
    .new_i3{
        background: url("../../img/new/new3.png") no-repeat;
    }
    .new_i4{
        background: url("../../img/new/new4.png") no-repeat;
    }
    /*我的车辆*/
    .car_i1{
        background: url("../../img/car/car1.png") no-repeat;
    }
    .car_i2{
        background: url("../../img/car/car2.png") no-repeat;
    }
    .car_i3{
        background: url("../../img/car/car3.png") no-repeat;
    }
    .car_i4{
        background: url("../../img/car/car4.png") no-repeat;
    }
    /*我的钱包*/
    .wallet_i1{
        background: url("../../img/wallet/wallet1.png") no-repeat;
    }
    .wallet_i2{
        background: url("../../img/wallet/wallet2.png") no-repeat;
    }
    .wallet_i3{
        background: url("../../img/wallet/wallet3.png") no-repeat;
    }
    .wallet_i4{
        background: url("../../img/wallet/wallet4.png") no-repeat;
    }
    /*常用工具*/
    .tools_i1{
        background: url("../../img/tools/tools1.png") no-repeat;
    }
    .tools_i2{
        background: url("../../img/tools/tools2.png") no-repeat;
    }
    .tools_i3{
        background: url("../../img/tools/tools3.png") no-repeat;
    }
    .tools_i4{
        background: url("../../img/tools/tools4.png") no-repeat;
    }
    .tools_i5{
        background: url("../../img/tools/tools5.png") no-repeat;
    }
    .tools_i6{
        background: url("../../img/tools/tools6.png") no-repeat;
    }
</style>

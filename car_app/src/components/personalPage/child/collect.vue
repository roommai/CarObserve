<template>
    <div class="collect">
    <van-tabs v-model="activeName">
        <van-tab title="贴子" name="a">
            <div class="u-collect-null">
                你还没有收藏帖子
            </div>
            <div class="title">
                <h3>快速进入帖子，一起来体验收藏/订阅吧。</h3>
            </div>
            <ul class="collect_ul">
                <li>
                    <router-link to="">
                        <span class="ul_i">
                            <img src="../img/quality/quality1.jpg"/>
                        </span>
                        <span class="ul_desc">S90 20款智远+北极星1000公里</span>
                    </router-link>
                </li>
            </ul>
        </van-tab>
        <van-tab title="文章" name="b">2</van-tab>
        <van-tab title="精选" name="c">3</van-tab>
        <van-tab title="车系" name="d">4</van-tab>
        <van-tab title="口碑" name="e">5</van-tab>
        <van-tab title="视频" name="f">6</van-tab>
        <van-tab title="车家号" name="j">7</van-tab>
    </van-tabs>
    </div>
</template>

<script>
export default {
    data(){
        return{
            activeName:'a'
        }
    }
}
</script>

<style scoped>
    .collect{
        font-size: 16px;
        color: #4e5563;
    }
    .u-collect-null{
        padding: 35px 0;
        text-align: center;
    }
    .title{
        background: #e1e5ed;
    }
    .title h3{
        padding: 11px 0 11px 10px;
        /* padding: 0.6875rem 0 0.6875rem 0.625rem; */
        font-size: 14px;
        font-weight: 500;
    }
    /*ul里的内容*/
    .collect_ul li{
        border-bottom: solid #e1e7ee 1px;
        padding: 0 40px 0 0;
        width:335px;
        height: 4.85rem;
        /* font-size:15px; */
    }
    .collect_ul li a{
        display: block;
        padding: 0.75rem 5px;
    }
    .ul_i{
        float: left;
        width: 80px;
        height: 60px;
        margin: 0 10px 0 0;
        text-align: center;
    }
    .ul_desc{
        display: block;
        max-height:48px;
        color: #3b5997;
        font-size: 12px;
        overflow: hidden;
    }
</style>

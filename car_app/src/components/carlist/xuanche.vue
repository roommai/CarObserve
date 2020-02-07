<template>
<div class="xuanche">
    <!-- 选车 -->
    <div>
        <div class="search_box">
            <div class="search">
                <van-icon name="search" />
                <span>请输入车辆名称或品牌</span>
            </div>
            <div class="robot">
                <a href="javascript:;"><img src="./img/jiqiren.png" alt=""></a>
            </div>
        </div>
        <!-- 按类查车 -->
        <div class="search_sort">
            <ul>
                <li>
                    <a href="javascript:;">
                        <img src="./img/ChsEj12C2zGAOF7lAAAdEQfHcAQ669.png" alt="">
                        <p>销售排行</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="./img/ChsEj12C2zGAOF7lAAAdEQfHcAQ669.png" alt="">
                        <p>销售排行</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="./img/ChsEj12C2zGAOF7lAAAdEQfHcAQ669.png" alt="">
                        <p>销售排行</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="./img/ChsEj12C2zGAOF7lAAAdEQfHcAQ669.png" alt="">
                        <p>销售排行</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="./img/ChsEj12C2zGAOF7lAAAdEQfHcAQ669.png" alt="">
                        <p>销售排行</p>
                    </a>
                </li>
            </ul>
            <ul class="car_logo">
                <li>
                    <a href="javascript:;">
                        <img src="./img/bentian.jpg" alt="">
                        <p>本田</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="./img/dazhong.png" alt="">
                        <p>大众</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="./img/woerte.jpg" alt="">
                        <p>沃尔特</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="./img/baoma.jpg" alt="">
                        <p>宝马</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <img src="./img/benci.jpg" alt="">
                        <p>奔驰</p>
                    </a>
                </li>
            </ul>
            <ul class="car_price">
                <li>
                    <a href="javascript:;">
                        <p>5-8万</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <p>5-8万</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <p>5-8万</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <p>5-8万</p>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <p>5-8万</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- 主打车 -->
    <div class="z_da">
        <span class="font1">主打车</span><span class="font2">广告</span>
        <ul>
            <li>
                <a href="javascript:;">
                <img src="./img/qiche1.jpg" alt="">
                <p>名爵ZS</p>
              </a>
            </li>
            <li>
                <a href="javascript:;">
                <img src="./img/qiche1.jpg" alt="">
                <p>名爵ZS</p>
              </a>
            </li>
            <li>
                <a href="javascript:;">
                <img src="./img/qiche1.jpg" alt="">
                <p>名爵ZS</p>
              </a>
            </li>
        </ul>
        <ul>
            <li>
                <a href="javascript:;">
                <img src="./img/qiche1.jpg" alt="">
                <p>名爵ZS</p>
              </a>
            </li>
            <li>
                <a href="javascript:;">
                <img src="./img/qiche1.jpg" alt="">
                <p>名爵ZS</p>
              </a>
            </li>
            <li>
                <a href="javascript:;">
                <img src="./img/qiche1.jpg" alt="">
                <p>名爵ZS</p>
              </a>
            </li>
        </ul>
        <div class="flexed">
            <span>看过：</span>
            <ul>
                <li>轩逸</li>
                <li>轩逸</li>
                <li>轩逸</li>
            </ul>
        </div>
    </div>
    <!-- 索引 -->
    <van-index-bar>
        <van-index-anchor index="A" />
        <ul class="m_img">
            <van-cell is-link @click="showPopup">
                <li>
                    <a href="javascript:;">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
                </li>
            </van-cell>
            <van-cell is-link @click="showPopup">
                <li>
                    <a href="javascript:;">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
                </li>
            </van-cell>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
        </ul>
        <van-index-anchor index="B" />
        <ul class="m_img">
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
        </ul>
        <van-index-anchor index="C" />
        <ul class="m_img">
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
        </ul>
        <van-index-anchor index="C" />
        <ul class="m_img">
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
        </ul>
        <van-index-anchor index="C" />
        <ul class="m_img">
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
            <li>
                <a href="">
                    <img src="./img/aodi.jpg" alt="">
                    <span>奥迪</span>  
                </a>
            </li>
        </ul>
        <van-popup v-model="show" position="right" :style="{ width: '65%',height: '100%' }" class="m_popup">
            <van-tabs v-model="active" title-active-color="#1989fa" title-inactive-color="#333">
                <van-tab title="在售">
                    <div class="category">
                        <div class="category_title">
                            <p>阿斯顿·马丁</p>
                        </div>
                        <div class="category_content">
                            <ul class="category_content_car">
                                <li>
                                    <router-link to="/pvareaid">
                                        <img src="./img/asd01.jpg" alt="">
                                        <div>
                                            <p class="title">阿斯顿·马丁DBX</p>
                                            <p class="price">237.80万</p>
                                            <div class="paydown">
                                                <router-link to="#">
                                                    <van-tag color="rgba(40,115,255,0.1)" text-color="#2873ff">首付37.36万</van-tag>
                                                </router-link>
                                            </div>
                                        </div>
                                    </router-link>
                                </li>
                            </ul>
                        </div>
                    </div>
                </van-tab>
                <van-tab title="全部">

                </van-tab>
            </van-tabs>
        </van-popup>
    </van-index-bar>

</div>
</template>


<script>
export default {
    data() {
        return {
            value: "",
            show: false,
            active: 0,
        }
    },
    methods: {
        showPopup() {
            this.show = true;
        },
    }
}
</script>




<style scoped>
p {
    margin: 0;
}

.xuanche::before {
    display: table;
    content: "";
}

.search_box {
    display: flex;
    margin-top: 48px;
    justify-content: space-between;
    align-items: center;
    padding: 0 1.6rem;
}

.search {
    width: 85%;
    height: 1.8rem;
    line-height: 1.8rem;
    font-size: 8px;
    border: 1px solid #1989fa;
    border-radius: .2rem;
    padding-left: .6rem;
}

.robot img {
    width: 1.5rem;
    height: 1.5rem;
}

.van-icon-search:before {
    vertical-align: middle;
    color: #1989fa;
}

.search span {
    color: #1989fa;
    padding-left: .4rem;
}

.search_sort {
    padding: 0 1.6rem;
}

.search_sort::before {
    display: table;
    content: "";
}

.search_sort ul {
    margin-top: 0.6rem;
    display: flex;
    justify-content: space-between;
}

.search_sort ul li {
    text-align: center;
}

.search_sort img {
    width: 2.5rem;
    height: 2.5rem;
}

.search_sort p {
    margin: 0;
    color: #212121;
    font-size: 8px;
}

.car_price li {
    display: block;
    width: 3.0rem;
    height: 2.0rem;
    line-height: 2.0rem;
    background: #f8f9fc;
    border-radius: .2rem;
}


/* 主打车 */

.z_da {
    margin-top: 1rem;
    padding: 0 1.0rem;
}

.z_da .font1 {
    font-size: .9rem;
    font-weight: bold;
}

.z_da .font2 {
    font-size: 0.2rem;
    color: #ccc;
    padding-left: 0.3rem;
}

.z_da ul {
    margin-top: 0.6rem;
    display: flex;
    justify-content: space-between;
}

.z_da li {
    text-align: center;
}

.z_da p {
    margin: 0;
    color: #212121;
    font-size: 8px;
}

.z_da img {
    width: 6rem;
    height: 3rem;
}

.flexed {
    font-size: .8rem;
    margin-top: 0.6rem;
    display: flex;
    align-items: center;
}

.flexed ul {
    margin-top: 0;
}

.flexed li {
    display: block;
    margin-left: 0.8rem;
    line-height: 1.8rem;
    width: 4.0rem;
    height: 1.8rem;
    border-radius: 1rem;
    background: #fff;
    box-shadow: 0.025rem 0.0625rem 0.2625rem #ccc;
    color: #212121;
    font-size: 8px;
}

.flexed span {
    font-size: .7rem;
    font-weight: bold;
}

.m_img img {
    margin: 5px 16px 5px 20px;
    vertical-align: middle;
    width: 2.5rem;
    height: 2.5rem;
}

.m_img span {
    color: #000;
}

.category_title {
    height: 25px;
    font-size: 11px;
    line-height: 25px;
    padding-left: 10px;
    background: #f8f8f8;
}

.category_content_car a {
    display: flex;
    align-items: center;
    color: #333;
    overflow: hidden;
    padding: 5px 0 5px 8px;
}

.category_content_car img {
    margin: 0 8px 0 0;
    width: 80px;
    height: 60px;
}

.category_content_car .title {
    font-size: 14px;
    white-space: nowrap;
}

.category_content_car .price {
    color: #f9712c;
    font-size: 12px;
    margin-top: 5px;
}

.category_content_car .paydown a {
    display: block;
    line-height: 16px;
    font-size: 8px;
    color: #1989fa;
    white-space: nowrap;
    padding: 5px 0 5px 0;
}
</style>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>壁纸首页</title>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row" id="app">
        <p class="title"><button type="button" @click="getData()" id="test">点我</button><strong>刘恋</strong></p>

        <hr>
        <div class="card"  v-for="(item,index) in topics" :key="index">
            <div class="left"><img :src="item.avatar" class="cover"></div>
            <div class="right">{{item.nickname}}</div>
        </div>
    </div>
</div>


<script type="text/javascript">
    var app = new Vue({
        el: '#app',
        data: {
            topics:[]
        },
        created: function() {

        },
        //方法
        methods:{
           getData(){
                var _this = this;
                //接口地址
                axios.get('http://localhost:8080/users')
                //回调函数
                    .then(function(response) {
                        console.log(response)
                        _this.topics = response.data
                    })
            }
        },
        //计算
        computed:{

        }
    })
</script>
</body>
</html>

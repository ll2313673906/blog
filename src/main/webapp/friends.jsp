<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/8
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>好友管理</title>
    <link rel="stylesheet" href="css.css">
    <link rel="stylesheet" type="text/css" href="sdmenu.css" />

    <style>
        body{
            background:orangered;
        }
        .container{
            background: mediumpurple;
            width: 100%;
            height: 100%;
           padding: 10px;
        }
        .left{
            width: 19%;
            height: 700px;
            background: white;
            float: left;
        }
        .main{
            width: 80%;
            height: 800px;
            margin-left: 1%;
            border:1px solid #7b1fa2;
            float: left;
        }

        /*左侧导航栏*/
       
        #my_menu{
            width: 100%;
            height: 100%;
            background: orangered;
        }
        #my_menu div{
            background: #7b1fa2;
            width: 100%;
            padding-top: 30px;

        }
        #my_menu div span{
          height: 30px;
            margin-top: -30px;
        }
    /*搜索栏*/
        .search{
            background:blue;
            width: 100%;
            height:20% ;
            text-align: center;
        }

        input[type = search]{
            margin: 20px auto;
            border-radius: 5px;
            border: none;
            height: 35px;
        }
        /*用于存放好友的头像和好友的昵称*/
     a img{
        width:60px;
         height: 60px;
         border-radius: 50%;
     }
    /*点击左侧下拉框右侧显示响应的信息*/
        #content li div{
            width: 100%;
            height: 100%;
            background:palegreen;
        }
        #content li{
           display: none;
        }

        #content li div iframe{
            width: 100%;
            height: 100%;
        }

    </style>

    <script type="text/javascript" src="tools.js"></script>
    <script type="text/javascript">
        window.onload = function(){
            var menuSpan = document.querySelectorAll(".menuSpan");
            var openDiv = menuSpan[0].parentNode;
            for(var i=0 ; i<menuSpan.length ; i++){
                menuSpan[i].onclick = function(){
                    var parentDiv = this.parentNode;
                    toggleMenu(parentDiv);
                    if(openDiv != parentDiv  && !hasClass(openDiv , "collapsed")){
                        toggleMenu(openDiv);
                    }
                    openDiv = parentDiv;
                };
            }

            function toggleMenu(obj){
                var begin = obj.offsetHeight;
                toggleClass(obj , "collapsed");
                var end = obj.offsetHeight;
                obj.style.height = begin + "px";
                move(obj,"height",end,10,function(){
                    obj.style.height = "";
                });
            }
        };
    </script>
</head>
<body>
<div class="container">
    <div class="left" id="left">
<%--        /*搜索栏*/--%>
        <div class="search">
            <input type="search" placeholder="请输入账号">
        </div>
        <div id="my_menu" class="sdmenu">
            <div>
                <span class="menuSpan">家人</span>
                <ul id="nav">
                    <li class="active"> <a><img src="img/rewu1.png" alt="">杨幂</a></li>
                    <li><a><img src="img/avatar.png" alt=""> 宋明国</a></li>
                    <li> <a><img src="img/rewu1.png" alt="">杨幂</a></li>
                    <li> <a><img src="img/rewu1.png" alt="">杨幂</a></li>
                </ul>
            </div>
            <div class="collapsed">
                <span class="menuSpan">同事</span>
                <a href="#">好友</a>
                <a href="#">好友</a>

            </div>
            <div class="collapsed">
                <span class="menuSpan">好友</span>
                <a href="#">好友</a>
                <a href="#">好友</a>

            </div>
            <div class="collapsed">
                <span class="menuSpan">同学</span>
                <a href="#">好友</a>
                <a href="#">好友</a>
            </div>
        </div>
    </div>
    <div class="main">

        <ul id="content">
            <li style="display: block"><div class="div1">
                <iframe src="friendsInfo.jsp" frameborder="0">

                </iframe></div></li>
            <li><div class="div2">第二个</div></li>
            <li><div class="div3">第三个</div></li>
            <li><div class="div4">第四个</div></li>
        </ul>
    </div>
    <script type="text/javascript">
        var nav =document.getElementById("nav");
        var navlist = nav.children;
        var con = document.getElementById("content");
        var conlist = con.children;
        for (var i= 0;i<navlist.length;i++){
            navlist[i].index = i;
            navlist[i].onclick = function (){
                for (var m = 0;m< conlist.length;m++){
                    navlist[m].className = "";
                    conlist[m].style.display ="none";
                }
                this.className = "active";
                conlist[this.index].style.display = "block";
            }
        }
    </script>
</div>
</body>
</html>

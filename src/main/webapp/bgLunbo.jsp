<%@ page import="com.soft1841.web.blog.entity.User" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/16
  Time: 1:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css.css">
    <style type="text/css">
         body{
             position: relative;
         }
        *{
            margin: 0;
            padding: 0;
        }

        #outer{
            width:100%;
            height:100%;
            margin:0 auto;
            background-color: greenyellow;
            /*设置文本居中*/
            text-align: center;
            position:relative;
            padding-top: 0;
        }
        img{
            width: 100%;
            height: 100%;
        }
        .img-div{
            width:100%;
            height:100%;
            margin-left: 0;
        }

        /*home*/
        *{
            margin: 0;
            padding: 0;
        }
        body{
            margin: 0;
            padding: 0;
        }
        .top{
            margin: 0 auto;
            padding: 0;
            width: 100%;
            height: 350px;
            color: #ffffff;
        }
        .left{
            margin-left: 0px;
            margin-top:0;
            display: flex;
            width: 100%;
            height: 90px;
            color: white;
            background: rgba(68,50,45,0.4);
        }
        .right{
            padding-top:5px;

        }

        div{
            text-align: center;
            height: 40px;
            margin-left: 5%;
        }
        .left ul{
            margin-left: 5%;
            margin-top:20px;
        }

        .left ul li{
            padding-left: 20px;
            margin-top: 35px;

        }
        ul li {

            list-style: none;
            float:left;
            font-size: 20px;
        }



        .niceName{
            margin-left: 12px;
            margin-top: 2%;
            display: flex;
        }
        .niceName a{
            font-size: 10px;
            margin-left: 20px;
        }
        .niceName a:hover{
            color:#9932CC;
        }
        .col-1{
            width: 100%;
            height: 100px;
            text-align: left;
            margin-top:18px;
            line-height: 40px;

        }
        .col-2{
            display: flex;
            flex: 0 0 12%;
            margin-top:6%;
            height: 150px;
        }
        .col-2 img{
            border-radius: 50%;
        }
        .col-3{
            display: flex;
            flex:55%;
            margin-top:8%;
            margin-left:3%;
            height: 150px;
            font-weight: bold;


        }

        a{
            text-decoration: none;
            color: white;
        }
        .title{
            margin-left: -100px;
            margin-top: 70px;

        }
        .title ul li{
            padding-left: 60px;
            margin-top: 3%;
            text-align: center;

        }
        .avatar {
            width: 50px;
            height: 50px;
            border-radius: 5px;
            margin-left: 30%;
            margin-top: 2%;
        }
        .avatar img{
            border-radius:50%;
        }

        /*右侧css*/
        .container{
            width: 80%;
            height: 100%;
            margin-top: -20px;
            margin-left: 10%;
            background:rgba(4,2,2,0.2);

        }
        .left li img{
            width: 200px;
            height: 100px;
            margin-top: -39px;

        }
        /*切换页面显示*/

        #nav li.active:hover{
            color:#006666 ;
        }
        #content{
            width: 100%;
            height: 100%;
        }
        #content li{
            width: 100%;
            height: 100%;
            display: none;
        }
        iframe{
            width: 100%;
            height: 100%;
        }
        .main-div{
            width: 100%;
            height: 100%;
           margin-top: -700px;
            position: absolute;
            margin-left: 0;
            padding-left: 0;

        }
        #next{
            font-size:18px;
            border-radius: 5px;
            background:none;
            border: none;
            color: #ffffff;
        }
        #next:hover{
            color: #006666;
        }

    </style>

    <script type="text/javascript">

        window.onload = function(){

            /*
             * 点击按钮切换图片
             */

            //获取两个按钮
            var prev = document.getElementById("prev");
            var next = document.getElementById("next");

            /*
             * 要切换图片就是要修改img标签的src属性
             */

            //获取img标签
            var img = document.getElementsByTagName("img")[0];

            //创建一个数组，用来保存图片的路径
            var imgArr = ["img/pifu1.png" , "img/pifu2.png" , "img/pifu3.png" ,
                "img/pifu4.png" ,"img/pifu5.png","img/pifu6.png",
                "img/pifu7.png","img/pifu8.png","img/pifu9.png","img/pifu1.png"];

            //创建一个变量，来保存当前正在显示的图片的索引
            var index = 0;

            //获取id为info的p元素
            var info = document.getElementById("info");
            //设置提示文字
            info.innerHTML = "一共 "+imgArr.length+" 张图片，当前第 "+(index+1)+" 张";


            //分别为两个按钮绑定单击响应函数
            prev.onclick = function(){

                /*
                 * 切换到上一张，索引自减
                 */
                index--;

                //判断index是否小于0
                if(index < 0){
                    index = imgArr.length - 1;
                }

                img.src = imgArr[index];

                //当点击按钮以后，重新设置信息
                info.innerHTML = "一共 "+imgArr.length+" 张图片，当前第 "+(index+1)+" 张";
            };

            next.onclick = function(){

                /*
                 * 切换到下一张是index自增
                 */
                index++;

                if(index > imgArr.length - 1){
                    index = 0;
                }

                //切换图片就是修改img的src属性
                //要修改一个元素的属性 元素.属性 = 属性值
                img.src = imgArr[index];

                //当点击按钮以后，重新设置信息
                info.innerHTML = "一共 "+imgArr.length+" 张图片，当前第 "+(index+1)+" 张";

            };


        };


    </script>
<%--    /*home*/--%>
    <script>
        <%
        //获取registered.jsp传过来参数为title的值，若title的值等于register,则该jsp弹出注册成功提示框
        String title = request.getParameter("title");
        %>
        <%
        if (title!=null){
            if (title.equals("register")){%>
        alert("已经成功注册");
        <%}
    }
    %>
    </script>
</head>
<body>
<div id="outer">
    <p id="info" style="display: none"></p>
    <div class="img-div">
        <img src="img/pifu2.png" alt="冰棍" />
        <div class="main-div">

            <%
                User user = DaoFactory.getUserDaoInstance().getUserInfoByQqId(String.valueOf(session.getAttribute("qq_id")));
            %>
            <div class="left">
                <ul>
                    <li><img src="img/home-top-logo.jpg" alt="qq空间"></li>
                    <li><a href="bgLunbo.jsp">QQ空间</a></li>
                    <li>游戏</li>
                    <li>装扮</li>
                    <li> <button id="prev" style="display: none">上一张</button></li>
                    <li> <button id="next">点击更换皮肤</button></li>
                </ul>
                <div class="avatar">
                    <img src=<%=user.getAvatar()%> alt="头像">
                </div>
                <div class="niceName"><h3><%=user.getUserName()%></h3><a href="accountLogin.jsp">退出登录</a></div>
            </div>

            <div class="top">
                <div class="right">
                    <div class="row">
                        <div class="col-1">
                            <p><h2><%=user.getUserName()%></h2></p>
                            <p><%=user.getQqSignature()%></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2"><img src=<%=user.getAvatar()%> alt="图片"></div>
                        <div class="col-3">
                            <h3><%=user.getUserName()%></h3>
                            <div class="title">

                                <ul id="nav">
                                    <li class="active">日志</li>
                                    <li>好友管理</li>
                                    <li>相册管理</li>
                                    <li>说说</li>
                                    <li>个人档</li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <ul id="content">
                    <li style="display:block">
                        <iframe src="first.jsp" frameborder="0"></iframe>
                    </li>
                    <li>
                        <iframe src="main.jsp" frameborder="0"></iframe></li>
                    <li>
                        <iframe src="photo.jsp" frameborder="0"></iframe></li>
                    <li>
                        <iframe src="article.jsp" frameborder="0"></iframe></li>
                    <li>
                        <iframe src="myself.jsp" frameborder="0"></iframe></li>
                </ul>
            </div>
            <script type="text/javascript">
                var nav = document.getElementById("nav");
                var navList = nav.children;
                var content = document.getElementById("content");
                var contentList = content.children;
                for (var i = 0; i < navList.length ; i++) {
                    navList[i].index=i;
                    navList[i].onclick=function () {
                        for (var m =0;m<contentList.length;m++){
                            navList[m].className="";
                            contentList[m].style.display="none";
                        }
                        this.className="active";
                        contentList[this.index].style.display="block";
                    }

                }
            </script>
        </div>
    </div>

</div>
<%--home--%>

</body>
</html>

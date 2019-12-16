<%@ page import="com.soft1841.web.blog.dao.UserDao" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="com.soft1841.web.blog.entity.User" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/3
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css.css">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            margin: 0;
            padding: 0;
            background:url("img/211738.png")no-repeat -300px 10px;
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
            opacity:1;
            padding-left:5%;
            background: rgb(68,50,45);
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
            opacity: 0.9;
            /*background:red;*/
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
    </style>
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
<%
    User user = DaoFactory.getUserDaoInstance().getUserInfoByQqId(String.valueOf(session.getAttribute("qq_id")));
%>
<div class="left">
    <ul>
        <li><img src="img/home-top-logo.jpg" alt="qq空间"></li>
        <li><a href="home.jsp">QQ空间</a></li>
        <li>游戏</li>
        <li>装扮</li>
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

</body>
</html>

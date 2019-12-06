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
            background-repeat: no-repeat;
            /*position: relative;*/
            background-color:rgb(69,94,160);

        }
        .top{
            margin: 0;
            padding: 0;
            width: 100%;
            height: 500px;
            background-color: blue;
            background-image: url(img/homebg.jpg);
            /*position: absolute;*/
        }
        .left{
            display: flex;
            width: 100%;
            height: 80px;
            background: #000;
            color: white;
            /*position: absolute;*/
            padding: 0;
            margin: 0;

        }

        div{
            text-align: center;
            height: 40px;
            margin-left: 5%;
        }
        .left ul{
            margin-left: 5%;
        }

        .left ul li{
            padding-left: 20px;
            margin-top: 30px;

        }
        ul li {

            list-style: none;
            float:left;
            font-size: 20px;
        }



        .niceName{
            margin-left: 12px;
            margin-top: 2%;
        }
        .col-1{
            width: 100%;
            height: 100px;
            text-align: left;
            margin-top: -10px;
            line-height: 60px;

        }
        .col-2{
            display: flex;
            flex: 0 0 15%;
            margin-top:6%;
            height: 150px;

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
            margin-left: -250px;
            margin-top: 70px;
        }
        .title ul li{
            padding-left: 60px;
            margin-top: 3%;

        }
        .title ul li a{
            font-size: 20px;
            color: black;
        }
        .avatar {
            width: 40px;
            height: 40px;
            border-radius: 5px;
            margin-left: 30%;
            margin-top: 2%;
        }
        .avatar img{
            border-radius: 10px;
        }
        .right{
            margin-top: 80px;
            /*position: absolute;*/
        }
    /*    左侧css*/
        .home-left{
            width: 300px;
            height: 700px;
            background-color: white;
            float: left;
            margin-left: 110px;

        }
    /*右侧css*/
        .container{
            background-color: blue;
            width: 1000px;
            height: 700px;
            float: left;
            margin-left: 0px;
        }
    </style>
</head>
<body>
<%
    User user = DaoFactory.getUserDaoInstance().getUserInfoByQqId(String.valueOf(session.getAttribute("qq_id")));
%>

<%--<%--%>
<%--    UserDao userDao = DaoFactory.getUserDaoInstance();--%>
<%--    List<User> userList = userDao.selectUser("qq_id");--%>
<%--    HttpSession hs = request.getSession(true);--%>
<%--    String qqId =(String) hs.getAttribute("qq_id");--%>
<%--    int size = userList.size();--%>
<%--    String avatar = userDao.selectUser("qq_id").get(0).getAvatar();--%>
<%--%>--%>
<div class="top">
    <div class="left">
        <ul>
            <li><a href="">QQ空间</a></li>
            <li><a href="">个人中心</a></li>
            <li><a href="">我的主页</a></li>
            <li><a href="">好友</a></li>
            <li><a href="">游戏</a></li>
            <li><a href="">装扮</a></li>
        </ul>
        <div class="avatar">
            <img src=<%=user.getAvatar()%> alt="头像">
        </div>
        <div class="niceName"><h5><%=user.getUserName()%></h5></div>
    </div>


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
                    <ul>
                        <li><a href="">主页</a></li>
                        <li><a href="">日志</a></li>
                        <li><a href="">相册</a></li>
                        <li><a href="">留言板</a></li>
                        <li><a href="">说说</a></li>
                        <li><a href="">个人档</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="home-left"></div>
<div class="container"></div>

</body>
</html>

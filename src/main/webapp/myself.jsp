<%@ page import="com.soft1841.web.blog.dao.UserDao" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/8
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人档</title>
    <link rel="stylesheet" href="css.css">
    <style>
        body{
            background: deepskyblue;
            position: relative;
        }
        .container{
            width: 90%;
            height: 100%;
            background:palegreen;
            margin: 0 auto;
            display: flex;
            padding-left: 0px;

        }
        .top{
            display: flex;
            flex-wrap: wrap;
            width: 100%;
            height: 50px;
            background:#006666;
            margin: 0 auto;
            padding: 20px 10%;
            position: absolute;
            color: #ffffff;
        }
        /*左边栏用来放置个人的头像*/
        .left{
            width:20%;
            height:600px;
            background:yellowgreen;
            margin-top:3%;
            padding: 30px 5px;
        }
        /*用来放置个人的信息以及个人的动态*/
        .right{
           width:78%;
            height: 700px;
            background:powderblue;
            margin-left:1%;
        }
        /*用来放置头像固定头像的大小*/
        .avatar{
             width: 200px;
            height: 200px;

        }
        /*右侧的信息展示*/
        .title{
            width: 100%;
            height: 30px;
            margin-top:10%;
        }
        .info{
            width: 100%;
            height: 100%;
            background:blue;
        }
        .infoTitle{
            width: 100%;
            height: 50px;
            background:powderblue;
            margin-top:1%;
        }
        #nav{
           display: flex;
            padding-top: 15px;
        }
        #nav li{
            margin-left: 20px;
            list-style: none;
        }
        #content{
            width: 100%;
            height: 100%;
        }
        #content li{
            width: 100%;
            height: 100%;
            display: none;
            background:red;
        }
        iframe{
            width: 100%;
            height: 100%;
        }
        .top a{
            color:#ffffff;
            margin-right: 20px;
        }
        .top a:hover{
            color: #7b1fa2;
        }
    </style>
</head>
<body>
<div class="top">
    <a href="myself.jsp" target="_parent">放大显示</a>
   <h4>个人档</h4>

</div>
<div class="container">
<%--    <%--%>
<%--        UserDao userDao = DaoFactory.getUserDaoInstance();--%>
<%--        userDao.getAllArticleByUserQq();--%>
<%--    %>--%>
  <div class="left">
      <div class="avatar">
          <img src="img/reb.png" alt="头像">
      </div>
  </div>
    <div class="right">
        <div class="title">
            <h3>用户名</h3>
        </div>
        <hr>
        <div class="info">
          <div class="infoTitle">
              <ul id="nav">
                  <li class="active">个人空间</li>
                  <li>个人资料</li>
              </ul>
          </div>
            <div class="infoContent">
                <ul id="content">
                    <li style="display: block">
                        <iframe src="myself-first.jsp" frameborder="0"></iframe></li>
                    <li>
                        <iframe src="personalInformation.jsp" frameborder="0"></iframe></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script>
    var nav = document.getElementById("nav");
    var navList = nav.children;
    var content = document.getElementById("content");
    var contentList = content.children;
    for (var i = 0; i <navList.length ; i++) {
        navList[i].index = i;
        navList[i].onclick=function () {
            for (var m = 0; m <contentList.length ; m++) {
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

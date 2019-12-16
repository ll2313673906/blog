<%@ page import="com.soft1841.web.blog.dao.ArticleDao" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.soft1841.web.blog.entity.User" %>
<%@ page import="com.soft1841.web.blog.dao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/8
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章说说</title>
    <link rel="stylesheet" href="css.css">

    <style>
        .container{
            width:80%;
            height: 100%;
            background:#006666;
            margin: 0 auto;
          padding-top:3%;
            color: #ffffff;
        }
       .content{
          width:100%;
          min-height: 400px;
           background:palegoldenrod;
           display: flex;
           padding:2% 5%;
       }
        .content-left{
            width: 80px;
            height: 80px;
            border-radius:50%;
            background:beige;
            box-shadow: 0 0 3px 3px #006666;
        }
        .content-left img{
            border-radius: 50%;
        }
        .content-right{
            width: 90%;
            margin-left:3%;
            padding:2%;

        }
        .right-top{
            width: 100%;
            background:#006666;
            padding: 2%;
        }
       .right-img{
           box-shadow: 0 0 3px 3px #006666;
           margin-top:10px;
           width:100%;
           height:300px;
       }
        .right-bottom{
            width: 100%;
            height: 50px;
            padding-left: 5%;
            color: black;
            background:#006666;
            margin-top: 10px;
            padding-top:2%;
        }
        ul{
            display: flex;
            padding-left:2%;
            padding-top:7px;
        }
        ul li{
            list-style: none;
            font-size:14px;
        }
        ul li:first-child{
            margin-right:10%;

        }
        a{
            margin-top: 0;
            margin-left: 5%;
            color:#ffffff;;
        }
        p a{
            color:#5c6bc0;
        }
        p a:hover{
            color: #ffffff;
        }
        .right-top p{
            text-align: left;
            text-indent: 2px;
            font-size: 16px!important;
        }
        input[type=button]:last-child{
            width:100px;
            height: 30px;
            font-size: 14px;
            margin-left:10px;
            margin-top:-1%;
        }
        .right-bottom a{
            margin-top: -1%;
            margin-left:35px;
        }

    </style>
</head>
<body>
<div class="container">
    <%
       UserDao userDao = DaoFactory.getUserDaoInstance();
       String userQq = request.getParameter("qq_id");
        List<HashMap> list = userDao.getAllArticleByUserQq(userQq);
        %>
        <a href="article.jsp" target="_parent">放大显示</a>
<%--/*定义一个div用来放说说的内容*/--%>
    <div class="content">
            <%-- 定义一个左边div固定头像的高和宽--%>
        <div class="content-left"><img src="img/avatar.png" alt=""></div>
<%-- 定义一个右边的div用来展示说说，以及图片--%>
        <div class="content-right">
           <div class="right-top">
               <p>
                   <a href="">用户名</a>
                   大家愣住，问这是什么意思，无盐说：抬眼看烽火四周，秦兵不日必出函谷关；
                   咬牙切齿是提醒大王不要阻断臣子劝谏的途径；挥手是劝说大王去除奸臣，
                   抚膝是建议大王不要修建奢侈的建筑。不深谋远虑，齐国怎能强大。
                   林清玄：常想一二，不思八九　　文/林清玄　　1　　朋友买来纸
                   笔砚台，请我题几个字让他挂在新居的客厅补壁。这使我感到有些为难
                   ，因为我自知字写得不好看，何况已经有很多年没有写书法了。　
                   　朋友说：“怕什么？挂你的字我感到很光荣，我都不怕了，你怕什么？”
               </p>
           </div>
            <div class="right-img">
                <img src="img/article1.jpg" alt="">
            </div>
            <div class="right-bottom">
                <ul>
                    <li>时间：3029-3-22</li>
                    <li>点击：23</li>
                    <li>评论：23</li>
                    <a href=""><input type="button" value="编辑"></a>
                   <input type="button" value="删除该条说说">
                </ul>
             <div>
        </div>
    </div>


  </div>
</body>
</html>

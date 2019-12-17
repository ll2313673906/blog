<%@ page import="java.util.List" %>
<%@ page import="com.soft1841.web.blog.dao.FriendsDao" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/12
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人空间</title>
    <link rel="stylesheet" href="css.css">
    <style>
        .container{
            width: 100%;
            height: 100%;
        }
        p{
            text-indent: 2em !important;
        }
        .main{
            background:blue;
            width:100%;
        }
        .info-left{
            width: 100%;
            min-height: 400px;
            background:#006666;
            margin-left: 1%;
            float: left;
            padding:1%;
            line-height: 40px;
            color: #ffffff;
            margin-top: 10px;
        }
        .left-card{
            width: 100%;
            min-height: 100px;
            background:palegoldenrod;
            padding: 1%;
            color: black;
            margin-top:2%;
        }

        .card-left-body p{
            font-size: 10px;
            text-align: justify;

        }
        .bottom{
            width: 100%;
            height: 50px;
            padding: 1%;
        }
        .bottom ul{
            display: flex;
        }
        .bottom ul li{
            font-size: 15px;
            margin-left: 15%;
            list-style: none;

        }
        pre{
            color: #006666;
            font-weight: bold;
            font-size: 15px;
        }
        .avatar{
            width: 60px;
            height: 60px;
            margin: 20px;
            display: flex;
            float: left;

        }
        .avatar img{
            border-radius: 50%;
        }
        .title{
            width: 100%;
            height: 100px;
            background:#006666;
        }
        .title h2{
            margin-top: 2%;
            float: left;
        }


    </style>

</head>
<body>

<div class="container">

    <div class="main">
        <%  FriendsDao friendsDao = DaoFactory.getFriendsInstance();
            List<HashMap> list =friendsDao.getAllLogs();;
            int size =list.size();
            String author = request.getParameter("select");
            if (author!=null&&author!=""){
                try {
                    list=friendsDao.getAllLogsByAuthor(author);
                    size = list.size();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }else {
                list =friendsDao.getAllLogs();
                size = list.size();
            }
        %>
        <%for (int i=0;i<size;i++){%>
        <div class="info-left">
            <%-- 右测展示好友的日志一些动态--%>
            <div class="title">
                <div class="avatar"><img src=<%=list.get(i).get("avatar")%> alt=""></div>
                <h2><%=list.get(i).get("nickName")%></h2>
            </div>
            <h6><%=list.get(i).get("signature")%></h6>
            <div class="left-card">
                <div class="card-left-body">
                    <p>
                        <%=list.get(i).get("content")%>
                    </p>
                </div>
                <div class="bottom">
                    <ul>
                        <li>发表的时间:<%=list.get(i).get("log_time")%></li>
                        <li>发表的地点:<%=list.get(i).get("place")%></li>
                        <li><pre>作者:<%=list.get(i).get("nickName")%></pre></li>
                    </ul>
                </div>
            </div>
        </div>

        <%}%>

    </div>
</div>
</body>
</html>

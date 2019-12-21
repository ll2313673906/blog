<%@ page import="com.soft1841.web.blog.dao.ArticleDao" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.soft1841.web.blog.entity.User" %>
<%@ page import="com.soft1841.web.blog.dao.UserDao" %>
<%@ page import="com.soft1841.web.blog.entity.Article" %><%--
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
            padding-left:3%;
            color: black;
            background:#006666;
            margin-top: 10px;
            padding-top:2%;
        }
        ul{
            display: flex;
            padding-left:1%;
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
            margin-left:5%;
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
        input[type=button]:first-child{
            width:80px;
            margin-top:-4%!important;
        }
        input[type=button]:last-child{
            width:80px;
            height: 30px;
            font-size: 15px;
            margin-left:3px;
            margin-right:2px;
            margin-top:-5%;
        }
        .right-bottom a:first-child{
            margin-top: -3%;
            margin-left:30px;
        }
        .right-bottom a:last-child{
            font-size: 15px!important;
            margin-left:2%!important;
        }
        h5{
            margin-top: -20px;
            margin-left: 20%;
        }

    </style>
</head>
<body>
<div class="container">
    <%
       UserDao userDao = DaoFactory.getUserDaoInstance();
       HttpSession hs = request.getSession(true);
       String userQq = String.valueOf(hs.getAttribute("qq_id"));
        List<HashMap> list = userDao.getAllArticleByUserQq(userQq);
        int size = list.size();
        %>
        <a href="article.jsp" target="_parent">放大显示</a>
        <h5>我的说说</h5>


    <script>
        <%String id = request.getParameter("delId");
        ArticleDao articleDao = DaoFactory.getArticleInstance();
        if (id!=null&&!id.equals("")){
            Article article = new Article();
            article.setId(Integer.parseInt(id));
            int n = articleDao.deleteArticle(article);
            if (n==1){
            %>
            alert("删除成功");
        <%

            }
        }%>
    </script>
    <%for (int i=0;i<size;i++){%>
    <%--/*定义一个div用来放说说的内容*/--%>
        <div class="content">
            <%-- 定义一个左边div固定头像的高和宽--%>
            <div class="content-left"><img src=<%=list.get(i).get("avatar")%> alt=""></div>
            <%-- 定义一个右边的div用来展示说说，以及图片--%>
            <div class="content-right">
                <div class="right-top">
                    <p>
                        <a href="">用户名</a>
                        <%=list.get(i).get("article_content")%>
                    </p>
                </div>
                <div class="right-img">
                    <img src=<%=list.get(i).get("photo")%> alt="">
                </div>
                <div class="right-bottom">
                    <ul>
                        <li>时间：<%=list.get(i).get("article_time")%></li>
                        <li>点击：<%=list.get(i).get("click")%></li>
                        <li>评论：<%=list.get(i).get("comments")%></li>
                        <a href="editArticle.jsp?id=<%=list.get(i).get("id")%>"><input type="button" value="编辑" style="margin-right: 4px"></a>
                        <a href="article.jsp?delId=<%=list.get(i).get("id")%>"><input type="button" value="删除说说" style="margin-top: -5px;height: 28px"></a>
                        <a href="insertArticle.jsp?id=<%=list.get(i).get("id")%>">更多</a>
                    </ul>
                    <div>
                    </div>
                </div>

            </div>
        </div>
    <%}%>
</div>
</body>
</html>

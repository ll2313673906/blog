<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/17
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑说说</title>
    <link rel="stylesheet" href="css.css">
    <style>
        .container{
            width: 100%;
            height: 100%;
            background:url(img/updateFriendsBg.png)no-repeat 0px 0px;

        }
        .top{
            width: 100%;
            height: 50px;
            background: #006666;
            padding-top:1%;
            padding-left:5%;
        }
        .top a{
            margin-top: 5px;
            margin-left:1%;
            color: white;
        }
        .top a:hover{
            color: #7b1fa2;
        }
        .main-div{
            width: 40%;
            height:60%;
            background: #006666;
            margin-left:50%;
            margin-top:5%;
        }
        /*设置表格*/
        table{
            width: 90%;
        }
        table th{
            height: 50px;
            color: white;
        }
        table tr{
            height: 50px;

        }
        table tr td:first-child{
            text-align: right;

        }
        table tr td{
            height: 40px;
            color: white;
        }
        input[type=submit]{
            width: 100px;
            float: right;
            box-shadow:3px 3px #5c6bc0;
        }

        input[type=reset]{
            width: 100px;
            float: left;
            margin-left:10%;
            box-shadow:3px 3px #5c6bc0;
        }
        input[type=text]{
            width: 150px;
            height: 100px;
            word-wrap:break-word; overflow:hidden;
        }
        /*创建一个输入域，用来输入说说的内容*/
        textarea{
            width: 100%;
            height: 200px;
           text-align:left;
            font-size: 15px;
            text-indent: 2px;
        }

    </style>
</head>
<body>
<%
    HttpSession hs = request.getSession(true);
    String id = request.getParameter("id");
    if (id!=null&&!id.equals("")){
        hs.setAttribute("id",id);
    }
%>
<script>
</script>
<div class="container">
    <div class="top">
        <a href="article.jsp">返回</a>
        <a href="editArticle.jsp" target="_parent">放大显示</a>
    </div>
    <div class="main-div">
        <form action="users?flag=updateArticles" method="post">
            <table >
                <tr>
                    <th colspan="2">编辑说说</th>
                </tr>
                <tr>
                    <td colspan="2"><textarea id="content" name="content" rows="50" placeholder="编辑内容"></textarea>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="修改"></td>
                    <td><input type="reset"value="取消"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>

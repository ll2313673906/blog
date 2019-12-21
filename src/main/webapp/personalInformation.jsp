<%@ page import="com.soft1841.web.blog.dao.UserDao" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.soft1841.web.blog.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/12
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息展示</title>
    <link rel="stylesheet" href="css.css">
    <style>
        body{
            margin: 0;
            padding: 0;
        }
        .container{
            width: 100%;
            height: 100%;
            background:palegoldenrod;
            padding-top:5%;

        }
        .from{
            width: 100%;
            height: 100%;
        }
        table{
            width: 50%;
            height:400px;
            margin-left: 5%;
        }
        input[type=submit]{
            width: 100px;
            height: 30px;
            border-radius: 5px;
            border: none;
        }
        input[type=reset]{
            width: 100px;
            height: 30px;
            border-radius: 5px;
            border: none;
        }
        tr:last-child{
            text-align: center;
        }
        table tr td:first-child{
            text-align: right;
        }
        .top{
            width: 100%;
            height:10%;
            padding-left: 10%;
            background:#006666;
            margin-top: 0;
            padding-top: 3%;
            color: #ffffff;
        }

    </style>
</head>
<body>
<div class="top">
    <p>基本资料</p>
</div>
<hr>
<div class="container">
    <%
        HttpSession hs = request.getSession(true);
        UserDao userDao = DaoFactory.getUserDaoInstance();
        String qq = String.valueOf(hs.getAttribute("qq_id"));
        User user = userDao.getUserInfoByQqId(qq);
    %>
    <div class="from">
        <form action="" method="post">
            <table>
                <tr>
                    <td>账号：</td>
                    <td><%=qq%></td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td><%=user.getGender()%></td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td><%=user.getUserAge()%></td>
                </tr>
                <tr>
                    <td>星座：</td>
                    <td><%=user.getConstellation()%></td>
                </tr>
                <tr>
                    <td>现居住地：</td>
                    <td><%=user.getAddress()%></td>
                </tr>
                <tr>
                    <td>联系方式：</td>
                    <td><%=user.getPhone().trim()%></td>
                </tr>

            </table>
        </form>
    </div>
</div>
</body>
</html>

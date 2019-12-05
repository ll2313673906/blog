<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/3
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css.css">

    <style>
        body{
            display: flex;
            background-image: url(img/bg.jpg);
            background-repeat: no-repeat;
        }
        .left{
            width: 200px;
            height: 100px;
            margin-left: 410px;
            margin-top: 40px;

        }
        .right{
            background-color: #9f9fed;
            text-align: center;
            width: 400px;
            height: 300px;
            margin-left: 10%;
            margin-top: 6%;
        }


        td{
            text-align: center;
            collapse: 20px;
        }
        input{
            margin-top: 20px;
            width: 200px;
            height: 30px;
            border-radius: 5px;
            border: none;
        }
        input[type=submit]{
            width: 100%;
            height: 32px;
        }
        input[type=reset]{
            width: 100%;
            height: 32px;
        }

        ul li{
            list-style: none;
            float: right;
            padding-right: 20px;

        }
        a{
            margin-top: 20px;
            font-size: 14px;
            color: black;
            text-decoration: none;
            display: flex;
        }
        table{

            margin:0 auto;
            margin-top: 50px;
        }

    </style>
</head>
<body>
<div class="left">
    <img src="img/blgo.png" alt="图片">
</div>
<div class="right">
    <form action="users?flag=login" method="post">
        <table>
            <tr>
                <th colspan="2"><h4>账号密码登录</h4></th>
            </tr>
            <tr>
                <td colspan="2"><input type="text" name="userName"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="text" name="userPassword"></td>
            </tr>
            <tr>
                <td><input type="submit" value="提交"></td>
                <td><input type="reset" value="重置"></td>
            </tr>
        </table>

        <p>
        <ul>
            <li><a href="">忘了密码</a></li>
            <li><a href="">注册新账号</a></li>
        </ul>
        </p>

    </form>
</div>
</body>
</html>

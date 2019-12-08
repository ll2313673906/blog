<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/6
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background: url(img/zhuceli.png) no-repeat -250px -40px;
        }

        .header{
            background: #9932CC;
            width: 100%;
            height: 60px;
            padding-top: 20px;
            opacity: 0.5;
        }
        .header a{
            color: #ffffff;
        }

        .title{
            margin-top: 20px;
            float: right;
            margin-right: 5%;
        }
        .title a{
            text-decoration: none;
        }
        .title a:hover{
            text-decoration:#9932CC;
            color: black;
        }
        .container{
            background: url(img/bg.jpg) no-repeat -250px -40px;
            width:600px;
            height: 600px;
            margin-top: 30px;
            margin-left: 100px;
            box-shadow: 20px 20px 30px 30px rgb(155,135,218);
            border-radius: 20px;
            text-align: center;
            padding-top: 20px;
        }
        .container-top{
            width: 150px;
            height: 150px;
            margin: auto;

        }
        .container-top img{
            width: 100%;
            height: 100%;
            border-radius: 50%;
        }
        .container-bottom{
            width: 100%;
            height: 400px;
            background: #9932CC;
            margin-top: 30px;
            padding-top: 30px;
            opacity: 0.4;
        }
        .container-bottom:hover{
            opacity: 1;
        }

        table{
            margin: 0 auto;
            border-collapse: collapse;
            height:80%;
        }

        table tr td{
            text-align: justify-all;
            padding-left: 30px;
            margin-top: 20px;
        }
          input{
              border: none;
              height: 70%;
              border-radius: 5px;
          }
        input[type=submit]{
            width: 40%;
          height: 30px;

        }
        input[type=reset]{
            width:40%;
            height: 30px;
            float: right;

        }



    </style>
</head>
<body>
<div class="header">
    <div class="title">
    <a href="accountLogin.jsp">返回登录</a>
    </div>
</div>
<div class="container">
        <div class="container-top">
            <img src="img/zhuceli.png" alt="选择头像" title="点击添加图片">
        </div>
        <div class="container-bottom">
            <form action="" method="post">
                <table>
                    <tr>
                        <td>用户名：</td>
                        <td><input type="text" name="userName" title="请输入用户名"></td>
                    </tr>
                    <tr>
                        <td>账号：</td>
                        <td><input type="text" name="qqId" title="请输入你的账号"></td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="password" name="userPassword" title="请输入你的密码"></td>
                    </tr>
                    <tr>
                        <td>手机号：</td>
                        <td><input type="tel" name="phone" title="请填写11位手机号"></td>
                        <td><input type="button"value="获取短信验证" title="请确认手机号"></td>
                    </tr>
                    <tr><td>验证码：</td>
                        <td><input type="text" name="code" title="请输入验证码"></td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td>星座：</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="提交" title="确认无误点击提交"><input type="reset" value="重置"></td>
                        <td></td>
                    </tr>
                </table>
            </form>
        </div>
</div>
</body>
</html>

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
    <%
        String b="none";
        String c="block";
        String a  = request.getParameter("right");
        if (a!=null){
            b=a;
            c="none";
        }%>
    <title>登录界面</title>
    <link rel="stylesheet" href="css.css">

    <style>
        body{
            display: flex;
            background:url("img/259471.png") no-repeat 0 1px;

        }

        .left{
            width: 290px;
            height: 140px;
            margin-left: 410px;
            margin-top: 40px;

        }
        .left img{
            opacity: 309;
        }
        .right{
            background:linear-gradient(15deg,green,#9f9fed,#eeeeee,greenyellow);
            text-align: center;
            width: 400px;
            height: 400px;
            margin-left: 10%;
            margin-top: 6%;
            display: <%=b%>;
            border-top-left-radius: 90px;
            border-bottom-right-radius: 90px;
            opacity: 0.8;/*给背景添加透明属性*/


        }
        .right:hover{
            opacity: 10;

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
            width:80%;
            height: 32px;
        }
        input[type=submit]:hover{
            background:linear-gradient(15deg,#9932CC,#9f9fed,#eeeeee,#9932CC);
        }
        input[type=reset]{
            height: 32px;
            width: 80%;

        }
        input[type=reset]:hover{
            background:linear-gradient(15deg,#9932CC,#9f9fed,#eeeeee,#9932CC);
        }

        ul li{
            list-style: none;
            float: left;
            margin-left: 40px;

        }
        ul li a:hover{
            color: #9932CC;
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

        th{
            font-size: 10px;
            padding-left: 30px;
        }

        th a{
            font-size: 5px;

        }
        .th-2{
            float: right;
        }
        th a:hover{
            text-decoration:underline;
            color: #9932CC;
        }
        td p{
            font-size: 6px;
        }
        td p a:hover{
            color: #9932CC;
        }
        .left-a{
            width: 800px;
            height: 300px;
            transform: rotate(-20deg);
            text-align: center;
            margin-top: 30px;
        }
        .left-a a{
            color: white;
            font-size: 90px;
          color:#9f9fed;
        }

    </style>
</head>
<body>

<div class="left" >
    <img src="img/blgo.png" alt="图片">
    <div class="left-a"  style="display: <%=c%>">
    <a href="login.jsp?right=block">  跳转到登录</a>
    </div>
</div>
<div class="right">
    <form action="users?flag=login" method="post">
        <table>
            <tr>
                <th><a href="accountLogin.jsp">账号密码登录</a></th>

                <th class="th-2"><a href="phoneLogin.jsp">手机验证登录</a></th>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="text" name="userName" style="color: #999;"
                           value="请输入用户名"
                           onfocus="if(this.value=='请输入用户名') {this.value='';this.style.color='#999' }"
                           onblur="if(this.value==''){this.value='请输入用户名'; this.style.color='#999'}">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="text" name="userPassword" style="color: #999;"
                           value="请输入密码"
                           onfocus="if (this.value=='请输入密码'){this.value='';this.style.color='#999'}"
                           onblur="if (this.value==''){this.value='请输入密码'; this.value.color='#999'}">

                </td>
                <td><p><a href="">忘记密码?</a></p></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="text" name="code"style="color: #999;"
                           value="请输入验证码"
                           onfocus="if (this.value=='请输入验证码'){this.value='';this.style.color='#999'}"
                           onblur="if (this.value==''){this.value='请输入验证码';this.value.color='#999'}">

                </td>
                <td> <img src="verifyCode.jsp" alt="验证码" style="width: 80px;height: 25px"></td>
            </tr>
            <tr>
                <td><input type="submit" value="登录"></td>
                <td><input type="reset" value="重置"></td>
            </tr>
        </table>

        <p>
        <ul>
            <li><a href="registered.jsp">注册新账号</a></li>
        </ul>
        </p>

    </form>
</div>
</body>
</html>

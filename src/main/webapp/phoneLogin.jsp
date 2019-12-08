<%@ page import="com.soft1841.web.blog.util.LegalPhone" %>
<%@ page import="com.soft1841.web.blog.util.SMSUtil" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %>
<%@ page import="com.soft1841.web.blog.dao.UserDao" %><%--
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
    <title>手机验证码登录</title>
    <link rel="stylesheet" href="css.css">

    <style>
        body{
            display: flex;
            background: url("img/264235.png") no-repeat -200px -10px;

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
            background:linear-gradient(15deg,orangered,#9f9fed,#eeeeee,salmon);
            text-align: center;
            width: 400px;
            height: 400px;
            margin-left: 10%;
            margin-top: 6%;
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
        input[type=button]{
            width:100px;
            font-size: 8px;
          margin-left: -20px;
        }

    </style>
    <script>

        function send() {
            const phone = document.getElementById("mobile").value;
            if (phone == null){
                alert("请输入手机号");
            }else{
                window.self.location='phoneLogin.jsp?phone='+phone;

            }
        }

        <%
           String phone = request.getParameter("phone");
           UserDao dao = DaoFactory.getUserDaoInstance();
           if (phone!=null){
               if (LegalPhone.isMobiPhoneNum(phone)){
                     if (dao.getUserInfoByPhone(phone).getPhone()!=null){
                     String code = SMSUtil.send(phone);
                     HttpSession hs = request.getSession(true);
                     hs.setAttribute("code",code);%>
        alert("验证码已经发送到你的手机，请注意查收");
         <%}else{%>
        alert("手机号不存在");
        window.self.location='phoneLogin.jsp';
        <% }
     } else{%>
        alert("手机号不合法");
        window.self.location='phoneLogin.jsp';
        <% }
  }
  %>


<%
String mobile="";
String confirm = request.getParameter("phone");
if (confirm==null){
    mobile="";
}else {
    mobile=confirm;
}
%>
    </script>

</head>
<body>

<div class="left">
    <img src="img/blgo.png" alt="图片">
    <a href="login.jsp?right=block" style="display: <%=b%>">  跳转到登录</a>
</div>
<div class="right">
    <form action="users?flag=phoneLogin" method="post">
        <table>
            <tr>
                <th><a href="accountLogin.jsp">账号密码登录</a></th>

                <th class="th-2"><a href="phoneLogin.jsp">手机验证登录</a></th>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="text" name="mobile" id="mobile" value=<%=mobile%>>
                 </td>
            </tr>

            <tr>
                <td colspan="2">
                    <input type="text" name="code">
                </td>
                <td><input type="button" value="短信验证" onclick="send()"></td>
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

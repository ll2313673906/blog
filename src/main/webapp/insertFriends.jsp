<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/11
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增好友页面</title>
    <link rel="stylesheet" href="css.css">
    <style>
        body{
            background:url("img/1.png")no-repeat -330px 10px;

        }
        .container{
            width: 40%;
           height:80%;
            background:#006666;
            margin-left: 10%;
            margin-top:4%;
            box-shadow: 10px 25px 0 0 #ffffff;
            border-radius:5%;

        }
        /*设置表单新增好友*/
        table{
            margin: 10% auto;
        }
        table tr:first-child{
            text-align: center;
        }
        table tr{
            height: 40px;

        }
        table tr td:first-child{
           text-align: right;

        }
        th{
            text-align: center;
            color: #ffffff;
            font-size:20px;
            text-shadow: 10px 10px 0 0 #5c6bc0;
        }
        td{
            color: #ffffff;
            font-size: 16px;
        }

        .top{
            width: 100%;
            height: 30px;
            padding: 2%;
        }
        .top a{
            color: #ffffff;
        }
        .top a:hover{
            color:black;
        }
      input[type=submit]{
          width: 100px;
          float: left;
          box-shadow:3px 3px #5c6bc0;
      }

        input[type=reset]{
            width: 100px;
            float: right;
            box-shadow:3px 3px #5c6bc0;
        }


    </style>
</head>
<body>
<div class="container">
    <div class="top">
        <a href="main.jsp">返回</a>
        <a href="insertFriends.jsp" target="_parent">放大窗口</a>
    </div>
<form action="FriendsServlet?flag=insert" method="post">
    <table>
        <tr>
            <th colspan="2">请输入好友的信息</th>
        </tr>
        <tr>
            <td>备注：</td>
            <td><input type="text" name="nickName"></td>
        </tr>
        <tr>
            <td>QQ：</td>
            <td><input type="text" name="qqNumber"></td>
        </tr>
        <tr>
            <td>描述：</td>
            <td><input type="text" name="description"></td>
        </tr>
        <tr>
            <td>星座：</td>
            <td><input type="text" name="momentum"></td>
        </tr>
        <tr>
            <td>分组：</td>
            <td><select name="insertSelect" id="insertSelect" onchange="document.getElementById('Select').value=options[selectedIndex].value">
                <option value="3">好友</option>
                <option value="2">同事</option>
                <option value="1">家人</option>
                <option value="4">同学</option>
                <option value="5">死党</option>
            </select>
                <input type="hidden" name="Select" id="Select">
            </td>
        </tr>
        <tr>
            <td>添加的时间：</td>
            <td><input type="date" name="friendTime"></td>
        </tr>
        <tr>
            <td><input type="submit" value="新增"></td>
            <td><input type="reset" value="取消"></td>
        </tr>
    </table>
</form>
</div>
</body>
</html>

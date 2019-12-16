<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/12
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传图片的页面</title>
    <link rel="stylesheet" href="css.css">
    <style>
        .container{
            width: 100%;
            height: 100%;
            background:yellowgreen;
        }
        table{
            width: 30%;
            height:400px;
            border: 1px solid #7b1fa2;
            margin-top: 5%;
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
    </style>
</head>
<body>
<div class="container">
    <a href="photo.jsp">返回</a>
    <form action="PhotoServlet?flag=addImg" method="post">
        <table>
            <tr>
                <td>图片命名：</td>
                <td><input type="text" name="imgName" placeholder="请输入图片的标题"></td>
            </tr>
            <tr>
                <td>图片的类型：</td>
                <td><select name="imgType" id="imgSelect" onchange="document.getElementById('select').value=options[selectedIndex].value">
                    <option value="1">风景</option>
                    <option value="2">人物</option>
                    <option value="3">动物</option>
                    <option value="4">动漫</option>
                    <option value="5">爱情</option>
                </select>
                    <input type="hidden" id="select" name="select">
                </td>
            </tr>
            <tr>
                <td>图片的描述：</td>
                <td><input type="text" name="imgDescription" placeholder="请描述图片"></td>
            </tr>
            <tr>
                <td>选择图片：</td>
                <td><input type="file" name="imgContent" placeholder=""></td>
            </tr>
            <tr>
                <td><input type="submit" value="提交"></td>
                <td><input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

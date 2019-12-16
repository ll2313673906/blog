<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/14
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改图片信息</title>
    <link rel="stylesheet" href="css.css">
    <style>
        body{
            margin: 0;
            padding: 0;
        }
        .container{
            width: 100%;
            height: 100%;
            background:yellowgreen;
            padding-top:5%;
        }
        .from{
            width: 100%;
            height: 100%;
            margin: 0 auto;
        }
        table{
            width: 30%;
            height:400px;
            border: 1px solid #7b1fa2;

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
            background:black;
            padding-top:2%;
            padding-left: 10%;
        }
        .top a:hover{
            color: #ffffff;
        }
    </style>
</head>
<body>
<div class="top">
    <a href="photo.jsp">返回</a>
</div>
<div class="container">
    <div class="from">
        <form action="" method="post">
            <table>
                <tr>
                    <td>图片命名：</td>
                    <td><input type="text" name="imgName" placeholder="请输入图片的标题"></td>
                </tr>
                <tr>
                    <td>图片的类型：</td>
                    <td><select name="imgType" id="imgSelect">
                        <option value="宠物">宠物</option>
                        <option value="人物">人物</option>
                        <option value="风景">风景</option>
                    </select></td>
                </tr>
                <tr>
                    <td>图片的描述：</td>
                    <td><input type="text" name="imgDescription" placeholder="请描述图片"></td>
                </tr>
                <tr>
                    <td>选择图片：</td>
                    <td><input type="text" name="imgContent" placeholder=""></td>
                </tr>
                <tr>
                    <td><input type="submit" value="提交"></td>
                    <td><input type="reset" value="重置"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>

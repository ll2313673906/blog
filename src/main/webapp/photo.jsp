<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/8
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>相册管理</title>
    <link rel="stylesheet" href="css.css">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{

        }
        .left{
            width: 24%;
            height: 500px;
            background:#9932CC;
            text-align: center;
            float: left;
            position: fixed;/*固定不动*/

        }
        .container{
            background: yellow;
            width: 75%;
            height: 100%;
            float: right;/*右浮动*/
            padding-top: 20px;
        }
        .col-1{
            border: 1px solid black;
            flex: 0 0 31%;
            height: 300px;
            background: green;
           margin: 10px 8px;
        }
    </style>
</head>
<body>
<div class="left">
<h4>左面</h4>
</div>
<div class="container">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-1"></div>
        <div class="col-1"></div>
    </div>
    <div class="row">
        <div class="col-1"></div>
        <div class="col-1"></div>
        <div class="col-1"></div>
    </div>
    <div class="row">
        <div class="col-1"></div>
        <div class="col-1"></div>
        <div class="col-1"></div>
    </div>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/10
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>好友的信息展示</title>
    <link rel="stylesheet" href="css.css">
    <style>
      .container{
        width: 100%;
        height: 100%;

     }
       .info-left{
           width: 30%;
           height: 90%;
           background:palegoldenrod;
       }

     /*卡片展示好友的信息*/
        .card{
            width: 100%;
            height: 100%;
            text-align: center;

        }
        .card-header{
            width: 100%;
            height: 25%;
            background: #7b1fa2;
        }
        .card-header img{
            width: 60%;
            position: relative;
            height: 100%;
            border-radius: 50%;
            top: 35px;
        }
         img:active{
            border-radius: 0;
            width: 400px;
            height: 400px;
            margin-left: 300px;
            position: relative;
            left:17%;
             top: 2%;
        }
        .card-body{
            width: 100%;
            height: 70%;
            background: palevioletred;
        }
      /*table展示好友详情信息*/
        table{
            width: 100%;
            height: 80%;
            padding-top: 30px;
           box-sizing: border-box;

        }
        table tr{
           height: 40px;
        }
        table tr td:first-child{
            text-align: right;
        }
        table tr td {
            font-size: 6px;
        }
        table tr td:nth-child(2){
            text-align: left;

        }
        input{
            width: 150px;
        }
        input[type=reset]{
           float: right;
            margin-right: 35%;
            width: 80px;
            height: 30px;
            border: none;

        }
      input[type=submit]{
          width: 80px;
          height: 30px;
          border: none;

      }
    </style>
</head>
<body>
<div class="container">
    <div class="info-left">
        <div class="card">
            <div class="card-header"><img src="img/avatar.png" alt=""></div>
            <div class="card-body">
                <form action="" method="post">
                <table>
                    <tr>
                        <td>备注：</td>
                        <td><input type="text" placeholder="" value="伤心花"></td>
                    </tr>
                    <tr>
                        <td>QQ:</td>
                        <td> 2313365812</td>
                    </tr>
                    <tr>
                        <td>分组：</td>
                        <td><input type="text" placeholder="" value="好友"></td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td>女</td>
                    </tr>
                    <tr>
                        <td>年龄：</td>
                        <td>133</td>
                    </tr>
                    <tr>
                        <td>星座：</td>
                        <td>天枰座</td>
                    </tr>
                    <tr>
                        <td>居住地：</td>
                        <td>贵州</td>
                    </tr>
                    <tr>
                        <td>添加好友时间：</td>
                        <td>2313-5-9</td>
                    </tr>
                    <tr>
                        <td><input type="submit" 修改好友></td>
                        <td><input type="reset" value="提交"></td>

                    </tr>
                </table>
                </form>
            </div>
        </div>
    </div>
    <div class="info-right">
    </div>
</div>
</body>
</html>

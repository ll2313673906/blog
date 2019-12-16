<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/12
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图片信息展示</title>
    <link rel="stylesheet" href="css.css">
    <style>
        .container{
            width: 100%;
            height: 100%;
            background:gray;
        }
        .main{
            width: 100%;
            height: 90%;
            background: red;
            position: relative;
            overflow: hidden;
        }
        .bottom{
            width: 100%;
            height: 9%;
            padding: 10px;
        }
        .main .img-div{
           width:100% ;
            height:100%;

        }
       /* 显示图片信息*/

        .main:active >.imgInfo{
            transform: translateY(-100%);
        }
        .imgInfo{
            width: 100%;
            height: 100%;
            background:gray;
            transition: transform 0.5s ease;
        }
        .bottom input{
            width: 150px;
            height: 35px;
            border-radius: 5px;
            border: none;

        }
        /*设置表格显示图片的信息内容*/
        table{
            border:1px solid #006666;
            border-collapse: collapse;
            width:80%;
            height: 80%;
        }
        th{
            margin-top: 2%;
        }
        table tr td{
            border:1px solid #006666;

        }
        table tr td:first-child{
            text-align: right;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="main">
           <div class="img-div">
               <img src="img/rewu2.jpg" alt="" title="鼠标长按查看图片信息">
           </div>
        <div class="imgInfo">
          <table>
              <tr>
                  <th colspan="2">图片的标题</th>
              </tr>
              <tr>
                  <td>图片的类型：</td>
                  <td>风景</td>
              </tr>
              <tr>
                  <td>图片的描述：</td>
                  <td>这是一张风景照</td>
              </tr>
              <tr>
                  <td>点击次数：</td>
                  <td>232</td>
              </tr>
              <tr>
                  <td>品论次数：</td>
                  <td>232</td>
              </tr>
              <tr>
                  <td>添加图片的时间：</td>
                  <td>2019-3-12</td>
              </tr>
          </table>
        </div>
    </div>
    <div class="bottom">
        <input type="button" value="删除">
    </div>
</div>
</body>
</html>

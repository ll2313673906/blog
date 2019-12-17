<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/17
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改好友信息</title>
    <link rel="stylesheet" href="css.css">
    <style>
     .container{
         width: 100%;
         height: 100%;
         background:url(img/updateFriendsBg.png)no-repeat 0px 0px;

     }
        .top{
            width: 100%;
            height: 50px;
            background: #006666;
            padding-top:1%;
            padding-left:5%;
        }
        .top a{
          margin-top: 5px;
            margin-left:1%;
            color: white;
        }
     .top a:hover{
         color: #7b1fa2;
     }
        .main-div{
            width: 40%;
            height:60%;
            background: #006666;
            margin-left:50%;
            margin-top:5%;
        }
        /*设置表格*/
       table{
           width: 90%;
       }
        table th{
            height: 50px;
            color: white;
        }
     table tr{
         height: 50px;

     }
     table tr td:first-child{
         text-align: right;

     }
     table tr td{
         height: 40px;
         color: white;
     }
     input[type=submit]{
         width: 100px;
         float: right;
         box-shadow:3px 3px #5c6bc0;
     }

     input[type=reset]{
         width: 100px;
         float: left;
         margin-left:10%;
         box-shadow:3px 3px #5c6bc0;
     }

    </style>
</head>
<body>
<%
    String frId = request.getParameter("frId");
    HttpSession hs = request.getSession(true);
    if (frId!=null&&!frId.equals("")){
        hs.setAttribute("frId",frId);
    }
%>
<div class="container">
    <div class="top">
        <a href="searchFriends.jsp">返回</a>
        <a href="updateFriends.jsp" target="_parent">放大显示</a>
    </div>
    <div class="main-div">
        <form action="FriendsServlet?flag=updateFriends" method="post">
            <table >
                <tr>
                    <th colspan="2">修改好友的信息</th>
                    <th></th>
                </tr>
                <tr>
                    <td>备注：</td>
                    <td><input type="text" name="nickName"></td>
                </tr>
                <tr>
                    <td>分组：</td>
                    <td>
                        <select name="updateSelect" id="updateSelect" onchange="document.getElementById('select').value=options[selectedIndex].value">
                            <option value="3">好友</option>
                            <option value="2">同事</option>
                            <option value="1">家人</option>
                            <option value="4">同学</option>
                            <option value="5">死党</option>
                        </select>
                    </td>
                    <input type="hidden" name="select" id="select">
                </tr>
                <tr>
                    <td>居住地：</td>
                    <td><input type="text" name="place"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="修改"></td>
                    <td><input type="reset"value="取消"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>

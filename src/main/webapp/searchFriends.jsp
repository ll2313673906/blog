<%@ page import="com.soft1841.web.blog.dao.FriendsDao" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.soft1841.web.blog.entity.Friends" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/11
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查找好友的页面</title>
    <link rel="stylesheet" href="css.css">
    <%
        HttpSession hs = request.getSession(true);
        FriendsDao friendsDao = DaoFactory.getFriendsInstance();
        List<HashMap> list;
    %>
    <script>
        function change() {
            var a = document.getElementById('searchFriendsSelect').value;
            document.location.href="searchFriends.jsp?select="+a;
        }

    </script>
    <style>
        .container{
            width: 100%;
            height: 100%;
        }
        .top{
            width: 100%;
            height: 100px;
            background:#006666;
        }
        .bottom{
            width: 100%;
            min-height: 600px;
            background:gray;
        }
        table{
            border-collapse: collapse;
            width: 90%;
        }
        table th{
            height: 40px;
            font-size: 15px;
        }
        table tr{
            max-height:40px;
        }
        table tr:hover{
            background:#006666;
            color: #ffffff;
        }
        td{
            height: 40px;
            text-align: center;
            font-size: 15px;
        }

        .top{
            display: flex;
            padding: 35px;
        }
        .top a{
            color: #ffffff;
            margin-left: 2%;
        }
        .top a:hover{
            color: #7b1fa2;
        }
        #searchFriendsSelect{
            width: 150px;
            border: none;
            border-radius: 5px;
            height: 30px;
            margin-left: 20px;
        }
        input[type = search]{
            margin-left: 20px;
            width:30%;
            border: none;
            border-radius: 5px;
            height: 30px;
        }
       .top input[type=submit]{
            margin-left:10px;
            width:10%;
            border: none;
            border-radius: 5px;
            height: 30px;
           font-size:15px;
        }
        td input[type=button]{
            margin-left: 20px;
            width:50px;
            border: none;
            border-radius: 5px;
            height: 30px;
            font-size:10px;
        }
        td input[type=button]:hover{
            background:gray;
        }
        form{
            width: 60%;

        }
        .top a{
            font-size: 16px!important;
            white-space: nowrap;/*禁止文字换行显示*/
        }

    </style>

</head>
<body>
<div class="container">

    <%
        String qq = request.getParameter("searchFriendsSearch");
        if (qq==null){
            hs.setAttribute("qq",1);


        }else {
            hs.setAttribute("qq",qq);
        }
        String nowQq = String.valueOf(hs.getAttribute("qq"));
        String select = request.getParameter("select");
        if (select==null){
            select="0";
        }
        Friends friends1 = new Friends();
        if (nowQq.equals("1")){
            list = friendsDao.getAllFriends();
        }else {
            Friends friends = new Friends();
            friends.setQqNumber(nowQq);
            List<HashMap> list1=friendsDao.searchFriends(friends);
            if (list1.size()>0){
                list=friendsDao.searchFriends(friends);
                hs.setAttribute("del",nowQq);
            }else {
                list=friendsDao.getAllFriends();
            }
        }
        if (select.equals("1")){
            list = friendsDao.getAllFriends();
        }
        if (select.equals("2")){
            friends1.setGroupId(3);
            list=friendsDao.searchFriends(friends1);
        }
        if (select.equals("3")){
            friends1.setGroupId(1);
            list=friendsDao.searchFriends(friends1);
        }
        if (select.equals("4")){
            friends1.setGroupId(2);
            list=friendsDao.searchFriends(friends1);

        }
    %>


 <div class="top">
     <a href="main.jsp">返回</a>
     <a href="searchFriends.jsp" target="_parent">放大窗口</a>
     <select name="" id="searchFriendsSelect" onchange=change() >
         <option >选择</option>
         <option value="1">全部</option>
         <option value="2">好友</option>
         <option value="3">家人</option>
         <option value="4">同事</option>
     </select>
     <input type="hidden" id="select" value=" ">
     <form action="searchFriends.jsp">
         <input type="search" placeholder="请输入好友的QQ" name="searchFriendsSearch">
         <input type="submit" value="搜索" name="searchBtn">
     </form>
     <a href="">修改好友信息</a>
 </div>
    <div class="bottom">
        <table border="1">
            <tr>
                <th>备注</th>
                <th>签名</th>
                <th>QQ</th>
                <th>分组</th>
                <th>性别</th>
                <th>年龄</th>
                <th>星座</th>
                <th>居住地</th>
                <th>加好友的时间</th>
            </tr>
            <%for(int i = 0; i <list.size(); i++){%>
            <tr>
                <td><%=list.get(i).get("nickName")%></td>
                <td><%=list.get(i).get("signature")%></td>
                <td><%=list.get(i).get("qq_number")%></td>
                <td><%=list.get(i).get("group_type")%></td>
                <td><%=list.get(i).get("gender")%></td>
                <td><%=list.get(i).get("age")%></td>
                <td><%=list.get(i).get("momentum")%></td>
                <td><%=list.get(i).get("place")%></td>
                <td><%=list.get(i).get("friend_time")%></td>
                <td>
                    <input type="button" value="删除好友" onclick="del()">
                </td>
            </tr>
                <%}%>

        </table>
    </div>
</div>
<script>
    function del() {
        <%
           String qqId = String.valueOf(hs.getAttribute("del"));
            if (qqId==null){
                qqId="1";
            }
            else {
                Friends friends = new Friends();
                friends.setQqNumber(qqId);
                try {
                    int n = friendsDao.deleteFriends(friends);
                    if (n==1){%>
                        alert("删除成功");
                        window.location.href="searchFriends.jsp";
                    <%}else{%>
                        alert("删除失败");
                        window.location.href="searchFriends.jsp";
                    <%}
                 } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        %>
    }
</script>


</body>

</html>

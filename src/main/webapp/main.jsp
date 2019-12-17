<%@ page import="com.soft1841.web.blog.entity.Friends" %>
<%@ page import="com.soft1841.web.blog.dao.FriendsDao" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/12/12
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css.css">
    <link rel="stylesheet" href="sdmenu.css">
    <style>
        body{
        }
        .container{
            background: mediumpurple;
            width: 100%;
            height: 100%;
            padding: 10px;
            display: flex;
        }
        .left{
            width:25%;
            height: 700px;
            background: palegoldenrod;
            float: left;

        }
        .main{
            width: 75%;
            height: 1000px;
            border:1px solid #7b1fa2;
            float: left;
            margin-left:1%;
        }

        /*!*左侧导航栏*!*/

        #my_menu{
            width: 100%;
            height:100%;
        }
        #my_menu div{
            background: #006666;
            width: 100%;
            padding-top: 40px;
            color:#006666;

        }
        #my_menu div span{
            height:40px;
            margin-top: -30px;
            border: 1px solid #ffffff;
            margin-bottom: 20px;
        }
        /*搜索栏*/
        .search{
            background:palegoldenrod;
            width: 100%;
            height:20% ;
            text-align: center;
            padding-top:2%;
        }
        .search a{
            color:#006666;
            margin:5%;
        }
        .search a:hover{
            color: #7b1fa2;
        }
        input[type = search]{
            margin: 20px auto;
            border-radius: 5px;
            border: none;
            height: 35px;
        }
        /*用于存放好友的头像和好友的昵称*/
        a img{
            width:60px;
            height: 60px;
            border-radius: 50%;
        }
        点击左侧下拉框右侧显示响应的信息
        #content li div{
            width: 100%;
            height: 100%;
            background:palegreen;
        }
        #content li{
            display: none;
            height: 100%;
        }


        #content li a{
            width: 100%;
            height: 50px;


        }

        #content li div iframe{
            width: 100%;
            height: 100%;
        }
        li{
            width: 100%;

        }
        a{
            display: flex;
            flex-wrap:wrap ;
            margin-top: 10px;
        }
        #my_menu ul{
            padding: 0 auto;
            min-height:100px;
            background:mediumpurple;
            margin-top: -20px;
        }
        #nav li{
            margin-top: 1px;
        }
       li a{
            color: #006666;
        }
    </style>
</head>
<body>
<%
FriendsDao friendsDao = DaoFactory.getFriendsInstance();
List<HashMap> list = friendsDao.countGroup();
HttpSession hs = request.getSession(true);
String p = request.getParameter("m");
String q = request.getParameter("j");
if (p!=null&&q!=null){
    hs.setAttribute("m1",p);
    hs.setAttribute("j1",q);
}else {
    hs.setAttribute("m1","1");
    hs.setAttribute("j1","1");
}


%>
<%--<%--%>
<%--    FriendsDao friendsDao = DaoFactory.getFriendsInstance();--%>
<%--    List<HashMap> list = friendsDao.countGroup();--%>
<%--%>--%>
<div class="container">
    <div class="left" id="left">
        <%--        /*搜索栏*/--%>
        <div class="search">
           <a href="main.jsp" target="_parent">
               放大窗口</a>
            <a href="searchFriends.jsp">查找好友</a>
            <a href="insertFriends.jsp">新增好友</a>
        </div>
        <div id="my_menu" class="sdmenu">
            <%for (int i=0,m=1;i<list.size();i++,m++){
            %>
            <div>
                <span class="menuSpan"><%=list.get(i).get("group_type")%></span>
                <%
                    Friends friends = new Friends();
                    friends.setGroupId(m);
                    List<HashMap> list1 = friendsDao.searchFriends(friends);
                    int n = friendsDao.searchFriends(friends).size();
                %>
                <ul id="nav<%=m%>">
                    <%for (int j=0;j<n;j++){%>
                    <li class="active"> <a href="main.jsp?m=<%=m%>&&j=<%=j%>"><img src=<%=list1.get(j).get("avatar")%>><%=list1.get(j).get("nickName")%></a></li>
                    <%}%>

                </ul>
            </div>
            <%}%>

        </div>
    </div>
    <div class="main">
        <jsp:include page="friendsInfo.jsp"></jsp:include>
    </div>
</div>


<script type="text/javascript" src="tools.js"></script>
<script type="text/javascript">
    window.onload = function(){
        var menuSpan = document.querySelectorAll(".menuSpan");
        var openDiv = menuSpan[0].parentNode;
        for(var i=0 ; i<menuSpan.length ; i++){
            menuSpan[i].onclick = function(){
                var parentDiv = this.parentNode;
                toggleMenu(parentDiv);
                if(openDiv != parentDiv  && !hasClass(openDiv , "collapsed")){
                    toggleMenu(openDiv);
                }
                openDiv = parentDiv;
            };
        }

        function toggleMenu(obj){
            var begin = obj.offsetHeight;
            toggleClass(obj , "collapsed");
            var end = obj.offsetHeight;
            obj.style.height = begin + "px";
            move(obj,"height",end,100,function(){
                obj.style.height = "";
            });
        }
    };
</script>

</body>
</html>

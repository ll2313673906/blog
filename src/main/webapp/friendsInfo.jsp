<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.soft1841.web.blog.dao.FriendsDao" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="com.soft1841.web.blog.entity.Friends" %><%--
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
            display: flex;

        }
        .info-left{
            width:45%;
            height: 90%;
            background:palegoldenrod;
        }

        /*卡片展示好友的信息*/
        .card{
            width: 100%;
            height: 80%;
            text-align: center;
        }
        .card-header{
            width: 100%;
            height: 25%;
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
            background:#006666 ;
            padding-top: 20%;
        }
        table展示好友详情信息
        table{
            width: 100%;
            height: 80%;
            box-sizing: border-box;

        }
        table tr{
            height: 40px;
        }
        table tr td:first-child{
            text-align: right;
        }
        table tr td {
            font-size: 16px;
            color:#ffffff;
        }
        table tr td:nth-child(2){
            text-align: left;

        }
        input{
            width: 120px;
            border-radius: 5px;
            border: none;
        }

        #select{
            width: 120px;
            border-radius: 5px;
        }

        input[type=submit]{
            width: 80px;
            height: 30px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type=submit]:last-child{
            margin-left: 5px;
            border-radius: 5px;
            font-size: 16px;
        }
        /*右侧卡片显示好友的动态*/
        .info-right{
            width:56%;
            height:100%;
            background:#006666;
            margin-left: 1%;
            float: left;
            padding: 2%;
            line-height: 40px;
            color: #ffffff;
        }
        .right-card{
            width: 100%;
            min-height: 300px;
            background:palegoldenrod;
            padding: 1%;
            color: black;
        }
        .card-head{
            width:100%;
            height: 50px;
        }

        .card-right-body p{
            font-size: 10px;
            text-align: justify;

        }
        .bottom{
            width: 100%;
            height: 50px;
            padding: 1%;
        }
        .bottom ul{
            display: flex;
        }
        .bottom ul li{
            font-size: 15px;
            margin-left:5%;
            list-style: none;

        }
        pre{
            color: #006666;
        }
    </style>
</head>
<body>
<script>
    <%
    HttpSession hs = request.getSession(true);
    FriendsDao friendsDao = DaoFactory.getFriendsInstance();
    String s_m;
    String s_j;
    String gender ="null";
    String qq = "null";
    String niceName = "null";
    String groupId=null;
    String age = null;
    String momentum = null;
    String place = null;
    String friendTime = null;
    String avatar = null;
    if (String.valueOf(hs.getAttribute("m1"))!=null&&String.valueOf(hs.getAttribute("j1"))!=null){
        s_j=String.valueOf(hs.getAttribute("j1"));
        s_m=String.valueOf(hs.getAttribute("m1"));
        Friends friends = new Friends();
        friends.setGroupId(Integer.parseInt(s_m));
        List<HashMap>list = null;
        try {
       list = friendsDao.searchFriends(friends);}
        catch (Exception e) {
    e.printStackTrace();
}
        gender = String.valueOf(list.get(Integer.parseInt(s_j)).get("gender"));
        qq=String.valueOf(list.get(Integer.parseInt(s_j)).get("qq_number"));
        niceName = String.valueOf(list.get(Integer.parseInt(s_j)).get("nickName"));
        groupId = String.valueOf(list.get(Integer.parseInt(s_j)).get("group_type"));
        age = String.valueOf(list.get(Integer.parseInt(s_j)).get("age"));
        momentum = String.valueOf(list.get(Integer.parseInt(s_j)).get("momentum"));
        place = String.valueOf(list.get(Integer.parseInt(s_j)).get("place"));
        friendTime = String.valueOf(list.get(Integer.parseInt(s_j)).get("friend_time"));
        avatar = String.valueOf(list.get(Integer.parseInt(s_j)).get("avatar"));
    }

    %>
</script>

<div class="container">
    <div class="info-left">
        <div class="card">
            <div class="card-header"><img src=<%=avatar%> alt="头像"></div>
            <div class="card-body">
                <form action="" method="post">
                    <table>
                        <tr>
                            <td>备注：</td>
                            <td><%=niceName%></td>
                        </tr>
                        <tr>
                            <td>QQ:</td>
                            <td><%=qq%></td>
                        </tr>
                        <tr>
                            <td>分组：</td>
                            <td><%=groupId%></td>
                        </tr>
                        <tr>
                            <td>性别：</td>
                            <td><%=gender%></td>
                        </tr>
                        <tr>
                            <td>年龄：</td>
                            <td><%=age%></td>
                        </tr>
                        <tr>
                            <td>星座：</td>
                            <td><%=momentum%></td>
                        </tr>
                        <tr>
                            <td>居住地：</td>
                            <td><%=place%></td>
                        </tr>
                        <tr>
                            <td>添加好友时间：</td>
                            <td><%=friendTime%></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <div class="info-right">
        <%-- 右测展示好友的日志一些动态--%>
        <h3><%=niceName%></h3>
        <h6>文章的标题</h6>
        <div class="right-card">
            <div class="card-head"><h4>文章的标题</h4></div>
            <div class="card-right-body">
                <p>
                    幸运的是，无境一棒子打在藏獒的头部，
                    虽然没有将它打伤，但是它也知道疼痛，
                    忌惮之余，便退在了一旁，虎视眈眈的瞪着他，不断地咆哮。
                    看门的藏獒动静太大，竟引得没有拴住的园中的那只藏獒也狂奔而起，
                    跃出篱笆，张开血盆大口，往无境身上咬去。
                    “你们把我的两只长尾火猿咬的遍体鳞伤，我打死你们！”狂怒之下，无境只顾抓着棍棒，乱打一通。
                    可是这头藏獒的身法实在迅捷，虽然无境的一棒打在它的身上，却没有对他造成伤害，反而直往前抢攻，
                    如弯刀一般的獠牙狠狠地咬在了无境的胳膊之上。

                </p>
            </div>
            <div class="bottom">
                <ul>
                    <li>发表的时间:</li>
                    <li>发表的地点:</li>
                    <li><pre>作者:</pre></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>

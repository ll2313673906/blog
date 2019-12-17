<%@ page import="com.soft1841.web.blog.dao.PhotoDao" %>
<%@ page import="com.soft1841.web.blog.factory.DaoFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.soft1841.web.blog.entity.Photo" %><%--
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

        .left{
            width:100%;
            min-height: 200px;
            background:#ffffff;
            text-align: center;
            float: left;
            margin-top:3%;
        }
        .container{
            background:#006666;
            width: 100%;
            height: 100%;
            padding-top: 20px;
        }
        .col-1{
            flex:0 0 23%;
            height:350px;
            background:#006666;
            margin:10px 10px;
            color: #ffffff;
            box-shadow:0 0 3px 3px #006666;
        }


        iframe{
            width: 100%;
            height: 100%;
        }
        .top{
            width: 100%;
            height:30px;
            float: left;
            padding:1% 3% ;


        }
        .top input[type=search]{
            width: 250px;
            border: none;
            height: 35px;
            border-radius: 5px;
            font-size: 10px;
            margin-left:5px;
        }

       .top:first-child input{
           margin-left:10px;
        }
       .content-div{
           padding:2% 2%;
       }
       /*.content-div ul li a{*/
       /*    font-size: 10px!important;*/
       /*    float: left;*/
       /*}*/
       .content-div input[type=button]{
           height: 30px;
           margin-top:2.5%;
       }
        .img-div{
            width: 100%;
            height:70%;
            background:#006666;
        }
        /*点击图片图片放大*/
        .img-div img:active{
           margin: 0 auto;
            width:600px;
            height:600px;
            position: absolute;
        }
        ul{
            display: flex;
           padding-left: 20px;
            margin-left:1%;
            margin-top:4%;
            padding-left:1%;

        }
        ul li {
            list-style: none;
            font-size:13px ;
        }
        li:first-child{
            margin-right:10%;
        }
       a{
            float: right;
            margin-top: -30px;

        }
        form{
            width:30%;
        }
       a:first-child{
           color: #ffffff;
           position: absolute;
           margin-left:460px;
           margin-top:10px;
       }
        input[type=submit]{
            width: 50px;
        }

    </style>
    <%  PhotoDao photoDao = DaoFactory.getPhotoInstance();
        List<HashMap> list =photoDao.getAllPhoto();;
        int size =list.size();
        String type = request.getParameter("select");
        if (type!=null&&type!=""){
            try {
                list=photoDao.getAllPhotosByType(type);
                size = list.size();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else {
            list =photoDao.getAllPhoto();
            size = list.size();
        }
    %>
</head>
<body>

<div class="container">
    <%
        String select = request.getParameter("select");
        if (select==null){
            select="1";
            list =photoDao.getAllPhoto();
            size = list.size();

        }else{
            List<HashMap> list1 = photoDao.getAllPhotosByType(select);
            if (list1.size()>=1){
                list = photoDao.getAllPhotosByType(select);
                size=list.size();
            }
        }
    %>
    <script>
        <%
       /**
         * 获取自身界面地址为imgId的值
         */
        String imgId = request.getParameter("imgId");
        if (imgId!=null&&!imgId.equals("")){
            int id = Integer.parseInt(imgId);
            Photo photo = new Photo();
            photo.setImgId(id);
            int n = photoDao.deletePhoto(photo);
            if (n==1){%>
            alert("删除成功");

        <%}}%>

    </script>
    <div class="top">
        <a href="photo.jsp" target="_parent" id="big">放大显示</a>
        <form action="photo.jsp" >
            <input type="text" placeholder="请输入图片的名称" name="select">
            <input type="submit" value="搜索">
        </form>

        <a href="addImg.jsp"><input type="button" value="上传照片"></a>

    </div>

    <div class="left">

        <%
            int m=-4;
            int n = list.size()/4;
            if (list.size()%4==0){
                n = list.size()/4;
            }else {
                n=n+1;
            }
        %>
        <%for (int i = 0; i<n-1; i++){
            m=m+4;%>
        <div class="row">
            <%for (int j=m; j<m+4; j++){%>
            <div class="col-1">
                <div class="img-div"><img src=<%=list.get(j).get("img_content")%> alt="图片" title="点击查看大图"></div>
                <div class="content-div">

                 <h6><%=list.get(j).get("photo_type")%></h6>
                    <ul>
                        <li>上传时间：<%=list.get(j).get("img_time")%></li>
                        <li>点击次数：<%=list.get(j).get("img_click")%></li>
                    </ul>
                    <br>

                    <a href="photo.jsp?imgId=<%=list.get(j).get("img_id")%>"><input type="button" value="删除" name="delPhoto"></a>
                </div>
            </div>
            <%}%>
        </div>
        <%}%>
        <div class="row">
            <%
                for (int i=(n-1);i<list.size()-(n-1);i++){%>
            <div class="col-1">
                <div class="img-div"><img src=<%=list.get(i).get("img_content")%> alt="图片" title="点击查看大图"></div>
                <div class="content-div">
                    <h6><%=list.get(i).get("photo_type")%></h6>
                    <ul>
                        <li>上传时间：<%=list.get(i).get("img_time")%></li>
                        <li>点击次数：<%=list.get(i).get("img_click")%></li>
                    </ul>
                    <br>
                    <a href="photo.jsp?imgId=<%=list.get(i).get("img_id")%>"><input type="button" value="删除" name="delPhoto"></a>

                </div>
            </div>
            <%}%>
        </div>
    </div>
</div>
</body>
</html>

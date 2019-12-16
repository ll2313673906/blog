package com.soft1841.web.blog.controller;

import com.soft1841.web.blog.dao.PhotoDao;
import com.soft1841.web.blog.entity.Photo;
import com.soft1841.web.blog.factory.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "PhotoServlet",urlPatterns = {"/PhotoServlet"})
public class PhotoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession hs = request.getSession(true);
        PhotoDao photoDao = DaoFactory.getPhotoInstance();
        //上传图片Servlet
        String flag = request.getParameter("flag");
        if (flag.equals("addImg")){
            String imgName =request.getParameter("imgName");
            String select = request.getParameter("select");
            String imgDescription =request.getParameter("imgDescription");
            String imgContent = request.getParameter("imgContent");
            Photo photo = new Photo();
            photo.setImgName(imgName);
            photo.setImgTypeId(Integer.parseInt(select));
            photo.setImgDescription(imgDescription);
            photo.setImgContent("img/"+imgContent);
                try {
                    int n = photoDao.insertPhoto(photo);
                    if (n==1){
                        request.getRequestDispatcher("home.jsp").forward(request,response);
                    }else {
                        request.getRequestDispatcher("addImg.jsp?title=failure").forward(request,response);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
        }
    }
}

package com.soft1841.web.blog.controller;
import com.soft1841.web.blog.dao.UserDao;
import com.soft1841.web.blog.factory.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "UserController",urlPatterns = {"/users"})
public class UserController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession hs = request.getSession(true);
        String qqId= request.getParameter("userName");
        String userPassword = request.getParameter("userPassword");
        String flag = request.getParameter("flag");
        UserDao userDao = DaoFactory.getUserDaoInstance();
        if (flag.equals("login")){
            try {
                if (userDao.login(qqId,userPassword)){
                    hs.setAttribute("qq_id",qqId);
                    request.getRequestDispatcher("home.jsp").forward(request,response);
                }else {
                    request.getRequestDispatcher("login.jsp").forward(request,response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
      }
    }

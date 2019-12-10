package com.soft1841.web.blog.controller;
import com.soft1841.web.blog.dao.UserDao;
import com.soft1841.web.blog.entity.User;
import com.soft1841.web.blog.factory.DaoFactory;
import com.soft1841.web.blog.util.LegalPhone;

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
        UserDao userDao = DaoFactory.getUserDaoInstance();
        String qqId= request.getParameter("userName");
        String userPassword = request.getParameter("userPassword");
        String flag = request.getParameter("flag");
        String phone = request.getParameter("mobile");
        String code = request.getParameter("code");
        String getCode = String.valueOf(hs.getAttribute("code"));
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
        if (flag.equals("phoneLogin")){
            try {
                if (userDao.getUserInfoByPhone(phone).getPhone()!=null){
                    if (code.equals(getCode)){
                        hs.setAttribute("phone",phone);
                        hs.setAttribute("qq_id",userDao.getUserInfoByPhone(phone).getQqId());
                        request.getRequestDispatcher("home.jsp").forward(request,response);
                    }
                    request.getRequestDispatcher("login.jsp?title=验证码输入错误！请重新输入").forward(request,response);
                }else {
                    request.getRequestDispatcher("login.jsp?该手机用户不存在").forward(request,response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(flag.equals("register")){
            String user_name = request.getParameter("user_name");
            String qq_id = request.getParameter("qq_id1");
            String user_password = request.getParameter("user_password");
            String user_phone = request.getParameter("user_phone");
            String gender = request.getParameter("gender");
            String constellation = request.getParameter("constellation");
            String avatar = request.getParameter("avatar");
            if (LegalPhone.isMobiPhoneNum(user_phone)){
                try {
                    if (userDao.getUserInfoByPhone(user_phone).getPhone()==null){
                        User user = new User();
                        user.setUserName(user_name);
                        user.setQqId(qq_id);
                        user.setUserPassword(user_password);
                        user.setPhone(user_phone);
                        user.setGender(gender);
                        user.setConstellation(constellation);
                        user.setAvatar(avatar);
                        userDao.insert(user);
                        hs.setAttribute("qq_id",qq_id);
                        request.getRequestDispatcher("home.jsp?title=register").forward(request,response);
                    }else {
                        request.getRequestDispatcher("registered.jsp?title=presence").forward(request,response);

                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                request.getRequestDispatcher("registered.jsp?title=isLegal").forward(request,response);
            }
        }


      }
    }

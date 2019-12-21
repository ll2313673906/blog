package com.soft1841.web.blog.controller;
import com.soft1841.web.blog.dao.ArticleDao;
import com.soft1841.web.blog.dao.FriendsDao;
import com.soft1841.web.blog.dao.UserDao;
import com.soft1841.web.blog.dao.impl.ArticleDaoImpl;
import com.soft1841.web.blog.entity.Article;
import com.soft1841.web.blog.entity.Friends;
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
        FriendsDao friendsDao = DaoFactory.getFriendsInstance();
        ArticleDao articleDao = DaoFactory.getArticleInstance();
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
                    request.getRequestDispatcher("bgLunbo.jsp").forward(request,response);
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
                        request.getRequestDispatcher("bgLunbo.jsp").forward(request,response);
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
                        request.getRequestDispatcher("bgLunbo.jsp?title=register").forward(request,response);
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
        if (flag.equals("updateArticles")){
            String s_id = String.valueOf(hs.getAttribute("id"));
            int id = Integer.parseInt(s_id);
            String content = request.getParameter("content");
            Article article = new Article();
            article.setId(id);
            article.setArticleContent(content);
            int n = articleDao.updateArticle(article);
            if (n==1){
                request.getRequestDispatcher("article.jsp?title=success").forward(request,response);
            }else{
                request.getRequestDispatcher("editArticle.jsp?title=failure").forward(request,response);
            }

        }

        //新增说说
        if (flag.equals("insertArticle")){
            String insertContent = request.getParameter("insertContent");
            String insertImg = request.getParameter("insertImg");
            String insertDate = request.getParameter("insertDate");
            String userQq = String.valueOf(hs.getAttribute("qq_id"));
            Article article = new Article();
            article.setArticleContent(insertContent);
            article.setPhoto("img/" + insertImg);
            article.setArticleTime(insertDate);
            article.setUserId(userQq);
            try {
                int n = articleDao.insertArticle(article);
                if (n==1){
                    request.getRequestDispatcher("article.jsp?title=success").forward(request,response);
                }else {
                    request.getRequestDispatcher("insertArticle.jsp?title=failure").forward(request,response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }



      }
    }

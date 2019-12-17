package com.soft1841.web.blog.controller;

import com.soft1841.web.blog.dao.FriendsDao;
import com.soft1841.web.blog.dao.UserDao;
import com.soft1841.web.blog.entity.Friends;
import com.soft1841.web.blog.factory.DaoFactory;

import javax.print.DocFlavor;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "FriendsServlet",urlPatterns = {"/FriendsServlet"})
public class FriendsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession hs = request.getSession(true);
        FriendsDao friendsDao = DaoFactory.getFriendsInstance();
        String flag = request.getParameter("flag");
        if (flag.equals("insert")){
            String nickName= request.getParameter("nickName");
            String qqNumber =request.getParameter("qqNumber");
            String description =request.getParameter("description");
            String momentum = request.getParameter("momentum");
            String select = request.getParameter("Select");
            String friendTime = request.getParameter("friendTime");
            Friends friends = new Friends();
            friends.setNickName(nickName);
            friends.setQqNumber(qqNumber);
            friends.setSignature(description);
            friends.setMomentum(momentum);
            friends.setGroupId(Integer.parseInt(select));
            friends.setFriendTime(friendTime);
            try {
                int n = friendsDao.insertFriend(friends);
               if (n==1){
                   request.getRequestDispatcher("searchFriends.jsp").forward(request,response);
               }else {
                   request.getRequestDispatcher("insertFriends.jsp?title=failure").forward(request,response);
               }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (flag.equals("updateFriends")){
            String id = String.valueOf(hs.getAttribute("frId"));
            String nickName = request.getParameter("nickName");
            String groupId = request.getParameter("select");
            String place = request.getParameter("place");
            Friends friends = new Friends();
            friends.setGroupId(Integer.parseInt(groupId));
            friends.setPlace(place);
            friends.setNickName(nickName);
            friends.setId(Integer.parseInt(id));
            try {
                int n = friendsDao.updateFriend(friends);
                if (n==1){
                    request.getRequestDispatcher("searchFriends.jsp?title=success").forward(request,response);
                }else{
                    request.getRequestDispatcher("updateFriends.jsp?title=failure").forward(request,response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        }

    }
}

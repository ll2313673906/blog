package com.soft1841.web.blog.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.soft1841.web.blog.entity.User;
import com.soft1841.web.blog.util.DataSpider;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "UserController",urlPatterns = {"/users"})
public class UserController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Gson gson = new GsonBuilder().create();
            List<User> userList = DataSpider.getUsers();
            response.setContentType("application/json;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.print(gson.toJson(userList));
            out.close();
        }
    }

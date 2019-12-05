package com.soft1841.web.blog.dao;

import com.soft1841.web.blog.factory.DaoFactory;
import org.junit.Test;


public class UserDaoTest  {
private UserDao userDao = DaoFactory.getUserDaoInstance();


    @Test
    public void login() throws Exception{
        String id = "2313673906";
        String pas = "123";
        boolean a = userDao.login(id,pas);
        System.out.println(a);

    }
    @Test
    public void insert() {
    }

}
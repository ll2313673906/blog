package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.UserDao;
import com.soft1841.web.blog.entity.User;
import com.soft1841.web.blog.factory.DaoFactory;
import org.junit.Test;


public class UserDaoImplTest {
    UserDao userDao = DaoFactory.getUserDaoInstance();

    @Test
    public void insert() throws Exception {
        User user = new User();
        user.setQqId("2313673908");
        user.setUserPassword("123");
        user.setUserName("罗丹");
        user.setAvatar("img/rewu1.jpg");
        System.out.println(userDao.insert(user));
    }
}
package com.soft1841.web.blog.factory;

import com.soft1841.web.blog.dao.UserDao;
import com.soft1841.web.blog.dao.impl.UserDaoImpl;
import com.soft1841.web.blog.service.UserService;
import com.soft1841.web.blog.service.impl.UserServiceImpl;

/**
 * FileName       DaoFactory
 * Author：       留恋
 * Date：         2019/11/28 16:44
 * Description：  工厂
 */
public class ServiceFactory {
    public static UserService getUserServiceInstance(){return new UserServiceImpl();
    }
}

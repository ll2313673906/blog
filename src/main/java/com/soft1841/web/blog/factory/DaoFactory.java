package com.soft1841.web.blog.factory;

import com.soft1841.web.blog.dao.FriendsDao;
import com.soft1841.web.blog.dao.UserDao;
import com.soft1841.web.blog.dao.impl.FriendsImpl;
import com.soft1841.web.blog.dao.impl.UserDaoImpl;

/**
 * FileName       DaoFactory
 * Author：       留恋
 * Date：         2019/11/28 16:44
 * Description：  工厂
 */
public class DaoFactory {
    public static UserDao getUserDaoInstance(){return new UserDaoImpl();
    }
    public static FriendsDao getFriendsInstance(){return new FriendsImpl();
    }
}

package com.soft1841.web.blog.factory;

import com.soft1841.web.blog.dao.ArticleDao;
import com.soft1841.web.blog.dao.FriendsDao;
import com.soft1841.web.blog.dao.PhotoDao;
import com.soft1841.web.blog.dao.UserDao;
import com.soft1841.web.blog.dao.impl.ArticleDaoImpl;
import com.soft1841.web.blog.dao.impl.FriendsDaoImpl;
import com.soft1841.web.blog.dao.impl.PhotoDaoImpl;
import com.soft1841.web.blog.dao.impl.UserDaoImpl;
import com.soft1841.web.blog.entity.Photo;

/**
 * FileName       DaoFactory
 * Author：       留恋
 * Date：         2019/11/28 16:44
 * Description：  工厂
 */
public class DaoFactory {
    //用户
    public static UserDao getUserDaoInstance(){return new UserDaoImpl();
    }
    //好友
    public static FriendsDao getFriendsInstance(){return new FriendsDaoImpl();
    }
    //说说
    public static ArticleDao getArticleInstance(){return new ArticleDaoImpl();
    }
    //照片
    public static PhotoDao getPhotoInstance(){return new PhotoDaoImpl();
    }
}

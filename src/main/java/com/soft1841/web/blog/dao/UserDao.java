package com.soft1841.web.blog.dao;

import com.soft1841.web.blog.entity.User;



/**
 * FileName       UserDao
 * Author：       留恋
 * Date：         2019/11/28 16:42
 * Description：  接口
 */
public interface UserDao {
    /**
     * 登录
     * @param qqId
     * @param userPassword
     * @throws Exception
     */
    boolean login(String qqId,String userPassword)throws Exception;

    /**
     * 新增用户
     * @param user
     * @throws Exception
     */
    void insert (User user) throws Exception;



}

package com.soft1841.web.blog.dao;

import com.soft1841.web.blog.entity.User;

import java.util.HashMap;
import java.util.List;


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
    int insert (User user) throws Exception;

    /**
     * 根据qqId查询用户信息，主要用来home.jsp界面的数据
     * @param qqId
     * @return
     * @throws Exception
     */
    User getUserInfoByQqId(String qqId) throws Exception;

    /**
     * 根据手机号查询用户信息
     * @param phone
     * @return
     * @throws Exception
     */
    User getUserInfoByPhone(String phone) throws Exception;

    /**
     * 根据作者的qq
     * @return
     * @throws Exception
     */
    List<HashMap> getAllArticleByUserQq(String userQqId) throws Exception;

}

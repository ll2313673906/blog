package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.UserDao;
import com.soft1841.web.blog.entity.User;
import com.soft1841.web.blog.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;

/**
 * FileName       UserDaoImpl
 * Author：       留恋
 * Date：         2019/11/28 16:43
 * Description：  实现类
 */
public class UserDaoImpl extends JDBCUtil implements UserDao {

    @Override
    public boolean login(String qqId, String userPassword) throws Exception {
        // 登录
        Boolean flag = false;
        String sql = "SELECT * FROM t_user WHERE qq_id=? AND user_password=?";
        Object[] params = {qqId,userPassword};
        List<HashMap> list = this.executeQuery(sql,params);
        if (list.size() == 0){
            flag = false;
        }else {
            flag = true;
        }
        return flag;

    }


    @Override
    public int insert(User user) throws Exception {
        String sql = "INSERT INTO t_user (qq_id,user_password,user_name,avatar,phone,gender,constellation)VALUES (?,?,?,?,?,?,?)";
        Object[] params = {user.getQqId(),user.getUserPassword(),user.getUserName(),user.getAvatar(),user.getPhone(),user.getGender(),user.getConstellation()};
        int n = this.executeUpdate(sql,params);
        return n;
    }

    @Override
    public User getUserInfoByQqId(String qqId) throws Exception {
        String sql = "SELECT * FROM t_user WHERE qq_id=?";
        Connection connection = JDBCUtil.getInitJDBCUtil().getConnection();
        PreparedStatement psmt = connection.prepareStatement(sql);
        psmt.setString(1,qqId);
        ResultSet rs = psmt.executeQuery();
        User user = new User();
        while (rs.next()){
            user.setAvatar(rs.getString("avatar"));
            user.setUserName(rs.getString("user_name"));
            user.setQqSignature(rs.getString("qq_signature"));
        }
        rs.close();
        psmt.close();
        connection.close();
        return user;


    }

    @Override
    public User getUserInfoByPhone(String phone) throws Exception {
        String sql = "SELECT * FROM t_user WHERE phone=?";
        Connection connection = JDBCUtil.getInitJDBCUtil().getConnection();
        PreparedStatement psmt = connection.prepareStatement(sql);
        psmt.setString(1,phone);
        ResultSet rs = psmt.executeQuery();
        User user = new User();
        while (rs.next()){
            user.setPhone(rs.getString("phone"));
            user.setQqId(rs.getString("qq_id"));
        }
        rs.close();
        psmt.close();
        connection.close();
        return user;
    }
}

package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.UserDao;
import com.soft1841.web.blog.entity.User;
import com.soft1841.web.blog.util.DataBaseConnection;
import com.soft1841.web.blog.util.DbUtil;
import com.soft1841.web.blog.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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
//
//    @Override
//    public List<User> selectUser(String qqId) throws Exception {
//        String sql = "SELECT * FROM t_user WHERE qq_id="+qqId;
//        PreparedStatement pstmt = null;
//        DataBaseConnection dbc = null;
//        dbc = new DataBaseConnection();
//        pstmt = dbc.getConnection().prepareStatement(sql);
//        ResultSet rs = pstmt.executeQuery();
//        List<User> userList = new ArrayList<>();
//        try {
//            while (rs.next()) {
//                User user = new User();
//                user.setAvatar(rs.getString("avatar"));
//                userList.add(user);
//            }
//            pstmt.close();
//            rs.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }finally {
//            dbc.close();
//        }
//        return userList;
//    }

    @Override
    public void insert(User user) throws Exception {
        Connection connection = DbUtil.getConnection();
        String sql = "";
    }
}

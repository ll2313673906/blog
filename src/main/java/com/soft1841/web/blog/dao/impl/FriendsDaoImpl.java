package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.FriendsDao;
import com.soft1841.web.blog.entity.Friends;
import com.soft1841.web.blog.util.JDBCUtil;

import javax.naming.spi.ObjectFactory;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * FileName       FriendsImpl
 * Author：       留恋
 * Date：         2019/12/5 10:59
 * Description：  好友管理实现类
 */
public class FriendsDaoImpl extends JDBCUtil implements FriendsDao {
    @Override
    public List<HashMap> getAllFriends() throws Exception {
        List<HashMap> list = new ArrayList<>();
        String sql = "SELECT t1.id,t1.nickName,t1.signature,t1.qq_number,t1.gender,t1.age,t1.momentum,t1.place,t1.friend_time, t2.group_type,t3.content,log_time,log_address,log_author,t4.avatar\n" +
                "FROM t_friends t1\n" +
                "LEFT JOIN t_group t2 ON t1.group_id = t2.id\n" +
                "LEFT JOIN t_user t4 ON t1.user_id = t4.id\n" +
                "LEFT JOIN t_log t3 ON t1.log_id = t3.id";
        list = this.executeQuery(sql,null);
        return list;
    }

    //新增好友
    @Override
    public int insertFriend(Friends friends) throws Exception {
       String sql = "INSERT INTO t_friends(nickName,signature,qq_number," +
               "group_id,momentum,friend_time) VALUES (?,?,?,?,?,?)";
       Object[] params = {friends.getNickName(),friends.getQqNumber(),
               friends.getSignature(),friends.getGroupId(),friends.getMomentum(),
               friends.getFriendTime()};
       int n = this.executeUpdate(sql,params);
        return n;
    }
   //修改好友信息
    @Override
    public int updateFriend(Friends friends) throws Exception {
     String sql = "UPDATE t_friends SET nickName=?, group_id=?,place=? WHERE id=?";
     Object[] param = {friends.getNickName(),friends.getGroupId(),friends.getPlace(),
             friends.getId()};
    int n  = this.executeUpdate(sql,param);
       return n;
    }

    @Override
    public int deleteFriends(Friends friends) throws Exception {
        //根据id和qqId删除好友
        String sql = " DELETE FROM t_friends WHERE id=? OR qq_number=? OR group_id=?";
      Object[] params = {friends.getId(),friends.getQqNumber(),friends.getGroupId()};
      int n = this.executeUpdate(sql,params);
      return n;

    }

    @Override
    public List<HashMap> searchFriends(Friends friends) throws Exception {
        //根据id和qqId以及分组查找好友
        List<HashMap> friendList = new ArrayList<>();
        String sql = "SELECT t1.*,t2.`group_type`\n" +
                "FROM t_friends t1\n" +
                "LEFT JOIN t_group t2\n" +
                "ON t1.`group_id`=t2.`id`"+
                "WHERE t1.`id`=? OR t1.`nickName`=? OR t1.`group_id`=? OR t1.`qq_number`=? ";
        Object[] params = {friends.getId(),friends.getNickName(),friends.getGroupId(),friends.getQqNumber()};
        friendList = this.executeQuery(sql,params);
        return friendList;
    }

    @Override
    public List<HashMap> countGroup() throws Exception {
        String sql="SELECT * FROM t_group";
        Object[] param ={};
        List<HashMap> list = this.executeQuery(sql,param);
        return list;
    }

    @Override
    public List<HashMap> getAllLogs() throws Exception {
        String sql = "SELECT  t1.`nickName`,t1.`place`,t1.`signature`,t2.`content`,t2.`log_time`,t1.`avatar`\n" +
                "FROM t_friends t1\n" +
                "LEFT JOIN t_log t2\n" +
                "ON t1.`log_id`=t2.`id`";
        Object[] param = {};
        List<HashMap> list = this.executeQuery(sql,param);
        return list;
    }

    @Override
    public List<HashMap> getAllLogsByAuthor(String author) throws Exception {
        String sql = "SELECT  t1.`nickName`,t1.`place`,t1.`signature`,t2.`content`,t2.`log_time`,t1.`avatar`\n" +
                "FROM t_friends t1\n" +
                "LEFT JOIN t_log t2\n" +
                "ON t1.`log_id`=t2.`id`\n" +
                "WHERE t1.`nickName` = ?";
        Object[] param ={author};
        List<HashMap> list  = this.executeQuery(sql,param);
        return list;
    }
}

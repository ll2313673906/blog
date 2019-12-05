package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.FriendsDao;
import com.soft1841.web.blog.entity.Friends;
import com.soft1841.web.blog.util.JDBCUtil;

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
        String sql = "SELECT t1.id,nickName,signature,qq_number,gender,age,momentum,place,friend_time,\n" +
                "t2.group_type,t3.content,log_time,log_address,log_author\n" +
                "FROM t_friends t1\n" +
                "LEFT JOIN t_group t2 ON t1.group_id = t2.id\n" +
                "LEFT JOIN t_log t3 ON t1.log_id = t3.id";
        list = this.executeQuery(sql,null);
        return list;
    }

    //新增好友
    @Override
    public int insertFriend(String nickName, String qqNumber, int groupId, String friendTime) throws Exception {
       String sql = "INSERT INTO t_friends(nickName,qq_number,group_id,friend_time) VALUES (?,?,?,?)";
       Object[] params = {nickName,qqNumber,groupId,friendTime};
       int n = this.executeUpdate(sql,params);
        return n;
    }
   //修改好友信息
    @Override
    public int updateFriend(Friends friends) throws Exception {
     String sql = "UPDATE t_friends SET nickName=?, group_id=? WHERE id=?";
     Object[] param = {friends.getNickName(),friends.getGroupId(),friends.getId()};
    int n  = this.executeUpdate(sql,param);
       return n;
    }

    @Override
    public int deleteFriends(int id, String qqNumber,int groupId) throws Exception {
        //根据id和qqId删除好友
        String sql = " DELETE FROM t_friends WHERE id=? OR qq_number=? OR group_id=?";
      Object[] params = {id,qqNumber,groupId};
      int n = this.executeUpdate(sql,params);
      return n;

    }

    @Override
    public List<HashMap> searchFriends(int id, String qqNumber, int groupId) throws Exception {
        //根据id和qqId以及分组查找好友
        List<HashMap> friendList = new ArrayList<>();
        String sql = "SELECT * FROM t_friends WHERE id=? OR nickName =? OR group_id =?";
        Object[] params = {id,qqNumber,groupId};
        friendList = this.executeQuery(sql,params);
        return friendList;
    }
}

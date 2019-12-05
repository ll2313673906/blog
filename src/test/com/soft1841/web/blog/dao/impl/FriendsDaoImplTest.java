package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.FriendsDao;
import com.soft1841.web.blog.entity.Friends;
import com.soft1841.web.blog.factory.DaoFactory;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class FriendsDaoImplTest {
    FriendsDao friendsDao = DaoFactory.getFriendsInstance();

    @Test
    public void getAllFriends() throws Exception {
//        查询好友
        System.out.println(friendsDao.getAllFriends());
    }
    @Test
    public void insertFriend() throws Exception{
//        新增好友测试
        String nickName = "李小龙";
        String qqNumber = "2313673958";
        int groupId = 3;
        //格式化日期时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
       String data = df.format(new Date());
        friendsDao.insertFriend(nickName,qqNumber,groupId,data);
    }

    @Test
    public void updateFriend() throws Exception{
        //修改好友信息测试
        Friends friends = new Friends();
        friends.setId(5);
        friends.setNickName("小白菜");
        friends.setGroupId(3);
        friendsDao.updateFriend(friends);
    }

    @Test
    public void deleteFriends() throws Exception {
        //删除好友测试
        int id = 8;
        String qqNumber = "2313";
        int groupId = 4;
        friendsDao.deleteFriends(id,qqNumber,groupId);
    }

    @Test
    public void searchFriends() throws Exception{
        //根据id和qqId 以及分组的id查找好友
        int id = 2;
        String qqNumber = "123";
        int groupId = 2;
        System.out.println(friendsDao.searchFriends(id,qqNumber,groupId));
    }
}
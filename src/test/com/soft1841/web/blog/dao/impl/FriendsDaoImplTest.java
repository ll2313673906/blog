package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.FriendsDao;
import com.soft1841.web.blog.entity.Friends;
import com.soft1841.web.blog.factory.DaoFactory;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class FriendsDaoImplTest {
    FriendsDao friendsDao = DaoFactory.getFriendsInstance();

    @Test
    public void getAllFriends() throws Exception {
//        查询好友
        System.out.println(friendsDao.getAllFriends());
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
//        int id = 8;
//        String qqNumber = "2313";
//        int groupId = 4;
//        friendsDao.deleteFriends(id,qqNumber,groupId);
    }

    @Test
    public void searchFriends() throws Exception{
        //根据id和qqId 以及分组的id查找好友
        Friends friends = new Friends();
        friends.setQqNumber("231315646");
        System.out.println(friendsDao.searchFriends(friends));
//        System.out.println(friendsDao.searchFriends(id,qqNumber,groupId));
    }

    @Test
    public void testInsertFriend() throws Exception{
        //新增好友测试
        Friends friends = new Friends();
        friends.setNickName("李小龙");
        friends.setSignature("签名"); ;
        friends.setQqNumber("2313673958");
        friends.setLogId(1);
        friends.setGroupId(2);
        friends.setGender("女");
        friends.setAge("23");
        friends.setPlace("贵州");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String data = df.format(new Date());
        friends.setFriendTime("2019-3-11");
        friendsDao.insertFriend(friends);
    }

    @Test
    public void getAllLogs() throws Exception {
        List<HashMap> list = friendsDao.getAllLogs();
        list.forEach(list1-> System.out.println(list));

    }

    @Test
    public void getAllLogsByAuthor() throws Exception {
        List<HashMap> list = friendsDao.getAllLogsByAuthor("罗丹");
        list.forEach(list1-> System.out.println(list));
    }
}
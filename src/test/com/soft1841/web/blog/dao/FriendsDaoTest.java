package com.soft1841.web.blog.dao;

import com.soft1841.web.blog.entity.Friends;
import com.soft1841.web.blog.factory.DaoFactory;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

import static org.junit.Assert.*;

public class FriendsDaoTest {
    FriendsDao friendsDao = DaoFactory.getFriendsInstance();

    @Test
    public void getAllFriends() throws Exception {
        System.out.println(friendsDao.getAllFriends());
    }

    @Test
    public void searchFriends() throws Exception {
        Friends friends = new Friends();
        friends.setGroupId(1);
        List<HashMap> list = friendsDao.searchFriends(friends);
        for (int i=0;i<list.size();i++){
            System.out.println(list.get(i).get("avatar"));
        }
    }

    @Test
    public void countGroup() throws Exception {
        System.out.println(friendsDao.countGroup().get(0).get("id"));
    }
}
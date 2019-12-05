package com.soft1841.web.blog.dao;

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
}
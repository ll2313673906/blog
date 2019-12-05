/**
 * FileName       DataSpider
 * Author：       留恋
 * Date：         2019/11/25 17:15
 * Description：  数据用户爬虫
 */
package com.soft1841.web.blog.util;

import com.soft1841.web.blog.entity.User;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DataSpider {
//    private static final int PAGE_COUNT = 3;
//
//    public static List<User> getUsers() {
//        Document document = null;
//        List<User> userList = new ArrayList<>(100);
//        for (int i = 1; i <= PAGE_COUNT; i++) {
//            try {
//                document = Jsoup.connect("https://www.jianshu.com/recommendations/users?utm_source=desktop&utm_medium=index-users&page=" + i).get();
//            } catch (IOException e) {
//                System.out.println("连接失败");
//            }
//            assert document != null;
//            Elements divs = document.getElementsByClass("col-xs-8");
//            for (int j = 0; j < divs.size(); j++) {
//                Element wrap = divs.get(j).child(0);
//                Element link = wrap.child(0);
//                Element img = link.child(0);
//                String avatar = "https:" + img.attr("src");
//                //取得昵称的节点
//                Element h4 = link.child(1);
//                String nickname = h4.text();
//                //取出简介节点
//                Element p = link.child(2);
//                //取出简介内容
//                String introduction = p.text();
//                User user = new User(nickname, avatar, introduction);
//                userList.add(user);
//            }
//        }
//        return userList;
//    }
//
//
//    public static void main(String[] args) {
//        List<User> users = DataSpider.getUsers();
//        users.forEach(System.out::println);
//    }
//


}



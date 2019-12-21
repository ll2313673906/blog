package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.ArticleDao;
import com.soft1841.web.blog.entity.Article;
import com.soft1841.web.blog.factory.DaoFactory;
import org.junit.Test;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import static org.junit.Assert.*;

public class ArticleDaoImplTest {
    ArticleDao articleDao = DaoFactory.getArticleInstance();

    @Test
    public void getAllArticle() throws Exception {
        //查询所有文章
        System.out.println(articleDao.getAllArticle());
    }

    @Test
    public void insertArticle() throws Exception {
        //新增文章
        String articleContent = "我们不一样不一样";
        String photo = "img/bg.jpg";
        String time = "2019-4-23";
       Article article = new Article();
       article.setArticleContent(articleContent);
       article.setPhoto(photo);
       article.setArticleTime(time);
       article.setUserId("4");
       articleDao.insertArticle(article);
    }

    @Test
    public void deleteArticle() throws Exception {
//        //根据文章的id和文章的标题删除文章
//        int id = 8;
//        String articleTitle = "cehsi";
//        articleDao.deleteArticle(id,articleTitle);
    }

    @Test
    public void updateArticle() {
        Article article = new Article();
        article.setId(9);
        article.setArticleTitle("你是测试");
        article.setArticleContent("你也是测试");
        articleDao.updateArticle(article);
    }

    @Test
    public void searchArticle() throws Exception {
        String articleTitle = "我们";
        String articleTime = "2019-12-19";
        System.out.println(articleDao.searchArticle(articleTitle,articleTime));
    }
}
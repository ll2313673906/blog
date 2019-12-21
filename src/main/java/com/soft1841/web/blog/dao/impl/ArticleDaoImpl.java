package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.ArticleDao;
import com.soft1841.web.blog.entity.Article;
import com.soft1841.web.blog.util.JDBCUtil;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * FileName       ArticleDaoImpl
 * Author：       留恋
 * Date：         2019/12/5 20:18
 * Description：  文章说说实现类
 */
public class ArticleDaoImpl extends JDBCUtil implements ArticleDao{

    @Override
    public List<HashMap> getAllArticle() throws Exception {
        //查询所有文章
        List<HashMap> articleList = new ArrayList<>();
        String sql = "SELECT t1.*,t2.user_name,t2.avatar\n" +
                "FROM t_article t1\n" +
                "LEFT JOIN t_user t2\n" +
                "ON t1.`uesr_id`=t2.id";
        articleList = this.executeQuery(sql,null);
        return articleList;
    }

    @Override
    public int insertArticle(Article article) throws Exception {
        //新增文章
        String sql = "INSERT INTO t_article(uesr_id,article_content,photo,article_time)VALUES(?,?,?,?)";
        Object[] params = {article.getUserId(),article.getArticleContent(),article.getPhoto(),article.getArticleTime()};
        int n = this.executeUpdate(sql,params);
        return n;
    }

    @Override
    public int deleteArticle(Article article) throws Exception {
        //根据文章的id和文章的标题删除文章
        String sql = "DELETE FROM t_article WHERE id=? OR article_title=?";
        Object[] params = {article.getId(),article.getArticleTitle()};
        int n = this.executeUpdate(sql,params);
        return n;
    }

    @Override
    public int updateArticle(Article article) {
        //文章的修改
        String sql = "UPDATE t_article SET article_content=? WHERE id=?";
        Object[] params = {article.getArticleContent(),article.getId()};
        int n = this.executeUpdate(sql,params);
        return n;
    }

    @Override
    public List<HashMap> searchArticle(String articleTitle, String articleTime) throws Exception {
        //根据文章的标题和时间搜索文章
        List<HashMap> articleList = new ArrayList<>();
        String sql = "SELECT * FROM t_article WHERE article_title=? OR article_time=?";
        Object[] params = {articleTitle,articleTime};
        articleList =this.executeQuery(sql,params);
        return articleList;
    }


}

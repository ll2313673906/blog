package com.soft1841.web.blog.dao;

import com.soft1841.web.blog.entity.Article;
import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * FileName       ArticleDao
 * Author：       留恋
 * Date：         2019/12/5 20:07
 * Description：  文章说说接口类
 */
public interface ArticleDao {
    /**
     * 查询所有文章
     * @return
     * @throws Exception
     */
   List<HashMap> getAllArticle() throws Exception;

    /**
     * 新增文章
     * @param articleTitle
     * @param articleContent
     * @param photo
     * @return
     * @throws Exception
     */
   int insertArticle(String articleTitle,String articleContent,String photo) throws Exception;

    /**
     * 根据文章的id和文章的标题删除文章
     * @param id
     * @param articleTitle
     * @return
     * @throws Exception
     */
   int deleteArticle(int id,String articleTitle) throws Exception;

    /**
     * 文章的修改
     * @param article
     * @return
     */
   int updateArticle(Article article);

    /**
     * 根据文章的标题和发布的时间查找文章
     * @param articleTitle
     * @param articleTime
     * @return
     * @throws Exception
     */
   List<HashMap> searchArticle(String articleTitle,String articleTime)throws Exception;

}

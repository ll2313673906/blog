package com.soft1841.web.blog.entity;

import java.util.Date;

/**
 * FileName       Article
 * Author：       留恋
 * Date：         2019/12/5 19:09
 * Description：  我的说说文章
 */
public class Article {
    private int id; //主键
    private String articleTitle; //文章的标题
    private String articleContent; //文章的内容
    private String click; //点击的次数
    private String comments; //评论的次数
    private Date articleTime;//文章发表的时间
    private String photo;//照片

    public Article(){

    }

    public Article(int id, String articleTitle, String articleContent, String click, String comments, Date articleTime, String photo) {
        this.id = id;
        this.articleTitle = articleTitle;
        this.articleContent = articleContent;
        this.click = click;
        this.comments = comments;
        this.articleTime = articleTime;
        this.photo = photo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public String getArticleContent() {
        return articleContent;
    }

    public void setArticleContent(String articleContent) {
        this.articleContent = articleContent;
    }

    public String getClick() {
        return click;
    }

    public void setClick(String click) {
        this.click = click;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Date getArticleTime() {
        return articleTime;
    }

    public void setArticleTime(Date articleTime) {
        this.articleTime = articleTime;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", articleTitle='" + articleTitle + '\'' +
                ", articleContent='" + articleContent + '\'' +
                ", click='" + click + '\'' +
                ", comments='" + comments + '\'' +
                ", articleTime=" + articleTime +
                ", photo='" + photo + '\'' +
                '}';
    }
}

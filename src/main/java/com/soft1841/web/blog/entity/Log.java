package com.soft1841.web.blog.entity;

import java.util.Date;

/**
 * FileName       Log
 * Author：       留恋
 * Date：         2019/12/13 10:18
 * Description：  日志
 */
public class Log {
    private int id;
    private String content;
    private Date log_time;
    private String log_address;
    private String author;

    public Log(int id, String content, Date log_time, String log_address, String author) {
        this.id = id;
        this.content = content;
        this.log_time = log_time;
        this.log_address = log_address;
        this.author = author;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getLog_time() {
        return log_time;
    }

    public void setLog_time(Date log_time) {
        this.log_time = log_time;
    }

    public String getLog_address() {
        return log_address;
    }

    public void setLog_address(String log_address) {
        this.log_address = log_address;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "Log{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", log_time=" + log_time +
                ", log_address='" + log_address + '\'' +
                ", author='" + author + '\'' +
                '}';
    }
}

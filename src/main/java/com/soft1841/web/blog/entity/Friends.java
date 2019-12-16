package com.soft1841.web.blog.entity;

import lombok.Data;

import java.util.Date;

/**
 * FileName       Friends
 * Author：       留恋
 * Date：         2019/12/5 10:50
 * Description：  好友管理实现类
 */

@Data
public class Friends {
    private int id;     //主键
    private String nickName;//好友的昵称
    private String signature;//签名
    private String qqNumber; //好友的QQ号
    private int logId;      //日志id
    private int groupId;      //分组id
    private String gender;     //性别
    private String age;        //年龄
    private String momentum;   //星座
    private String place;       //居住地
    private String friendTime;    //添加好友的时间
    private String content;    //日志的内容
    private Date logTime;     //发表日志的时间
    private String logAddress;  //发表日志的地点
    private String logAuthor;   //发表日志的作者


    public Friends(){

    }

    public Friends(int id, String nickName, String signature, String qqNumber, int logId, int groupId, String gender, String age, String momentum, String place, String friendTime, String content, Date logTime, String logAddress, String logAuthor) {
        this.id = id;
        this.nickName = nickName;
        this.signature = signature;
        this.qqNumber = qqNumber;
        this.logId = logId;
        this.groupId = groupId;
        this.gender = gender;
        this.age = age;
        this.momentum = momentum;
        this.place = place;
        this.friendTime = friendTime;
        this.content = content;
        this.logTime = logTime;
        this.logAddress = logAddress;
        this.logAuthor = logAuthor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getQqNumber() {
        return qqNumber;
    }

    public void setQqNumber(String qqNumber) {
        this.qqNumber = qqNumber;
    }

    public int getLogId() {
        return logId;
    }

    public void setLogId(int logId) {
        this.logId = logId;
    }

    public int getGroupId() {
        return groupId;
    }

    public void setGroupId(int groupId) {
        this.groupId = groupId;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getMomentum() {
        return momentum;
    }

    public void setMomentum(String momentum) {
        this.momentum = momentum;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getFriendTime() {
        return friendTime;
    }

    public void setFriendTime(String friendTime) {
        this.friendTime = friendTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getLogTime() {
        return logTime;
    }

    public void setLogTime(Date logTime) {
        this.logTime = logTime;
    }

    public String getLogAddress() {
        return logAddress;
    }

    public void setLogAddress(String logAddress) {
        this.logAddress = logAddress;
    }

    public String getLogAuthor() {
        return logAuthor;
    }

    public void setLogAuthor(String logAuthor) {
        this.logAuthor = logAuthor;
    }

    @Override
    public String toString() {
        return "Friends{" +
                "id=" + id +
                ", nickName='" + nickName + '\'' +
                ", signature='" + signature + '\'' +
                ", qqNumber='" + qqNumber + '\'' +
                ", logId=" + logId +
                ", groupId=" + groupId +
                ", gender='" + gender + '\'' +
                ", age='" + age + '\'' +
                ", momentum='" + momentum + '\'' +
                ", place='" + place + '\'' +
                ", friendTime=" + friendTime +
                ", content='" + content + '\'' +
                ", logTime=" + logTime +
                ", logAddress='" + logAddress + '\'' +
                ", logAuthor='" + logAuthor + '\'' +
                '}';
    }
}

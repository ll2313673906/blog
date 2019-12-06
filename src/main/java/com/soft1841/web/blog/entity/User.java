/**
 * FileName       User
 * Author：       留恋
 * Date：         2019/11/25 17:12
 * Description：  用户实体类
 */


package com.soft1841.web.blog.entity;
import lombok.Data;



@Data
public class User {
    private Long id;
    private String userName;
    private String qqSignature;
    private String qqId;
    private String userPassword;
    private String  gender;
    private String userAge;
    private String constellation;
    private String address;
    private String avatar;

    public User() {
    }

    public User(Long id, String userName, String qqSignature, String qqId, String userPassword, String gender, String userAge, String constellation, String address, String avatar) {
        this.id = id;
        this.userName = userName;
        this.qqSignature = qqSignature;
        this.qqId = qqId;
        this.userPassword = userPassword;
        this.gender = gender;
        this.userAge = userAge;
        this.constellation = constellation;
        this.address = address;
        this.avatar = avatar;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getQqSignature() {
        return qqSignature;
    }

    public void setQqSignature(String qqSignature) {
        this.qqSignature = qqSignature;
    }

    public String getQqId() {
        return qqId;
    }

    public void setQqId(String qqId) {
        this.qqId = qqId;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getUserAge() {
        return userAge;
    }

    public void setUserAge(String userAge) {
        this.userAge = userAge;
    }

    public String getConstellation() {
        return constellation;
    }

    public void setConstellation(String constellation) {
        this.constellation = constellation;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", qqSignature='" + qqSignature + '\'' +
                ", qqId='" + qqId + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", gender='" + gender + '\'' +
                ", userAge='" + userAge + '\'' +
                ", constellation='" + constellation + '\'' +
                ", address='" + address + '\'' +
                ", avatar='" + avatar + '\'' +
                '}';
    }
}

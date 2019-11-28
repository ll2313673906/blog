/**
 * FileName       User
 * Author：       留恋
 * Date：         2019/11/25 17:12
 * Description：  用户实体类
 */
package com.soft1841.web.blog.entity;

public class User {
    private String nickname;
    private String avatar;
    private String introduction;

    public User(String nickname, String avatar, String introduction) {
        this.nickname = nickname;
        this.avatar = avatar;
        this.introduction = introduction;
    }

    public User() {
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public String toString() {
        return "User{" +
                "nickname='" + nickname + '\'' +
                ", avatar='" + avatar + '\'' +
                ", introduction='" + introduction + '\'' +
                '}';
    }
}

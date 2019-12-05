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


}

package com.soft1841.web.blog.util;

import java.util.Random;

/**
 * FileName       StringUtil
 * Author：       留恋
 * Date：         2019/12/4 16:14
 * Description：
 */
public class StringUtil {
    public static String getVerifyCode(){
        Random random = new Random();
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            stringBuilder.append(String.valueOf(random.nextInt(10)));
        }
        return stringBuilder.toString();
    }
}

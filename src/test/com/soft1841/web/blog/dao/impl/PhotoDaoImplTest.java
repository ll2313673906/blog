package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.PhotoDao;
import com.soft1841.web.blog.entity.Photo;
import com.soft1841.web.blog.entity.User;
import com.soft1841.web.blog.factory.DaoFactory;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

import static org.junit.Assert.*;

public class PhotoDaoImplTest {
    PhotoDao photoDao = DaoFactory.getPhotoInstance();

    @Test
    public void getAllPhoto() throws Exception {
        //浏览图片
        System.out.println(photoDao.getAllPhoto());
    }

    @Test
    public void searchPhoto() throws Exception {
        //根据图片的id图片的类型，图片的名字查看图片
        int imgId = 2;
        String imgName = "我们";
        int imgTypeId = 1;
        System.out.println( photoDao.searchPhoto(imgId,imgName,imgTypeId));
    }

    /**
     * 新增照片方法测试
     * @throws Exception
     */
    @Test
    public void insertPhoto() throws Exception {
        Photo photo = new Photo();
        photo.setImgName("测试");
        photo.setImgTypeId(2);
        photo.setImgDescription("测试");
        photo.setImgContent("\"img/2.png\"");
        photoDao.insertPhoto(photo);

    }

    @Test
    public void deletePhoto() throws Exception {
//        int id = 9;
//        int imgTypeId = 4;
//        String imgName = "测试";
//        photoDao.deletePhoto(id,imgTypeId,imgName);

    }

    @Test
    public void updatePhoto() throws Exception {
        Photo photo = new Photo();
        photo.setImgId(5);
        photo.setImgName("测试");
        photo.setImgDescription("Ceshi ");
        photo.setImgTypeId(2);
        photo.setImgContent("img/bg.jpg");
        photoDao.updatePhoto(photo);
    }

    @Test
    public void countPhotoType() throws Exception {
//        统计类别
        System.out.println(photoDao.countPhotoType().get(0).get("photo_type_id"));
    }

    /**
     * 根据图片的类型查找图片
     */
    @Test
    public void getAllPhotosByType() throws Exception {
        System.out.println(photoDao.getAllPhotosByType("动物").get(0).get("img_id"));
    }
}
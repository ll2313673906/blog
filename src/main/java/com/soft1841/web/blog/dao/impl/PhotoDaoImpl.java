package com.soft1841.web.blog.dao.impl;

import com.soft1841.web.blog.dao.PhotoDao;
import com.soft1841.web.blog.entity.Photo;
import com.soft1841.web.blog.util.JDBCUtil;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * FileName       PhotoDaoImpl
 * Author：       留恋
 * Date：         2019/12/6 9:14
 * Description：  照片接口实现类
 */
public class PhotoDaoImpl  extends JDBCUtil implements PhotoDao {
    @Override
    public List<HashMap> getAllPhoto() throws Exception {
        //查看所有的图片
        List<HashMap> photoList = new ArrayList<>();
        String sql = " SELECT t1.*,\n" +
                "  t2.photo_type\n" +
                "  FROM t_photo t1\n" +
                "  LEFT JOIN t_photo_type t2 ON t1.img_type_id = t2.photo_type_id\n";
        photoList = this.executeQuery(sql,null);
        return photoList;
    }

    @Override
    public List<HashMap> searchPhoto(int imgId, String imgName, int imgTypeId) throws Exception {
       //根据的图片的id，图片的标题，图片的类型，以及添加图片的时间查看图片
        List<HashMap> photoList = new ArrayList<>();
        String sql = "SELECT * FROM t_photo WHERE img_id=? OR img_name=? OR img_type_id=?";
       Object[] params = {imgId,imgName,imgTypeId};
       photoList = this.executeQuery(sql,params);
       return photoList;

    }

    @Override
    public int insertPhoto(Photo photo) throws Exception {
        //新增图片，可以添加图片的名称，图片的类型，图片的描述，以及图片。
        String sql = "INSERT INTO t_photo (img_name,img_type_id,img_description,img_content)VALUES (?,?,?,?)";
       Object[] params = {photo.getImgName(),photo.getImgTypeId(),photo.getImgDescription(),photo.getImgContent()};
       int n = this.executeUpdate(sql,params);
        return n;
    }

    @Override
    public int deletePhoto(Photo photo) throws Exception {
        //根据图片的id，图片的名字，图片的类型，删除图片
        String sql = "DELETE FROM t_photo WHERE img_id=? OR img_type_id=? OR img_name=?";
        Object[] params = {photo.getImgId(),photo.getImgTypeId(),photo.getImgName()};
        int n = this.executeUpdate(sql,params);
        return n;
    }

    @Override
    public int updatePhoto(Photo photo) throws Exception {
        //用户可以修改图片的名字，图片的描述，图片的类型，以及更换图片
        String sql = "UPDATE t_photo SET img_name=?, img_description=?, img_type_id =? ,img_content=? WHERE img_id=?";
       Object[] params = {photo.getImgName(),photo.getImgDescription(),photo.getImgTypeId(),photo.getImgContent()};
       int n = this.executeUpdate(sql,params);
        return n;
    }

    @Override
    public List<HashMap> countPhotoType() throws Exception {
        //统计类数
        String sql="SELECT * FROM t_photo_type";
        Object[] param ={};
        List<HashMap> list = this.executeQuery(sql,param);
        return list;
    }

    @Override
    public List<HashMap> getAllPhotosByType(String imgType) throws Exception {
        //根据图片的类型查找图片
        String sql="SELECT t1.*,t2.img_name,t2.img_id,t2.img_click,t2.img_comments,t2.img_time,t2.img_description,t2.img_content\n" +
                "FROM t_photo_type t1\n" +
                "LEFT JOIN t_photo t2\n" +
                "ON t1.`photo_type_id`=t2.`img_type_id`\n" +
                "WHERE t1.`photo_type`=?";
        Object[] params = {imgType};
        List<HashMap> list = this.executeQuery(sql,params);
        return list;

    }
}

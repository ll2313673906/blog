package com.soft1841.web.blog.dao;

import com.soft1841.web.blog.entity.Photo;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * FileName       PhotoDao
 * Author：       留恋
 * Date：         2019/12/6 9:14
 * Description：  照片接口类
 */
public interface PhotoDao {
    /**
     * 查找所有的图片
     * @return
     * @throws Exception
     */
    List<HashMap> getAllPhoto() throws Exception;

    /**
     * 根据图片的id图片的名字图片添加的时间和图片的类型查找图片
     * @param imgId
     * @param imgName
     * @param imgTypeId
     * @return
     * @throws Exception
     */
    List<HashMap> searchPhoto(int imgId, String imgName, int imgTypeId) throws Exception;

    /**
     * 添加图片
     * 添加图片的名字
     * 添加图片的类型，图片的描述，以及图片
     * @param photo
     * @return
     * @throws Exception
     */
    public int insertPhoto(Photo photo) throws Exception;

    /**
     *根据图片的id ，图片的类型和图片的名字删除图片
     * @param id
     * @param imgTypeId
     * @param imgName
     * @return
     * @throws Exception
     */
    int deletePhoto(int id,int imgTypeId,String imgName) throws Exception;

    /**
     * 修改图片的名字，图片的描述，图片的类型，以及图片。
     * @param photo
     * @return
     * @throws Exception
     */
    int updatePhoto(Photo photo)throws Exception;

    /**
     * 统计类别数量
     * @return
     * @throws Exception
     */
    List<HashMap> countPhotoType() throws Exception;

    /**
     * 根究图片的类型查找图片
     * @return
     * @throws Exception
     */
   List<HashMap> getAllPhotosByType(String imgType) throws Exception;


}

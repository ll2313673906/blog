package com.soft1841.web.blog.entity;

import java.util.Date;

/**
 * FileName       Photo
 * Author：       留恋
 * Date：         2019/12/6 9:10
 * Description：  照片集
 */
public class Photo {
    private int imgId;
    private String imgName;
    private String imgClick;
    private String imgComments;
    private Date imgTime;
    private String imgDescription;
    private int imgTypeId;
    private String imgContent;
    private int photoTypeId;
    private String photoType;

    public Photo(){

    }

    public Photo(int imgId, String imgName, String imgClick, String imgComments, Date imtTime, String imgDescription, int imgTypeId, String imgContent, int photoTypeId, String photoType) {
        this.imgId = imgId;
        this.imgName = imgName;
        this.imgClick = imgClick;
        this.imgComments = imgComments;
        this.imgTime = imtTime;
        this.imgDescription = imgDescription;
        this.imgTypeId = imgTypeId;
        this.imgContent = imgContent;
        this.photoTypeId = photoTypeId;
        this.photoType = photoType;
    }

    public int getImgId() {
        return imgId;
    }

    public void setImgId(int imgId) {
        this.imgId = imgId;
    }

    public String getImgName() {
        return imgName;
    }

    public void setImgName(String imgName) {
        this.imgName = imgName;
    }

    public String getImgClick() {
        return imgClick;
    }

    public void setImgClick(String imgClick) {
        this.imgClick = imgClick;
    }

    public String getImgComments() {
        return imgComments;
    }

    public void setImgComments(String imgComments) {
        this.imgComments = imgComments;
    }

    public Date getImtTime() {
        return imgTime;
    }

    public void setImtTime(Date imtTime) {
        this.imgTime = imtTime;
    }

    public String getImgDescription() {
        return imgDescription;
    }

    public void setImgDescription(String imgDescription) {
        this.imgDescription = imgDescription;
    }

    public int getImgTypeId() {
        return imgTypeId;
    }

    public void setImgTypeId(int imgTypeId) {
        this.imgTypeId = imgTypeId;
    }

    public String getImgContent() {
        return imgContent;
    }

    public void setImgContent(String imgContent) {
        this.imgContent = imgContent;
    }

    public int getPhotoTypeId() {
        return photoTypeId;
    }

    public void setPhotoTypeId(int photoTypeId) {
        this.photoTypeId = photoTypeId;
    }

    public String getPhotoType() {
        return photoType;
    }

    public void setPhotoType(String photoType) {
        this.photoType = photoType;
    }

    @Override
    public String toString() {
        return "Photo{" +
                "imgId=" + imgId +
                ", imgName='" + imgName + '\'' +
                ", imgClick='" + imgClick + '\'' +
                ", imgComments='" + imgComments + '\'' +
                ", imtTime=" + imgTime +
                ", imgDescription='" + imgDescription + '\'' +
                ", imgTypeId=" + imgTypeId +
                ", imgContent='" + imgContent + '\'' +
                ", photoTypeId=" + photoTypeId +
                ", photoType='" + photoType + '\'' +
                '}';
    }
}

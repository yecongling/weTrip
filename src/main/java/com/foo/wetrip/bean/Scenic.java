package com.foo.wetrip.bean;

public class Scenic {
    private Integer scenicId;

    private String scenicName;

    private String address;

    private String price;

    private String description;

    private Boolean enable;

    private Integer scenicTypeId;

    private Integer pictureId;

    private Integer videoId;

    public Integer getScenicId() {
        return scenicId;
    }

    public void setScenicId(Integer scenicId) {
        this.scenicId = scenicId;
    }

    public String getScenicName() {
        return scenicName;
    }

    public void setScenicName(String scenicName) {
        this.scenicName = scenicName == null ? null : scenicName.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }

    public Integer getScenicTypeId() {
        return scenicTypeId;
    }

    public void setScenicTypeId(Integer scenicTypeId) {
        this.scenicTypeId = scenicTypeId;
    }

    public Integer getPictureId() {
        return pictureId;
    }

    public void setPictureId(Integer pictureId) {
        this.pictureId = pictureId;
    }

    public Integer getVideoId() {
        return videoId;
    }

    public void setVideoId(Integer videoId) {
        this.videoId = videoId;
    }
}
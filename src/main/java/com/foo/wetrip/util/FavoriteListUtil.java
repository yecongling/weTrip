package com.foo.wetrip.util;

import java.util.List;

public class FavoriteListUtil {
    List<FavoriteListUtil> favoriteListUtilList;
    Integer collectionId;
    String scenicName;
    String address;
    String description;
    String price;

    public Integer getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(Integer collectionId) {
        this.collectionId = collectionId;
    }

    public String getScenicName() {
        return scenicName;
    }

    public void setScenicName(String scenicName) {
        this.scenicName = scenicName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public List<FavoriteListUtil> getFavoriteListUtilList() {
        return favoriteListUtilList;
    }

    public void setFavoriteListUtilList(List<FavoriteListUtil> favoriteListUtilList) {
        this.favoriteListUtilList = favoriteListUtilList;
    }
}

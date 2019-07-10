package com.foo.wetrip.bean;

public class ScenicType {
    private Integer scenicTypeId;

    private String scenicTypeName;

    public Integer getScenicTypeId() {
        return scenicTypeId;
    }

    public void setScenicTypeId(Integer scenicTypeId) {
        this.scenicTypeId = scenicTypeId;
    }

    public String getScenicTypeName() {
        return scenicTypeName;
    }

    public void setScenicTypeName(String scenicTypeName) {
        this.scenicTypeName = scenicTypeName == null ? null : scenicTypeName.trim();
    }
}
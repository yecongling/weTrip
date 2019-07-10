package com.foo.wetrip.bean;

import java.util.List;

public class LineUtil {
    private String scenicName;
    private long counts;
    private String yueFen;

    public LineUtil() {

    }

    public LineUtil(String yueFen, long counts) {
       // this.scenicName = scenicName;
        this.counts = counts;
        this.yueFen = yueFen;
    }

//    public String getScenicName() {
//        return scenicName;
//    }
//
//    public void setScenicName(String scenicName) {
//        this.scenicName = scenicName;
//    }

    public long getCounts() {
        return counts;
    }

    public void setCounts(long counts) {
        this.counts = counts;
    }

    public String getYueFen() {
        return yueFen;
    }

    public void setYueFen(String yueFen) {
        this.yueFen = yueFen;
    }
}
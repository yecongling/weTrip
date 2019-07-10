package com.foo.wetrip.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

public class AllOrderInfo implements Serializable {
    private String orderNum;//订单编号
    private String orderStatusName;//订单状态
    private Integer buyCount;//门票数量
    private Date createTime; // 下单时间
    private Date paidTime; //支付时间
    private String payPrice;//购买金额
    List<AllOrderInfo> orderInfoList = new ArrayList<>();
    public AllOrderInfo() {
    }

    public AllOrderInfo(String orderNum, String orderStatusName, Integer buyCount, Date createTime, Date paidTime, String payPrice) {
        this.orderNum = orderNum;
        this.orderStatusName = orderStatusName;
        this.buyCount = buyCount;
        this.createTime = createTime;
        this.paidTime = paidTime;
        this.payPrice = payPrice;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public String getOrderStatusName() {
        return orderStatusName;
    }

    public void setOrderStatusName(String orderStatusName) {
        this.orderStatusName = orderStatusName;
    }

    public Integer getBuyCount() {
        return buyCount;
    }

    public void setBuyCount(Integer buyCount) {
        this.buyCount = buyCount;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getPaidTime() {
        return paidTime;
    }

    public void setPaidTime(Date paidTime) {
        this.paidTime = paidTime;
    }

    public String getPayPrice() {
        return payPrice;
    }

    public void setPayPrice(String payPrice) {
        this.payPrice = payPrice;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AllOrderInfo that = (AllOrderInfo) o;
        return orderNum.equals(that.orderNum) &&
                orderStatusName.equals(that.orderStatusName) &&
                buyCount.equals(that.buyCount) &&
                createTime.equals(that.createTime) &&
                paidTime.equals(that.paidTime) &&
                payPrice.equals(that.payPrice);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderNum, orderStatusName, buyCount, createTime, paidTime, payPrice);
    }
}

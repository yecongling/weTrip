package com.foo.wetrip.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

public class MyOrder implements Serializable {
    private String OrderNum;//订单编号
    private String ScenicTypeName;//景点类型
    private String OrderStatus;//订单状态
    private Date CreateTime; //  订单创建时间
    private Integer BuyCounts; // 购买数量
    private String PayPrice; // 总金额

    public List<MyOrder> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<MyOrder> orderList) {
        this.orderList = orderList;
    }

    private List<MyOrder> orderList =new ArrayList<>();
    public MyOrder() {
    }

    public String getOrderStatus() {
        return OrderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        OrderStatus = orderStatus;
    }

    public MyOrder(String orderNum, String scenicTypeName,String orderStatus, Date createTime, Integer buyCounts, String payPrice) {
        OrderStatus = orderStatus;
        OrderNum = orderNum;
        ScenicTypeName = scenicTypeName;
        CreateTime = createTime;
        BuyCounts = buyCounts;
        PayPrice = payPrice;
    }

    public String getOrderNum() {
        return OrderNum;
    }

    public void setOrderNum(String orderNum) {
        OrderNum = orderNum;
    }

    public String getScenicTypeName() {
        return ScenicTypeName;
    }

    public void setScenicTypeName(String scenicTypeName) {
        ScenicTypeName = ScenicTypeName;
    }

    public Date getCreateTime() {
        return CreateTime;
    }

    public void setCreateTime(Date createTime) {
        CreateTime = createTime;
    }

    public Integer getBuyCounts() {
        return BuyCounts;
    }

    public void setBuyCounts(Integer buyCounts) {
        BuyCounts = buyCounts;
    }

    public String getPayPrice() {
        return PayPrice;
    }

    public void setPayPrice(String payPrice) {
        PayPrice = payPrice;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MyOrder myOrder = (MyOrder) o;
        return OrderNum.equals(myOrder.OrderNum) &&
                ScenicTypeName.equals(myOrder.ScenicTypeName) &&
                OrderStatus.equals(myOrder.OrderStatus)&&
                CreateTime.equals(myOrder.CreateTime) &&
                BuyCounts.equals(myOrder.BuyCounts) &&
                PayPrice.equals(myOrder.PayPrice);
    }

    @Override
    public int hashCode() {
        return Objects.hash(OrderNum, ScenicTypeName, OrderStatus, CreateTime, BuyCounts, PayPrice);
    }
}

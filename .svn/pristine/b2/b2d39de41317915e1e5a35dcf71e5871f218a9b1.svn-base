package com.foo.wetrip.service;

import com.foo.wetrip.bean.Oders;

import java.util.List;
/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:02
 * @Description: com.foo.wetrip.service
 * weTrip
 */
public interface OrderService {

    /**保存订单
     *
     * @param orders 订单实体
     */
    void saveOrders(Oders orders);

    /**
     *  获得订单的类别
     * @param orderNum 订单号
     * @return
     */
    List<Oders> getOrdersList(String orderNum);

    /**
     * 更改订单的状态
     * @param orderNum 订单号
     * @param flowNum 流水号
     * @param tradePrice 交易金额
     */
    void updateOrderStatus(String orderNum, String flowNum, String tradePrice);
}

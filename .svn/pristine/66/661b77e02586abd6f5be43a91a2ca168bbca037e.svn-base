package com.foo.wetrip.service;

import com.foo.wetrip.bean.MyOrder;
import com.foo.wetrip.bean.Oders;
import org.springframework.core.annotation.Order;

import java.util.List;

public interface MyOrderService {
    /**
     * 查询我的订单
     * @param userId  根据用户ID查询
     * @return  返回订单集合
     */
    List<MyOrder> selectMyOrder(Integer userId);

    /**
     * 申请退款
     * @param orderNum  根据订单编号申请
     *
     */
    void tuikuan(String orderNum);


}

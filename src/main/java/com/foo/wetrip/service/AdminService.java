package com.foo.wetrip.service;

import com.foo.wetrip.bean.Admin;
import com.foo.wetrip.bean.AllOrderInfo;
import com.foo.wetrip.bean.MyOrder;

import java.util.List;

/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:02
 * @Description: com.foo.wetrip.service
 * weTrip
 */
public interface AdminService {
    /**
     * 管理员登录的方法
     * @param phone 用户电话
     * @param password 密码
     * @return
     */
    boolean adminLogin(String phone,String password);

    /**
     *  通过电话查询管理员的所有信息
     * @param phone 电话号码
     * @return 管理员实体
     */
    Admin selectByPhone(String phone);

    /**
     * 查询所有订单
     * @return  返回订单集合
     */
    List<AllOrderInfo> selectAllOrder();

    /**
     * 通过退款申请
     * @param orderNum  根据订单编号
     */
    void adminAgree(String orderNum);
}

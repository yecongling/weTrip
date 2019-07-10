package com.foo.wetrip.service.impl;

import com.alibaba.fastjson.JSON;
import com.foo.wetrip.bean.*;
import com.foo.wetrip.dao.OdersMapper;
import com.foo.wetrip.dao.ScenicMapper;
import com.foo.wetrip.dao.ScenicTypeMapper;
import com.foo.wetrip.service.MyOrderService;
import com.foo.wetrip.util.OrderStatusEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.PrivateKey;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class MyOrderServiceImpl implements MyOrderService {

    @Autowired
    private OdersMapper mapper;

    @Autowired
    private ScenicMapper scenicMapper;

    @Autowired
    private ScenicTypeMapper scenicTypeMapper;





    @Override
    public List<MyOrder> selectMyOrder(Integer userId) {
        List<MyOrder> orderList = new ArrayList<>();

        OdersExample odersExample = new OdersExample();
        OdersExample.Criteria criteria = odersExample.createCriteria();
        //根据条件查询(创造查询条件)
        criteria.andUserIdEqualTo(userId);
        List<Oders> odersList = mapper.selectByExample(odersExample);
        System.out.println(JSON.toJSONString(odersList,true));
        for (Oders oders : odersList) {
            String orderNum = oders.getOrderNum();
            //查询景点编号
            Integer scenicId = oders.getScenicId();
            //查询景点类别编号
            Scenic scenic = scenicMapper.selectByPrimaryKey(scenicId);
            Integer scenicTypeId = scenic.getScenicTypeId();
            //查询景点类型
            ScenicType scenicType = scenicTypeMapper.selectByPrimaryKey(scenicTypeId);
            System.out.println("======++++++++" + JSON.toJSONString(scenicType,true));
            String scenicTypeName = scenicType.getScenicTypeName();
            //查询订单状态
            String orderStatusId = oders.getOrderStatus();
            String orderStatus = "";
            if(orderStatusId.equals("10")){
                orderStatus = OrderStatusEnum.WAIT_PAY.value;
            }
            if (orderStatusId.equals("20")){
                orderStatus = OrderStatusEnum.PAID.value;
            }
            if (orderStatusId.equals("30")){
                orderStatus = OrderStatusEnum.CANCELED.value;
            }
            if (orderStatusId.equals("40")){
                orderStatus = OrderStatusEnum.CLOSED.value;
            }
            if (orderStatusId.equals("50")){
                orderStatus = OrderStatusEnum.REFUNDED.value;
            }
            //查询下单时间
            Date createTime = oders.getCreateTime();
            //查询购票数量
            Integer buyCounts = oders.getBuyCounts();
            //查看总金额
            String payPrice = oders.getPayPrice();
            MyOrder myOrder = new MyOrder(orderNum, scenicTypeName,orderStatus, createTime, buyCounts, payPrice);
            orderList.add(myOrder);
        }
        return orderList;
    }

    @Override
    public void tuikuan(String orderNum) {
        //根据订单编号查询订单状态
        //该出为单例. 不可作为成员变量
        OdersExample odersExample = new OdersExample();
        OdersExample.Criteria criteria = odersExample.createCriteria();
        Oders oders = new Oders();
        criteria.andOrderNumEqualTo(orderNum);
        List<Oders> odersList = mapper.selectByExample(odersExample);
        if (odersList.size() != 0) {
            oders = odersList.get(0);
            String orderStatus = oders.getOrderStatus();
            if (orderStatus != (OrderStatusEnum.REFUNDED.key)) {
                orderStatus = OrderStatusEnum.CANCELED.key;
                criteria.andOrderNumEqualTo(orderNum);
                oders.setOrderStatus(orderStatus);
                mapper.updateByExampleSelective(oders, odersExample);
            }
        }

    }
}

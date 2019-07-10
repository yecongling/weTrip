package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.Flow;
import com.foo.wetrip.bean.Oders;
import com.foo.wetrip.bean.OdersExample;
import com.foo.wetrip.dao.FlowMapper;
import com.foo.wetrip.dao.OdersMapper;
import com.foo.wetrip.service.OrderService;
import com.foo.wetrip.util.OrderStatusEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OdersMapper odersMapper;
    @Autowired
    private FlowMapper flowMapper;
    @Override
    public void saveOrders(Oders orders) {
        odersMapper.insertSelective(orders);
    }

    @Override
    public List<Oders> getOrdersList(String orderNum) {
        OdersExample example = new OdersExample();
        OdersExample.Criteria criteria = example.createCriteria();
        criteria.andOrderNumEqualTo(orderNum);
        return odersMapper.selectByExample(example);
    }

    @Override
    public void updateOrderStatus(String orderNum, String flowNum, String tradePrice) {
        //修改支付状态
        OdersExample example = new OdersExample();
        OdersExample.Criteria criteria = example.createCriteria();
        criteria.andOrderNumEqualTo(orderNum);
        List<Oders> odersList = odersMapper.selectByExample(example);
        Oders order = odersList.get(0);
        if (order.getOrderStatus().equals(OrderStatusEnum.WAIT_PAY.key)){
            Oders order1 = new Oders();
            order1.setOrderId(order.getOrderId());
            order1.setPaidTime(new Date());
            order1.setOrderStatus(OrderStatusEnum.PAID.key);
            odersMapper.updateByPrimaryKeySelective(order1);
            //新增流水
            Flow flow = new Flow();
            flow.setFlowNum(flowNum);
            flow.setTradePrice(tradePrice);
            flow.setCreateTime(new Date());
            flow.setOrderNum(orderNum);
            flowMapper.insert(flow);
        }
    }
}

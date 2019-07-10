package com.foo.wetrip.service.impl;

import com.alibaba.fastjson.JSON;
import com.foo.wetrip.bean.LineUtil;
import com.foo.wetrip.bean.Scenic;
import com.foo.wetrip.bean.TicketUtil;
import com.foo.wetrip.dao.OdersMapper;
import com.foo.wetrip.dao.ScenicMapper;
import com.foo.wetrip.service.TicketService;
import org.hibernate.validator.constraints.ModCheck;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TicketServiceImpl  implements TicketService {
    @Autowired
    private OdersMapper odersMapper;
    @Autowired
    private ScenicMapper scenicMapper;
    @Autowired
    private TicketService ticketService;

    /**
     * 查找全部
     * @return
     */
    @Override
    public List<TicketUtil> selectTotalCounts() {
        //查询得到所有的景区信息
        List<Scenic> scenics = scenicMapper.selectByExample(null);
        List<TicketUtil> tickets = new ArrayList<>();
        for (Scenic scenic:scenics){
            //遍历封装
            Long totalCounts = ticketService.selectSumByCounts(scenic.getScenicId());
            TicketUtil ticketUtil = new TicketUtil(scenic.getScenicId(),scenic.getScenicName(),scenic.getAddress(),scenic.getDescription(),scenic.getPrice(),totalCounts);
           // System.out.println(JSON.toJSONString(ticketUtil,true));
            tickets.add(ticketUtil);
        }
        return tickets;

    }
    @Override
    public long selectSumByCounts(Integer scenicId) {
        Long count  =  odersMapper.selectSumByCounts(scenicId);
     //   System.out.println(count+"=================================================");
        //在这里要做一个判断,如果那个景区没有售出门票则会产生空指针异常
        if(count ==null){
            //如果为空,则让它为零
           count = 0l;
        }
        return count;
    }

    @Override
    public Scenic selectByPrimaryKey(Integer scenicId) {
        Scenic scenic = scenicMapper.selectByPrimaryKey(scenicId);
        return scenic;
    }



}

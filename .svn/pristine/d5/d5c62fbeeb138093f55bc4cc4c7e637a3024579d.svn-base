package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.Train;
import com.foo.wetrip.bean.TrainInfo;
import com.foo.wetrip.bean.TrainTicket;
import com.foo.wetrip.bean.TrainTicketExample;
import com.foo.wetrip.dao.TrainMapper;
import com.foo.wetrip.dao.TrainTicketMapper;
import com.foo.wetrip.service.TicketService;
import com.foo.wetrip.service.TrainTicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class TrainTicketServiceImpl implements TrainTicketService{
    @Autowired
    TrainTicketMapper trainTicketMapper;

    @Autowired
    TrainMapper trainMapper;

    @Override
    public List<TrainInfo> selectAllTicket(String ticketFrom, String ticketTo) {
        List<TrainInfo> trainInfoList = new ArrayList<>();
        //根据起点和终点站查询车次信息
        TrainTicketExample trainTicketExample = new TrainTicketExample();
        TrainTicketExample.Criteria criteria = trainTicketExample.createCriteria();
        criteria.andTicketFromEqualTo(ticketFrom).andTicketToEqualTo(ticketTo);
        List<TrainTicket> trainTickets = trainTicketMapper.selectByExample(trainTicketExample);
        if(trainTickets.size()!=0){
            for (TrainTicket trainTicket : trainTickets) {
                //查询出列车名字
                Integer trainId = trainTicket.getTrainId();
                Train train = trainMapper.selectByPrimaryKey(trainId);
                String trainName = train.getTrainName();
                String ticketFrom1 = trainTicket.getTicketFrom();
                String ticketTo1 = trainTicket.getTicketTo();
                String ticketTypea = trainTicket.getTicketTypea();
                String ticketTypeb = trainTicket.getTicketTypeb();
                String ticketTypec = trainTicket.getTicketTypec();
                Integer ticketaNumber = trainTicket.getTicketaNumber();
                Integer ticketbNumber = trainTicket.getTicketbNumber();
                Integer ticketcNumber = trainTicket.getTicketcNumber();
                String ticketaPrice = trainTicket.getTicketaPrice();
                String ticketbPrice = trainTicket.getTicketbPrice();
                String ticketcPrice = trainTicket.getTicketcPrice();
                //把时间转化为时和分
                DateFormat df = DateFormat.getTimeInstance();
                Date fromTime = trainTicket.getFromTime();
                String format = df.format(fromTime);
                String substring = format.substring(0, 5);
                System.out.println(format+"-----------------------------");
                Date toTime = trainTicket.getToTime();
                String format2 = df.format(toTime);
                String substring1 = format2.substring(0, 5);
                TrainInfo trainInfo = new TrainInfo(trainName,ticketFrom1,ticketTo1,trainId,ticketTypea,ticketTypeb,ticketTypec,ticketaNumber,ticketbNumber,ticketcNumber,ticketaPrice,ticketbPrice,ticketcPrice,substring,substring1);
                trainInfoList.add(trainInfo);
            }
        }
        return trainInfoList;
    }

    @Override
    public Long selectCount(String ticketFrom, String ticketTo) {
        TrainTicketExample trainTicketExample = new TrainTicketExample();
        TrainTicketExample.Criteria criteria = trainTicketExample.createCriteria();
        criteria.andTicketFromEqualTo(ticketFrom).andTicketToEqualTo(ticketTo);
        long count = trainTicketMapper.countByExample(trainTicketExample);
        return count;
    }

}

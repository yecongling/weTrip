package com.foo.wetrip.service;

import com.foo.wetrip.bean.TrainInfo;

import java.util.List;

public interface TrainTicketService {
    /**
     * 根据起点和终点站查询
     * @param ticketFrom  起点站
     * @param ticketTo  终点站
     * @return
     */
    List<TrainInfo> selectAllTicket(String ticketFrom, String ticketTo);

    /**
     * 查询有哪些车次
     * @param ticketFrom
     * @param ticketTo
     * @return
     */
    Long selectCount(String ticketFrom,String ticketTo);
}

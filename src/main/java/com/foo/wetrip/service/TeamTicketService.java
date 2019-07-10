package com.foo.wetrip.service;

import com.foo.wetrip.bean.TeamTicket;

import java.util.List;
/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:02
 * @Description: com.foo.wetrip.service
 * weTrip
 */
public interface TeamTicketService {
    /**
     * 保存团票订单
     * @param teamTicket 团票实体
     */
    void saveTeamTicketMessage(TeamTicket teamTicket);

    /**
     * 查询所有的团票
     * @return
     */
    List<TeamTicket> getAll();

    /**
     * 根据id删除信息
     * @param id
     */
    void deleteMessage(Integer id);
}

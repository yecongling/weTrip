package com.foo.wetrip.dao;

import com.foo.wetrip.bean.TrainTicket;
import com.foo.wetrip.bean.TrainTicketExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TrainTicketMapper {
    long countByExample(TrainTicketExample example);

    int deleteByExample(TrainTicketExample example);

    int deleteByPrimaryKey(Integer ticketId);

    int insert(TrainTicket record);

    int insertSelective(TrainTicket record);

    List<TrainTicket> selectByExample(TrainTicketExample example);

    TrainTicket selectByPrimaryKey(Integer ticketId);

    int updateByExampleSelective(@Param("record") TrainTicket record, @Param("example") TrainTicketExample example);

    int updateByExample(@Param("record") TrainTicket record, @Param("example") TrainTicketExample example);

    int updateByPrimaryKeySelective(TrainTicket record);

    int updateByPrimaryKey(TrainTicket record);
}
package com.foo.wetrip.dao;

import com.foo.wetrip.bean.TicketType;
import com.foo.wetrip.bean.TicketTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TicketTypeMapper {
    long countByExample(TicketTypeExample example);

    int deleteByExample(TicketTypeExample example);

    int deleteByPrimaryKey(Integer ticketTypeId);

    int insert(TicketType record);

    int insertSelective(TicketType record);

    List<TicketType> selectByExample(TicketTypeExample example);

    TicketType selectByPrimaryKey(Integer ticketTypeId);

    int updateByExampleSelective(@Param("record") TicketType record, @Param("example") TicketTypeExample example);

    int updateByExample(@Param("record") TicketType record, @Param("example") TicketTypeExample example);

    int updateByPrimaryKeySelective(TicketType record);

    int updateByPrimaryKey(TicketType record);
}
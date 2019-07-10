package com.foo.wetrip.dao;

import com.foo.wetrip.bean.TeamTicket;
import com.foo.wetrip.bean.TeamTicketExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TeamTicketMapper {
    long countByExample(TeamTicketExample example);

    int deleteByExample(TeamTicketExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TeamTicket record);

    int insertSelective(TeamTicket record);

    List<TeamTicket> selectByExample(TeamTicketExample example);

    TeamTicket selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TeamTicket record, @Param("example") TeamTicketExample example);

    int updateByExample(@Param("record") TeamTicket record, @Param("example") TeamTicketExample example);

    int updateByPrimaryKeySelective(TeamTicket record);

    int updateByPrimaryKey(TeamTicket record);
}
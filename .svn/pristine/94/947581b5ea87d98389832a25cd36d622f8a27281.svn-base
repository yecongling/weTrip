package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.TeamTicket;
import com.foo.wetrip.dao.TeamTicketMapper;
import com.foo.wetrip.service.TeamTicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeamTicketServiceImpl implements TeamTicketService {
    @Autowired
    TeamTicketMapper teamTicketMapper;
    @Override
    public void saveTeamTicketMessage(TeamTicket teamTicket) {
        teamTicket.setStates((byte)0);
        teamTicketMapper.insertSelective(teamTicket);
    }

    @Override
    public List<TeamTicket> getAll() {
        return teamTicketMapper.selectByExample(null);
    }

    @Override
    public void deleteMessage(Integer id) {
        teamTicketMapper.deleteByPrimaryKey(id);
    }
}

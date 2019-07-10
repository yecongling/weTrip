package com.foo.wetrip.controller;

import com.foo.wetrip.bean.TrainInfo;
import com.foo.wetrip.service.TrainTicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class TrainTicketInfoController {

    @Autowired
    TrainTicketService trainTicketService;
    @RequestMapping("/ticketList")
    public ModelAndView ticketList(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        String ticketFrom = "北京";
        String ticketTo = "成都";
        session.setAttribute("ticketFrom",ticketFrom);
        session.setAttribute("ticketTo",ticketTo);
        List<TrainInfo> trainInfoList = trainTicketService.selectAllTicket(ticketFrom,ticketTo);
        Long count = trainTicketService.selectCount(ticketFrom, ticketTo);
        modelAndView.addObject("count",count);
        modelAndView.addObject("trainInfoList",trainInfoList);
        modelAndView.setViewName("trainList");
        return modelAndView;
    }
}

package com.foo.wetrip.controller;

import com.foo.wetrip.bean.TicketUtil;
import com.foo.wetrip.dao.ScenicMapper;
import com.foo.wetrip.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class TicketController {
    @Autowired
    private TicketService ticketService;
    @Autowired
    private ScenicMapper scenicMapper;

    /**
     * 从订单中查询景点售出票数
     * @return
     */
    @GetMapping("/allTicket")
    public ModelAndView SumByCounts() {
        ModelAndView modelAndView = new ModelAndView();
        //封装的与门票数量有关的集合
        List<TicketUtil> list = ticketService.selectTotalCounts();
        //查询数量
        long count = scenicMapper.countByExample(null);
        System.out.println(count);
        modelAndView.addObject("list", list);
        modelAndView.addObject("count", count);
        modelAndView.setViewName("back/ticket-brand");
        return modelAndView;
    }


}


package com.foo.wetrip.controller;


import com.foo.wetrip.bean.TeamTicket;
import com.foo.wetrip.service.impl.SendYunServiceImpl;
import com.foo.wetrip.service.TeamTicketService;
import com.foo.wetrip.util.Msg;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class IntoTicketController {
    @Autowired
   private TeamTicketService teamTicketService;

    @Autowired
    private SendYunServiceImpl sendYunServiceImpl;
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }


    @RequestMapping(value = "/ticketSearch")
    public String intoSearch() {
        return "TicketSearch";
    }


    @RequestMapping(value = "/teamTicket")
    public String teamTicket() {
        return "teamTicket";
    }

    @RequestMapping(value = "/saveTeamTicket", method = RequestMethod.POST)
    @ResponseBody
    public Msg message(TeamTicket teamTicket) {
        teamTicketService.saveTeamTicketMessage(teamTicket);
        return Msg.success();
    }
    @RequestMapping(value = "/afterTeamTicket")
    public String afterMessage(){
        return "afterTeamTicket";
    }
    @RequestMapping(value = "/allMessage")
    @ResponseBody
    public Msg getAllMessageWithJson(
           @RequestParam(value = "pn",defaultValue = "1") Integer pn){
        //引入pagehelper分页插件
        PageHelper.startPage(pn,5);
        List<TeamTicket> list = teamTicketService.getAll();
        //封装了详细的分页信息
        PageInfo page = new PageInfo(list,7);
        return Msg.success().add("PageInfo",page);
    }
    @RequestMapping(value = "/deleteMessage/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteMessage(@PathVariable Integer id){
        teamTicketService.deleteMessage(id);
        return Msg.success();
    }
    @RequestMapping(value = "/send", method = RequestMethod.GET)
    @ResponseBody
    public Msg sendMessage(@RequestParam("linkPhone")String linkPhone,@RequestParam("content") String content) throws IOException {
        System.out.println("------------------------------------------------------------------------------------------------");
        System.out.println(linkPhone);
        System.out.println(content);
        sendYunServiceImpl.sendPhoneAndContent(linkPhone,content);

        return Msg.success();
    }

}

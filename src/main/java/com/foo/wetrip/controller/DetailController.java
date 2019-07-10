package com.foo.wetrip.controller;

import com.foo.wetrip.service.ScenicService;
import com.foo.wetrip.util.ScenicUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class DetailController {
    @Autowired
    private ScenicService scenicService;

    /**
     * 查看景区详情
     * @param request
     * @return
     */
    @GetMapping("/detail-ticket")
    public ModelAndView Detail(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
      Integer   scenicId =Integer.valueOf(request.getParameter("scenicId"));
        System.out.println(scenicId+"================================================");
        ScenicUtil scenic = scenicService.selectScenic(scenicId);
        modelAndView.addObject("scenic",scenic);
        modelAndView.setViewName("back/detail-ticket");
        return modelAndView;

    }

}

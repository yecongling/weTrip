package com.foo.wetrip.controller;

import com.foo.wetrip.bean.Scenic;
import com.foo.wetrip.service.IndexService;
import com.foo.wetrip.util.ScenicUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @Author: Wonderland
 * @Date: 2019/2/27 9:36
 * @Description: com.foo.wetrip.controller
 * weTrip
 */
@Controller
public class IndexController {
    @Autowired
    private IndexService indexService;

    @RequestMapping("/index")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView();
        // 查询景点数据到主页上显示
        List<ScenicUtil> list1 = indexService.selectAllScenicByScenicType(1);
        modelAndView.addObject("list1",list1);
        List<ScenicUtil> list2 = indexService.selectAllScenicByScenicType(2);
        modelAndView.addObject("list2",list2);
        List<ScenicUtil> list3 = indexService.selectAllScenicByScenicType(3);
        modelAndView.addObject("list3",list3);
        List<ScenicUtil> list4 = indexService.selectAllScenicByScenicType(4);
        modelAndView.addObject("list4",list4);
        List<ScenicUtil> list5 = indexService.selectAllScenicByScenicType(5);
        modelAndView.addObject("list5",list5);
        // 每个种类的景点差一个到主页面的轮播图中显示
        List<ScenicUtil> scenicUtilList = indexService.selectByScenicType();
        modelAndView.addObject("scenicUtilList",scenicUtilList);
        // 查询景点的名字到属性导航中
        List<Scenic> scenicList = indexService.selectScenicByScenicType();
        modelAndView.addObject("scenicList",scenicList);
        modelAndView.setViewName("index");
        return modelAndView;
    }
}
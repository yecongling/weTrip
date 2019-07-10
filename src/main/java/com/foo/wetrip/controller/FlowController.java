package com.foo.wetrip.controller;

import com.foo.wetrip.bean.Flow;
import com.foo.wetrip.dao.FlowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class FlowController {
    @Autowired
    private FlowMapper flowMapper;

    /**
     * 查看所有的流水情况
     * @param model
     * @return
     */
    @RequestMapping(value = "/flow")
    public String getFlow(Model model) {
        List<Flow> list = flowMapper.selectByExample(null);
        model.addAttribute("list", list);
        return "flow";
    }
}

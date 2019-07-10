package com.foo.wetrip.controller;

import com.foo.wetrip.bean.Admin;
import com.foo.wetrip.bean.AllOrderInfo;
import com.foo.wetrip.service.AdminService;
import com.foo.wetrip.util.MdPassword;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:00
 * @Description: com.foo.wetrip.controller
 * weTrip
 */
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @GetMapping("/adminLogin")
    public String adminLogin(Model model) {
        return "back/login";
    }

    @RequestMapping("/admin-login")
    public ModelAndView login(HttpServletRequest request) throws NoSuchAlgorithmException {
        ModelAndView modelAndView = new ModelAndView();
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        // 如果用户没登录,就到登录界面
        if (phone == null || password == null) {
            modelAndView.addObject("error","请登录");
            modelAndView.setViewName("back/login");
        } else {

            String password1 = new MdPassword().newPassword(password);
            System.out.println(phone + password);
            boolean adminLogin = adminService.adminLogin(phone, password1);
            if (adminLogin) {
                Admin admin = adminService.selectByPhone(phone);
                modelAndView.addObject("admin", admin);
                modelAndView.setViewName("back/index");
            } else {
                modelAndView.addObject("error", "用户名或密码错误");
                modelAndView.setViewName("back/login");
            }
        }
        return modelAndView;
    }

    @GetMapping("/main")
    public String welcome() {
        return "/back/welcome";
    }

    @RequestMapping("/allOrder")
    public ModelAndView allOrder(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        List<AllOrderInfo> allOrderInfos = adminService.selectAllOrder();
        modelAndView.addObject("allOrderInfos", allOrderInfos);
        modelAndView.setViewName("/allOrder");
        return modelAndView;
    }

    @RequestMapping("/agree")
    public ModelAndView agree(HttpServletRequest request) {
        String orderNum = request.getParameter("orderNum");
        adminService.adminAgree(orderNum);

        return new ModelAndView("redirect:allOrder");
    }
}
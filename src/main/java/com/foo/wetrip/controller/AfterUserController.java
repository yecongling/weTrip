package com.foo.wetrip.controller;

import com.foo.wetrip.bean.Users;
import com.foo.wetrip.dao.UsersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AfterUserController {
    @Autowired
    private UsersMapper usersMapper;
    @RequestMapping(value = "/afterUser")
    public String afterUser(Model model){
        List<Users> users = usersMapper.selectByExample(null);
        model.addAttribute("users",users);
        return "afterUser";
    }
    @RequestMapping(value = "/updateUserStates")
    public String updateUserStates(@RequestParam Integer userId){
        Users user = usersMapper.selectByPrimaryKey(userId);
        if (user.getEnable()==true){
            user.setEnable(false);
            usersMapper.updateByPrimaryKeySelective(user);
        }else {
            user.setEnable(true);
            usersMapper.updateByPrimaryKeySelective(user);
        }
        return "redirect:/afterUser";
    }
}

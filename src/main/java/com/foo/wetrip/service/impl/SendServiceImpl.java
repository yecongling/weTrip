package com.foo.wetrip.service.impl;


import com.foo.wetrip.bean.Users;
import com.foo.wetrip.dao.UsersMapper;
import com.foo.wetrip.service.SendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("sendService")
public class SendServiceImpl implements SendService {
   @Autowired
    public UsersMapper dao;

    //查找手机号是否被注册
    public boolean selectPhone(String phoneNum) {
        boolean flag = false;
        Users users = dao.selectByPhoneNum(phoneNum);

        if (users != null) {
            flag = true;
        }
        return flag;
    }

    //注册手机号
    public void add(Users users) {
        dao.insert(users);
    }

}

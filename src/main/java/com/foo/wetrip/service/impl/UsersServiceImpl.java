package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.Users;

import com.foo.wetrip.bean.UsersExample;
import com.foo.wetrip.dao.UsersMapper;
import com.foo.wetrip.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService {
    @Autowired
    private UsersMapper usersMapper;
    //下列代码做条件查询用
    private UsersExample usersExample = new UsersExample();
    UsersExample.Criteria criteria = usersExample.createCriteria();
    @Override
    public boolean userLogin(String phoneNum, String password) {
        //按照号码查询
        boolean flag = false;
        criteria.andPhoneNumEqualTo(phoneNum);
        List<Users> usersList = usersMapper.selectByExample(usersExample);
        Users users = new Users();
        if(usersList.size()!=0){
            users = usersList.get(0);
            if(password.equals(users.getPassword())&&users.getEnable()==true){
                flag = true;
            }
        }
        return flag;
    }
}

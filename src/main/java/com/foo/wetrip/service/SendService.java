package com.foo.wetrip.service;

import com.foo.wetrip.bean.Users;

public interface SendService {
    /**
     * 查询电话是否注册
     * @param phoneNum
     * @return
     */
    boolean selectPhone(String phoneNum);

    /**
     * 添加用户
     * @param users
     */
    void add(Users users);
}

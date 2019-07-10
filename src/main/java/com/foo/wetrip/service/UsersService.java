package com.foo.wetrip.service;


public interface UsersService {
    /**
     * 用户登录
     * @param phoneNum 账号
     * @param password  密码
     * @return
     */
   boolean userLogin(String phoneNum,String password);
}

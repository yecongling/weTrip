package com.foo.wetrip.service.impl;

import com.foo.wetrip.service.AdminService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:29
 * @Description: com.foo.wetrip.service.impl
 * weTrip
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class AdminServiceImplTest {
    @Autowired
    private AdminService adminService;
    @Test
    public void adminLogin() {
        boolean adminLogin = adminService.adminLogin("15808203316", "123456");
        System.out.println(adminLogin);
    }
}
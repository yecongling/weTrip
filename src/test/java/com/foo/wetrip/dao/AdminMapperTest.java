package com.foo.wetrip.dao;

import com.foo.wetrip.bean.Admin;
import com.foo.wetrip.bean.AdminExample;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:17
 * @Description: com.foo.wetrip.dao
 * weTrip
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class AdminMapperTest {
    @Autowired
    private AdminMapper adminMapper;
    @Test
    public void selectByPhone() {
        Admin admin = adminMapper.selectByPhone("15808203316");
        System.out.println(admin.getAdminName());
    }
    @Test
    public void test(){
        AdminExample adminExample = new AdminExample();
        AdminExample.Criteria criteria = adminExample.createCriteria();
        criteria.andAdminNameEqualTo("叶丛林").andPhoneNumEqualTo("15808203316");
        List<Admin> admins = adminMapper.selectByExample(adminExample);
        for (Admin admin : admins) {
            System.out.println(admin);
        }
    }
}
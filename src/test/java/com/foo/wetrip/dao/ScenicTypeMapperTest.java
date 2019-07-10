package com.foo.wetrip.dao;

import com.alibaba.fastjson.JSON;
import com.foo.wetrip.bean.ScenicType;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * @Author: Wonderland
 * @Date: 2019/2/28 10:42
 * @Description: com.foo.wetrip.dao
 * weTrip
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class ScenicTypeMapperTest {
    @Autowired
    private ScenicTypeMapper scenicTypeMapper;
    @Test
    public void selectByExample() {
        List<ScenicType> scenicTypes = scenicTypeMapper.selectByExample(null);
        for (ScenicType scenicType : scenicTypes) {
            System.out.println(JSON.toJSONString(scenicType,true));
        }
    }
}
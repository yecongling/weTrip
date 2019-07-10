package com.foo.wetrip.dao;

import com.alibaba.fastjson.JSON;
import com.foo.wetrip.bean.Scenic;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import static org.junit.Assert.*;

/**
 * @Author: Wonderland
 * @Date: 2019/2/25 20:08
 * @Description: com.foo.wetrip.dao
 * weTrip
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class ScenicMapperTest {
    @Autowired
    private ScenicTypeMapper scenicTypeMapper;
    @Autowired
    private ScenicMapper scenicMapper;


    @Test
    public void testSelectAllScenicByLimit(){
        long count = scenicMapper.countByExample(null);
        HashSet<Integer> set = new HashSet<>();
        int id;
        do {
            id= (int) Math.floor(Math.random()*count);
            System.out.println(id);
            set.add(id);
        }while (set.size() < 8);
        System.out.println(JSON.toJSONString(set,true));

        List<Scenic> scenicList = scenicMapper.selectByExample(null);
        ArrayList<Scenic> scenics = new ArrayList<>();
        for (Integer i : set) {
            scenics.add(scenicList.get(i));
//            System.out.println(JSON.toJSONString(scenicList.get(i),true));
        }
        System.out.println(JSON.toJSONString(scenics,true));
    }
}
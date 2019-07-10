package com.foo.wetrip.dao;

import com.foo.wetrip.bean.Picture;
import com.foo.wetrip.bean.ScenicExample;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * @Author: Wonderland
 * @Date: 2019/3/4 9:53
 * @Description: com.foo.wetrip.dao
 * weTrip
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class PictureMapperTest {

    @Autowired
    private ScenicMapper scenicMapper;
    @Autowired
    private PictureMapper pictureMapper;
    @Test
    public void deleteByPrimaryKey() {
        int i = scenicMapper.deleteByPrimaryKey(27);
        System.out.println(i);
    }

    @Test
    public void insert(){
        Picture picture = new Picture();
        picture.setPicturePath("111.jpg");
        int insert = pictureMapper.insert(picture);
        System.out.println(insert);
    }
}
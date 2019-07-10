package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.Scenic;
import com.foo.wetrip.bean.ScenicExample;
import com.foo.wetrip.bean.ScenicType;
import com.foo.wetrip.dao.PictureMapper;
import com.foo.wetrip.dao.ScenicMapper;
import com.foo.wetrip.dao.ScenicTypeMapper;
import com.foo.wetrip.dao.VideoMapper;
import com.foo.wetrip.service.IndexService;
import com.foo.wetrip.util.ScenicUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: Wonderland
 * @Date: 2019/2/28 10:36
 * @Description: com.foo.wetrip.service.impl
 * weTrip
 */

@Service
public class IndexServiceImpl implements IndexService {
    @Autowired
    private ScenicMapper scenicMapper;
    @Autowired
    private PictureMapper pictureMapper;
    @Autowired
    private ScenicTypeMapper scenicTypeMapper;
    @Autowired
    private VideoMapper videoMapper;

    @Override
    public List<ScenicUtil> selectAllScenicByScenicType(Integer typeId) {
        ScenicExample scenicExample = new ScenicExample();
        scenicExample.createCriteria().andScenicTypeIdEqualTo(typeId);
        List<Scenic> scenicList = scenicMapper.selectByExample(scenicExample);
        ArrayList<ScenicUtil> scenicUtils = new ArrayList<>();
        for (Scenic scenic : scenicList) {
            ScenicUtil scenicUtil = new ScenicUtil();
            // 分别封装数据到该对象中
            scenicUtil.setScenicId(scenic.getScenicId());
            scenicUtil.setScenicTypeName(scenicTypeMapper.selectByPrimaryKey(scenic.getScenicTypeId()).getScenicTypeName());
            scenicUtil.setEnable(scenic.getEnable());
            scenicUtil.setScenicName(scenic.getScenicName());
            scenicUtil.setDescription(scenic.getDescription());
            scenicUtil.setAddress(scenic.getAddress());
            scenicUtil.setPrice(scenic.getPrice());
            scenicUtil.setPicturePath(pictureMapper.selectByPrimaryKey(scenic.getPictureId()).getPicturePath());
            scenicUtil.setVideoPath(videoMapper.selectByPrimaryKey(scenic.getVideoId()).getVideoPath());
            scenicUtils.add(scenicUtil);
        }
        ArrayList<ScenicUtil> list = new ArrayList<>();
        for (int i = 0; i < 8; i++) {
            list.add(scenicUtils.get(i));
        }
        return list;
    }

    @Override
    public List<ScenicUtil> selectByScenicType() {
        // 申明一个ScenicUtil类型的集合用来装取数据
        ArrayList<ScenicUtil> scenicUtils = new ArrayList<>();
        // 查询到所有的景点的类别
        List<ScenicType> scenicTypes = scenicTypeMapper.selectByExample(null);
        for (ScenicType scenicType : scenicTypes) {
            ScenicExample scenicExample = new ScenicExample();
            scenicExample.createCriteria().andScenicTypeIdEqualTo(scenicType.getScenicTypeId());
            List<Scenic> scenicList = scenicMapper.selectByExample(scenicExample);
            // 取每个集合中的第一个数据用来显示在页面上
            Scenic scenic = scenicList.get(0);
            ScenicUtil scenicUtil = new ScenicUtil();
            scenicUtil.setDescription(scenic.getDescription());
            scenicUtil.setScenicTypeName(scenicTypeMapper.selectByPrimaryKey(scenic.getScenicTypeId()).getScenicTypeName());
            scenicUtil.setVideoPath(videoMapper.selectByPrimaryKey(scenic.getVideoId()).getVideoPath());
            scenicUtil.setPicturePath(pictureMapper.selectByPrimaryKey(scenic.getPictureId()).getPicturePath());
            scenicUtil.setPrice(scenic.getPrice());
            scenicUtil.setEnable(scenic.getEnable());
            scenicUtil.setAddress(scenic.getAddress());
            scenicUtil.setScenicName(scenic.getScenicName());
            scenicUtil.setScenicId(scenic.getScenicId());
            scenicUtils.add(scenicUtil);
        }
        return scenicUtils;
    }

    @Override
    public List<Scenic> selectScenicByScenicType() {
        // 查询国内旅游的景点
        ScenicExample scenicExample = new ScenicExample();
        scenicExample.createCriteria().andScenicTypeIdEqualTo(1);
        List<Scenic> scenicList = scenicMapper.selectByExample(scenicExample);
        return scenicList;
    }
}

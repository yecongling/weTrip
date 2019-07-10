package com.foo.wetrip.service;

import com.foo.wetrip.bean.Scenic;
import com.foo.wetrip.util.ScenicUtil;

import java.util.List;
import java.util.Map;

/**
 * @Author: Wonderland
 * @Date: 2019/2/28 10:25
 * @Description: com.foo.wetrip.service
 * weTrip
 */
public interface IndexService {

    /**
     * 根据景点类型查询所有的景点,每组选择8个景点
     * @return
     */
    List<ScenicUtil> selectAllScenicByScenicType(Integer typeId);

    /**
     * 每种类型的景点查询一个来使用
     * @return
     */
    List<ScenicUtil> selectByScenicType();

    /**
     * 搜索景点,按类别查询,取10个数据显示在树形导航中
     * @return
     */
    List<Scenic> selectScenicByScenicType();
}

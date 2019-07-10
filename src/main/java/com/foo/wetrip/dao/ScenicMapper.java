package com.foo.wetrip.dao;

import com.foo.wetrip.bean.Scenic;
import com.foo.wetrip.bean.ScenicExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScenicMapper {
    long countByExample(ScenicExample example);

    int deleteByExample(ScenicExample example);

    int deleteByPrimaryKey(Integer scenicId);

    int insert(Scenic record);

    int insertSelective(Scenic record);

    List<Scenic> selectByExample(ScenicExample example);

    List<Scenic> selectAllScenicByLimit();

    Scenic selectByPrimaryKey(Integer scenicId);

    int updateByExampleSelective(@Param("record") Scenic record, @Param("example") ScenicExample example);

    int updateByExample(@Param("record") Scenic record, @Param("example") ScenicExample example);

    int updateByPrimaryKeySelective(Scenic record);

    int updateByPrimaryKey(Scenic record);
}
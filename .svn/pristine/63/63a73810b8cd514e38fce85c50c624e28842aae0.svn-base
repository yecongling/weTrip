package com.foo.wetrip.dao;

import com.foo.wetrip.bean.ScenicType;
import com.foo.wetrip.bean.ScenicTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScenicTypeMapper {
    long countByExample(ScenicTypeExample example);

    int deleteByExample(ScenicTypeExample example);

    int deleteByPrimaryKey(Integer scenicTypeId);

    int insert(ScenicType record);

    int insertSelective(ScenicType record);

    List<ScenicType> selectByExample(ScenicTypeExample example);

    ScenicType selectByPrimaryKey(Integer scenicTypeId);

    int updateByExampleSelective(@Param("record") ScenicType record, @Param("example") ScenicTypeExample example);

    int updateByExample(@Param("record") ScenicType record, @Param("example") ScenicTypeExample example);

    int updateByPrimaryKeySelective(ScenicType record);

    int updateByPrimaryKey(ScenicType record);
}
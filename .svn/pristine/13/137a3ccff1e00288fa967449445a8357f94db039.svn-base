package com.foo.wetrip.dao;

import com.foo.wetrip.bean.Flow;
import com.foo.wetrip.bean.FlowExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FlowMapper {
    long countByExample(FlowExample example);

    int deleteByExample(FlowExample example);

    int deleteByPrimaryKey(Integer flowId);

    int insert(Flow record);

    int insertSelective(Flow record);

    List<Flow> selectByExample(FlowExample example);

    Flow selectByPrimaryKey(Integer flowId);

    int updateByExampleSelective(@Param("record") Flow record, @Param("example") FlowExample example);

    int updateByExample(@Param("record") Flow record, @Param("example") FlowExample example);

    int updateByPrimaryKeySelective(Flow record);

    int updateByPrimaryKey(Flow record);
}
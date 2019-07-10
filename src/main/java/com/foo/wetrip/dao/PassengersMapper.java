package com.foo.wetrip.dao;

import com.foo.wetrip.bean.Passengers;
import com.foo.wetrip.bean.PassengersExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PassengersMapper {
    long countByExample(PassengersExample example);

    int deleteByExample(PassengersExample example);

    int deleteByPrimaryKey(Integer passengerId);

    int insert(Passengers record);

    int insertSelective(Passengers record);

    List<Passengers> selectByExample(PassengersExample example);

    Passengers selectByPrimaryKey(Integer passengerId);

    int updateByExampleSelective(@Param("record") Passengers record, @Param("example") PassengersExample example);

    int updateByExample(@Param("record") Passengers record, @Param("example") PassengersExample example);

    int updateByPrimaryKeySelective(Passengers record);

    int updateByPrimaryKey(Passengers record);
}
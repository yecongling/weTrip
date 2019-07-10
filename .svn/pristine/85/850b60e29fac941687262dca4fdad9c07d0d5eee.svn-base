package com.foo.wetrip.dao;

import com.foo.wetrip.bean.Train;
import com.foo.wetrip.bean.TrainExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TrainMapper {
    long countByExample(TrainExample example);

    int deleteByExample(TrainExample example);

    int deleteByPrimaryKey(Integer trainId);

    int insert(Train record);

    int insertSelective(Train record);

    List<Train> selectByExample(TrainExample example);

    Train selectByPrimaryKey(Integer trainId);

    int updateByExampleSelective(@Param("record") Train record, @Param("example") TrainExample example);

    int updateByExample(@Param("record") Train record, @Param("example") TrainExample example);

    int updateByPrimaryKeySelective(Train record);

    int updateByPrimaryKey(Train record);
}
package com.foo.wetrip.dao;

import com.foo.wetrip.bean.Video;
import com.foo.wetrip.bean.VideoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VideoMapper {
    long countByExample(VideoExample example);

    int deleteByExample(VideoExample example);

    int deleteByPrimaryKey(Integer videoId);

    int insert(Video record);

    int insertSelective(Video record);

    List<Video> selectByExample(VideoExample example);

    Video selectByPrimaryKey(Integer videoId);

    int updateByExampleSelective(@Param("record") Video record, @Param("example") VideoExample example);

    int updateByExample(@Param("record") Video record, @Param("example") VideoExample example);

    int updateByPrimaryKeySelective(Video record);

    int updateByPrimaryKey(Video record);
}
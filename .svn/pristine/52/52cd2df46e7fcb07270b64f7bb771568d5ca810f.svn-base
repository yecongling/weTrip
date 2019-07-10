package com.foo.wetrip.dao;

import com.foo.wetrip.bean.Favorite;
import com.foo.wetrip.bean.FavoriteExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FavoriteMapper {
    long countByExample(FavoriteExample example);

    int deleteByExample(FavoriteExample example);

    int deleteByPrimaryKey(Integer collectionId);

    int insert(Favorite record);

    int insertSelective(Favorite record);

    List<Favorite> selectByExample(FavoriteExample example);

    Favorite selectByPrimaryKey(Integer collectionId);

    int updateByExampleSelective(@Param("record") Favorite record, @Param("example") FavoriteExample example);

    int updateByExample(@Param("record") Favorite record, @Param("example") FavoriteExample example);

    int updateByPrimaryKeySelective(Favorite record);

    int updateByPrimaryKey(Favorite record);
}
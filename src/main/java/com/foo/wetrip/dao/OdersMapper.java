package com.foo.wetrip.dao;

import com.foo.wetrip.bean.Oders;
import com.foo.wetrip.bean.OdersExample;
import java.util.List;

import com.foo.wetrip.bean.TicketUtil;
import org.apache.ibatis.annotations.Param;

public interface OdersMapper {
    long countByExample(OdersExample example);

    int deleteByExample(OdersExample example);

    int deleteByPrimaryKey(Integer orderId);

    int insert(Oders record);

    int insertSelective(Oders record);

    List<Oders> selectByExample(OdersExample example);

    Oders selectByPrimaryKey(Integer orderId);

    int updateByExampleSelective(@Param("record") Oders record, @Param("example") OdersExample example);

    int updateByExample(@Param("record") Oders record, @Param("example") OdersExample example);

    int updateByPrimaryKeySelective(Oders record);

    int updateByPrimaryKey(Oders record);

    /**
     * 根据景区编号查询景区的门票出售数量
     * @param scenicId
     * @return
     */
    Long selectSumByCounts(Integer scenicId);

    /**
     * 查询7天内的数据
     * @param scenicId
     * @return
     */
    Long selectJan(Integer scenicId);
    Long selectFeb(Integer scenicId);
    Long selectMar(Integer scenicId);
    Long selectApr(Integer scenicId);
    Long selectMay(Integer scenicId);
    Long selectJune(Integer scenicId);
    Long selectJuly(Integer scenicId);
    Long selectAug(Integer scenicId);
    Long selectSep(Integer scenicId);
    Long selectOct(Integer scenicId);
    Long selectNov(Integer scenicId);
    Long selectDec(Integer scenicId);



}
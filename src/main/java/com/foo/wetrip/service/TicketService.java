package com.foo.wetrip.service;

import com.foo.wetrip.bean.LineUtil;
import com.foo.wetrip.bean.Scenic;
import com.foo.wetrip.bean.TicketUtil;

import java.util.List;

public interface TicketService {
   /**
    * 根据景区的编号查询每个景区的门票售出数量
    * @param scenicId
    * @return
    */
   long selectSumByCounts(Integer scenicId);

   /**
    * 根据景区的编号查询景区的具体详情
    * @param scenicId
    * @return
    */
   Scenic selectByPrimaryKey(Integer scenicId);


   /**
    * 封装
    * @return
    */

   List<TicketUtil> selectTotalCounts();

}

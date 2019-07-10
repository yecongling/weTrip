package com.foo.wetrip.service;

import com.foo.wetrip.bean.Feedback;
import com.foo.wetrip.bean.FeedbackExample;
import java.util.List;
/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:02
 * @Description: com.foo.wetrip.service
 * weTrip
 */
public interface FeedbackService {
   /**
    * 插入反馈
    * @param feedback 反馈实体
    */
   void insert(Feedback feedback);

   /**
    * 根据条件查询反馈
    * @param example
    * @return
    */
   List<Feedback> selectByExample(FeedbackExample example);

   /**
    * 选择所有的反馈
    * @return
    */
   List<Feedback> select();

}

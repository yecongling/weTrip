package com.foo.wetrip.service;

import com.foo.wetrip.bean.Question;
import com.foo.wetrip.bean.QuestionExample;

import java.util.List;
/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:02
 * @Description: com.foo.wetrip.service
 * weTrip
 */
public interface QuestionService {

    /**
     * 根据条件获得所有的问题
     * @param example 条件
     * @return
     */
    List<Question> selectByExample(QuestionExample example);

    /**
     * 根据问题编号获得问题实体
     * @param questionId 问题编号
     * @return 问题实体
     */
    Question selectByPrimaryKey(Integer questionId);

    /**
     * 插入问题
     * @param question 问题实体
     */
    void insertSelective(Question question);

    /**
     * 更新问题
     * @param record 问题记录实体
     */
    void updateByPrimaryKeySelective(Question record);

    /**
     * 根据问题编号删除问题
     * @param questionId 问题的编号
     */
    void deleteByPrimaryKey(Integer questionId);

    /**
     * 根据条件统计问题的条数
     * @param example 问题
     * @return
     */
    long countByExample(QuestionExample example);

}

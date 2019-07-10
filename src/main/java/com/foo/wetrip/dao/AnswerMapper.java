package com.foo.wetrip.dao;

import com.foo.wetrip.bean.Answer;
import com.foo.wetrip.bean.AnswerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AnswerMapper {
    long countByExample(AnswerExample example);

    int deleteByExample(AnswerExample example);

    int deleteByPrimaryKey(Integer answerId);

    int insert(Answer record);

    int insertSelective(Answer record);

    List<Answer> selectByExample(AnswerExample example);

    Answer selectByPrimaryKey(Integer answerId);

    Answer selectByFeedbackId(Integer feedbackId);

    int updateByExampleSelective(@Param("record") Answer record, @Param("example") AnswerExample example);

    int updateByExample(@Param("record") Answer record, @Param("example") AnswerExample example);

    int updateByPrimaryKeySelective(Answer record);

    int updateByPrimaryKey(Answer record);





}
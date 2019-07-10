package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.Question;
import com.foo.wetrip.bean.QuestionExample;
import com.foo.wetrip.dao.QuestionMapper;
import com.foo.wetrip.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class QuestionServiceImpl implements   QuestionService {
    @Autowired
    private QuestionMapper questionMapper;
    @Override
    public List<Question> selectByExample(QuestionExample example) {
        List<Question> questions = questionMapper.selectByExample(null);
        return questions;
    }

    @Override
    public Question selectByPrimaryKey(Integer questionId) {
        Question question = questionMapper.selectByPrimaryKey(questionId);
        return question;
    }

    @Override
    public void insertSelective(Question question) {
        questionMapper.insertSelective(question);
    }

    @Override
    public void updateByPrimaryKeySelective(Question question) {
        questionMapper.updateByPrimaryKeySelective(question);
    }

    @Override
    public void deleteByPrimaryKey(Integer questionId) {
         questionMapper.deleteByPrimaryKey(questionId);
    }

    @Override
    public long countByExample(QuestionExample example) {
        long count = questionMapper.countByExample(null);
        return count;
    }


}

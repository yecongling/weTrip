package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.Answer;
import com.foo.wetrip.dao.AnswerMapper;
import com.foo.wetrip.service.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class AnswerServiceImpl implements AnswerService {
    @Autowired
    private AnswerMapper answerMapper;
    @Override
    public void insert(Answer answer) {
          answerMapper.insert(answer);
    }

    @Override
    public Answer selectByFeedbackId(Integer feedbackId) {
        Answer answer = answerMapper.selectByFeedbackId(feedbackId);
        return answer;
    }
}

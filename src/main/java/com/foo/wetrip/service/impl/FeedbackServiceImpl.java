package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.Feedback;
import com.foo.wetrip.bean.FeedbackExample;
import com.foo.wetrip.dao.FeedbackMapper;
import com.foo.wetrip.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FeedbackServiceImpl implements FeedbackService {
    @Autowired
    private FeedbackMapper feedbackMapper;
    @Override
    public void insert(Feedback feedback) {
        feedbackMapper.insert(feedback);

    }

    @Override
    public List<Feedback> selectByExample(FeedbackExample example) {
        List<Feedback> feedbacks = feedbackMapper.selectByExample(null);
        return feedbacks;
    }

    @Override
    public List<Feedback> select() {
        List<Feedback> select = feedbackMapper.select();
        return select;
    }
}

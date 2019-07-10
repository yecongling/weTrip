package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.Answer;
import com.foo.wetrip.bean.Feedback;
import com.foo.wetrip.bean.FeedbackAnswer;
import com.foo.wetrip.bean.Users;
import com.foo.wetrip.dao.AnswerMapper;
import com.foo.wetrip.dao.FeedbackMapper;
import com.foo.wetrip.dao.UsersMapper;
import com.foo.wetrip.service.AnswerService;
import com.foo.wetrip.service.FeedbackAnswerService;
import com.foo.wetrip.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class FeedbackAnswerServiceImpl implements FeedbackAnswerService {
    @Autowired
    private FeedbackService feedbackService;
    @Autowired
    private FeedbackMapper feedbackMapper;
    @Autowired
    private AnswerService answerService;
    @Autowired
    private AnswerMapper answerMapper;
    @Autowired
    private FeedbackAnswerService feedbackAnswerService;
    @Autowired
    private UsersMapper usersMapper;


    /**
     * 找的所有的反馈
     * @return
     */
    @Override
    public List<FeedbackAnswer> selectall() {
        //找到所有的客户反馈
        List<Feedback> feedbacks = feedbackService.selectByExample(null);
        List<FeedbackAnswer> feedbackAnswers = new ArrayList<>();
        for (Feedback feedback : feedbacks){
            //遍历客户反馈得到产品经理回复
            Answer answer = answerService.selectByFeedbackId(feedback.getFeedbackId());
            Users user = usersMapper.selectByPrimaryKey(feedback.getUserId());
            String userName = user.getUserName();
            //判断一下answer是否为空
            if(answer== null){
                FeedbackAnswer feedbackAnswer = new FeedbackAnswer();
                feedbackAnswer.setUserId(feedback.getUserId());
                feedbackAnswer.setUserName(userName);
                feedbackAnswer.setTitle(feedback.getTitle());
                feedbackAnswer.setFeedbackTime(feedback.getFeedbackTime());
                feedbackAnswer.setContent(feedback.getContent());
                feedbackAnswers.add(feedbackAnswer);
            } else {
                //如果找得到回复
                if (answer.getAnswerId() != null && answer.getAnswer() != null && answer.getAnswerTime() != null) {
                    //实例化
                    FeedbackAnswer selectall = new FeedbackAnswer(feedback.getFeedbackId(), feedback.getUserId(),userName, feedback.getTitle(), feedback.getContent(), feedback.getFeedbackTime(), answer.getAnswerId(), answer.getAnswer(), answer.getAnswerTime());
                    feedbackAnswers.add(selectall);
                }
            }
        }
        return feedbackAnswers;
    }


    /**
     * 找到所有已回复的反馈
     * @return
     */
    @Override
    public List<FeedbackAnswer> selectList() {
        //找到所有已回复的反馈编号
        List<Answer> answerList = answerMapper.selectByExample(null);
        List<FeedbackAnswer> feedbackAnswers = new ArrayList<>();
        for (Answer answer: answerList) {
            Feedback feedback = feedbackMapper.selectByPrimaryKey(answer.getFeedbackId());
            Users user = usersMapper.selectByPrimaryKey(feedback.getUserId());
            String userName = user.getUserName();
            //得到各个字段,并封装实体
            FeedbackAnswer selectList = new FeedbackAnswer(feedback.getFeedbackId(), feedback.getUserId(),userName, feedback.getTitle(), feedback.getContent(), feedback.getFeedbackTime(), answer.getAnswerId(), answer.getAnswer(), answer.getAnswerTime());
            feedbackAnswers.add(selectList);
        }
        return feedbackAnswers;
    }
}

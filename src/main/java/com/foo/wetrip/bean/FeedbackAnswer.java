package com.foo.wetrip.bean;

import java.util.Date;

/**
 * 封装的关于反馈和回复的内容
 */
public class FeedbackAnswer {
    private Integer feedbackId;

    private Integer userId;

    private String userName;

    private String title;

    private String content;

    private Date feedbackTime;

    private Integer answerId;

    private String answer;

    private Date answerTime;


    public FeedbackAnswer(){

    }

    public FeedbackAnswer(Integer feedbackId, Integer userId,String userName, String title, String content, Date feedbackTime, Integer answerId, String answer, Date answerTime) {
        this.feedbackId = feedbackId;
        this.userId = userId;
        this.userName = userName;
        this.title = title;
        this.content = content;
        this.feedbackTime = feedbackTime;
        this.answerId = answerId;
        this.answer = answer;
        this.answerTime = answerTime;
    }

    public Integer getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(Integer feedbackId) {
        this.feedbackId = feedbackId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getFeedbackTime() {
        return feedbackTime;
    }

    public void setFeedbackTime(Date feedbackTime) {
        this.feedbackTime = feedbackTime;
    }

    public Integer getAnswerId() {
        return answerId;
    }

    public void setAnswerId(Integer answerId) {
        this.answerId = answerId;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public Date getAnswerTime() {
        return answerTime;
    }

    public void setAnswerTime(Date answerTime) {
        this.answerTime = answerTime;
    }
}

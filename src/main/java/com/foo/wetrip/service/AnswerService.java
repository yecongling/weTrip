package com.foo.wetrip.service;

import com.foo.wetrip.bean.Answer;

/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:02
 * @Description: com.foo.wetrip.service
 * weTrip
 */
public interface AnswerService {
    /**
     * 插入回答
     * @param answer 回答的实体
     */
    void insert(Answer answer);

    /**
     * 根据反馈编号获得答案
     * @param feedbackId 反馈的编号
     * @return 回答的实体
     */
    Answer selectByFeedbackId(Integer feedbackId);


}

package com.foo.wetrip.service;

import com.foo.wetrip.bean.Oders;
import com.foo.wetrip.util.CalculateResult;
import com.foo.wetrip.util.CommentsAndUserUtil;

import java.util.List;
/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:02
 * @Description: com.foo.wetrip.service
 * weTrip
 */

public interface CommentsService {


    /**
     * 根据订单号,查询查询景点Id;
     * @param orderNum 订单号
     */
    Oders getOrderByOrderNum(String orderNum);

    /**
     * 存储评论信息
     *
     * @param scenicId 景点编号
     * @param score 分数
     * @param content 内容
     * @param userId 用户编号
     */
    void saveComments(Integer scenicId, Integer score, String content, Integer userId);

    /**
     * 根据景点编号查询评论列表
     * @param scenicId 景点编号
     * @return
     */
    List<CommentsAndUserUtil> getcommentsListWtihUserList(Integer scenicId);

    /**
     * 计算结果
     * @param cauList
     * @return
     */
    CalculateResult calculateResult(List<CommentsAndUserUtil> cauList);

    /**
     * 通过景点编号和分数获得评论
     * @param scenicId 景点编号
     * @param score 分数
     * @return
     */
    List<CommentsAndUserUtil> getComentsByScenicIdWithScore(Integer scenicId, Integer score);


}

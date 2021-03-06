package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.*;
import com.foo.wetrip.dao.CommentsMapper;
import com.foo.wetrip.dao.OdersMapper;
import com.foo.wetrip.dao.UsersMapper;
import com.foo.wetrip.service.CommentsService;
import com.foo.wetrip.util.CalculateResult;
import com.foo.wetrip.util.CommentsAndUserUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



@Service
public class CommentsServiceImpl implements CommentsService {
    @Autowired
    private CommentsMapper commentsMapper;

    @Autowired
    private OdersMapper odersMapper;

    @Autowired
    private UsersMapper usersMapper;
    @Override
    public Oders getOrderByOrderNum(String orderNum) {
        OdersExample example = new OdersExample();
        OdersExample.Criteria criteria = example.createCriteria();
        criteria.andOrderNumEqualTo(orderNum);
        List<Oders> oders = odersMapper.selectByExample(example);
        Oders orders = oders.get(0);
        return orders;
    }

    @Override
    public void saveComments(Integer scenicId, Integer score, String content, Integer userId) {
        Comments comments = new Comments();
        comments.setCommentTime(new Date());
        comments.setContent(content);
        comments.setScenicId(scenicId);
        comments.setScore(score);
        comments.setUserId(userId);
        commentsMapper.insertSelective(comments);
    }

    @Override
    public List<CommentsAndUserUtil> getcommentsListWtihUserList(Integer scenicId) {
        CommentsExample example = new CommentsExample();
        CommentsExample.Criteria criteria = example.createCriteria();
        criteria.andScenicIdEqualTo(scenicId);
        List<Comments> comments = commentsMapper.selectByExample(example);
        //封装实体
        List<CommentsAndUserUtil> CAUList = new ArrayList<>();
        for (Comments comment : comments) {

            Integer userId = comment.getUserId();
            Integer commentId = comment.getCommentId();
            String content = comment.getContent();
            Date commentTime = comment.getCommentTime();
            Integer score = comment.getScore();
            Users user = usersMapper.selectByPrimaryKey(userId);
            String userName = user.getUserName();
            String phone = user.getPhoneNum();
            String substring = phone.substring(0, 3);
            String substring1 = phone.substring(7, 11);
            String phoneNum = substring+"****"+substring1;
            CommentsAndUserUtil CAU = new CommentsAndUserUtil(userId,commentId,content,commentTime,score,userName,phoneNum);
            CAUList.add(CAU);
        }
        return  CAUList;
    }

    @Override
    public CalculateResult calculateResult(List<CommentsAndUserUtil> cauList) {

        //算出总数
        float size = cauList.size();
        //初始化总分数
        float count=0;
        for (CommentsAndUserUtil util : cauList) {
            float score = util.getScore();
            count +=score;
        }
        //计算平均分
        float b = count/size;
        DecimalFormat fnu  = new DecimalFormat("0.0");
        System.out.println("------------------------------------");
        System.out.println(b);

            if (!Float.isNaN(b)){
                float average = Float.parseFloat(fnu.format(b));
                //计算好评率
                double a =(average/5)*100;
                //格式化
                DecimalFormat fnum  = new DecimalFormat("00.0");
                float rate = Float.parseFloat(fnum.format(a));
                //封装实体
                CalculateResult result = new CalculateResult();
                result.setAverage(average);
                result.setRate(rate);
                return result;
            }else {
                return null;
            }
    }




    @Override
    public List<CommentsAndUserUtil> getComentsByScenicIdWithScore(Integer scenicId, Integer score) {
        CommentsExample example = new CommentsExample();
        CommentsExample.Criteria criteria = example.createCriteria();
        criteria.andScenicIdEqualTo(scenicId).andScoreEqualTo(score);
        List<Comments> comments = commentsMapper.selectByExample(example);
        //封装实体
        List<CommentsAndUserUtil> CAUList = new ArrayList<>();
        for (Comments comment : comments) {

            Integer userId = comment.getUserId();
            Integer commentId = comment.getCommentId();
            String content = comment.getContent();
            Date commentTime = comment.getCommentTime();
            Users user = usersMapper.selectByPrimaryKey(userId);
            String userName = user.getUserName();
            String phone = user.getPhoneNum();
            String substring = phone.substring(0, 3);
            String substring1 = phone.substring(7, 11);
            String phoneNum = substring+"****"+substring1;
            CommentsAndUserUtil CAU = new CommentsAndUserUtil(userId,commentId,content,commentTime,score,userName,phoneNum);
            CAUList.add(CAU);
        }
        return  CAUList;
     }
    }


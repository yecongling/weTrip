package com.foo.wetrip.controller;

import com.alibaba.fastjson.JSON;
import com.foo.wetrip.bean.Feedback;
import com.foo.wetrip.bean.FeedbackAnswer;
import com.foo.wetrip.bean.Users;
import com.foo.wetrip.dao.AnswerMapper;
import com.foo.wetrip.dao.FeedbackMapper;
import com.foo.wetrip.service.FeedbackAnswerService;
import com.foo.wetrip.service.FeedbackService;
import com.foo.wetrip.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * 反馈相关的内容
 */
@Controller
public class FeedbackController {
    @Autowired
  private  FeedbackService feedbackService;
    @Autowired
    private AnswerMapper answerMapper;
    @Autowired
    private FeedbackMapper feedbackMapper;
    @Autowired
    private FeedbackAnswerService feedbackAnswerService;
    @RequestMapping("/feedback")
    public ModelAndView feedback(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        if (request.getSession().getAttribute("user") == null){
            modelAndView.addObject("error","请登录");
            modelAndView.setViewName("redirect:/preLogin");
        }else {
            modelAndView.setViewName("/feedback");
        }
        return modelAndView;
    }

    /**
     * 客户插入反馈
     * @param request
     * @param response
     * @param session
     * @throws IOException
     */
    @RequestMapping("/insertFeedback")
    public void insert(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
        //  从session中得到用户编号
        Users user = (Users) session.getAttribute("user");
        Integer userId = user.getUserId();
        //  得到界面传过来的信息
        String title =  request.getParameter("title");
        String content =  request.getParameter("content");
        Date feedbackTime=new Date();
        // DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        // String time=format.format(date);
        // 封装实体
        Feedback feedback = new Feedback();
        feedback.setUserId(userId);
        feedback.setTitle(title);
        feedback.setContent(content);
        feedback.setFeedbackTime(feedbackTime);
        // 向数据库插入
        feedbackService.insert(feedback);
        // ajax返回成功
        JsonResult result = new JsonResult(JsonResult.SUCCESS, "成功", true);
        response.getWriter().println(JSON.toJSONString(result));
    }

    /**
     * 客户看到的反馈界面
     * @param request
     * @return
     */
    @GetMapping("/viewFeedback")
    public ModelAndView view(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        //从数据库查询到反馈信息,并传到页面
        List<FeedbackAnswer> selectall = feedbackAnswerService.selectall();
        modelAndView.addObject("selectall", selectall);
        modelAndView.setViewName("/view-feedback");
        return modelAndView;
    }


    /**
     * 后台看到的反馈已经回复de界面
     * @param request
     * @return
     */
    @GetMapping("/backFeedbackList")
    public ModelAndView backList(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        long count = answerMapper.countByExample(null);
        //从数据库查询到反馈信息,并传到页面
        List<FeedbackAnswer> selectList = feedbackAnswerService.selectList();
        modelAndView.addObject("selectList", selectList);
        modelAndView.addObject("count",count);
        modelAndView.setViewName("back/back-feedback-list");
        return modelAndView;
    }



    /**
     * 后台查看反馈界面
     * @param request
     * @return
     */
    @GetMapping("/backFeedback")
    public ModelAndView back(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
      long count = feedbackMapper.selectCount();
        modelAndView.addObject("count",count);
        List<Feedback> feedbacks = feedbackService.select();
        modelAndView.addObject("feedbacks", feedbacks);
        modelAndView.setViewName("/back/back_feedback");
        return modelAndView;
    }


}

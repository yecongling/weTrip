package com.foo.wetrip.controller;

import com.alibaba.fastjson.JSON;
import com.foo.wetrip.bean.Question;
import com.foo.wetrip.dao.QuestionMapper;
import com.foo.wetrip.service.QuestionService;
import com.foo.wetrip.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class QuestionController {
    @Autowired
    private QuestionService questionService;
    @Autowired
    private QuestionMapper questionMapper;

    // 用户看到的问题列表
    @GetMapping("/viewQuestion")
    public ModelAndView viewQuestion() {
        ModelAndView modelAndView = new ModelAndView();
        List<Question> questions = questionService.selectByExample(null);
        modelAndView.addObject("question", questions);
        long count = questionService.countByExample(null);
        modelAndView.addObject("count",count);
        modelAndView.setViewName("view-question");
        return modelAndView;
    }

    // 后台看到的问题列表
    @GetMapping("/backQuestion")
    public ModelAndView backQuestion() {
        ModelAndView modelAndView = new ModelAndView();
        List<Question> questions = questionService.selectByExample(null);
        modelAndView.addObject("questions", questions);
        long count = questionService.countByExample(null);
        modelAndView.addObject("count",count);
        modelAndView.setViewName("back/back_question");
        return modelAndView;
    }

    @RequestMapping("/editQuestion")
    public void update(HttpServletRequest request, HttpServletResponse response)throws IOException {
      Integer questionId = Integer.valueOf( request.getParameter("questionId"));
      String questionTitle =  request.getParameter("questionTitle");
       String questionContent =  request.getParameter("questionContent");
        Question question= new Question();
        question.setQuestionId(questionId);
        question.setQuestionTitle(questionTitle);
        question.setQuestionContent(questionContent);
        questionService.updateByPrimaryKeySelective(question);
        JsonResult result = new JsonResult(JsonResult.SUCCESS, "成功", true);
        response.getWriter().println(JSON.toJSONString(result));

    }



    @RequestMapping("/insertQuestion")
    public void insert(HttpServletRequest request,HttpServletResponse response) throws IOException{
        String questionTitle =  request.getParameter("questionTitle");
        String questionContent =  request.getParameter("questionContent");
        Question question= new Question();
        question.setQuestionTitle(questionTitle);
        question.setQuestionContent(questionContent);
       questionService.insertSelective(question);
        JsonResult result = new JsonResult(JsonResult.SUCCESS, "成功", true);
        response.getWriter().println(JSON.toJSONString(result));
    }


    @RequestMapping("/selectQuestion")
    public void select(HttpServletRequest request,HttpServletResponse response)throws IOException {
        Integer questionId = Integer.valueOf( request.getParameter("questionId"));
        System.out.println(questionId+"----------------");
        Question question = questionService.selectByPrimaryKey(questionId);
        // 设置响应头
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        // 输出JSON字符串
        response.getWriter().write(JSON.toJSONString(question));
    }

    @RequestMapping("/deleteQuestion")
    public void delete(HttpServletRequest request,HttpServletResponse response)throws IOException {
        Integer questionId = Integer.valueOf( request.getParameter("questionId"));
        System.out.println(questionId+"----------------");
       questionMapper.deleteByPrimaryKey(questionId);
        // 设置响应头
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        // 输出JSON字符串
        response.getWriter().write(JSON.toJSONString(1));
    }

}
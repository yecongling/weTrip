package com.foo.wetrip.controller;

import com.foo.wetrip.bean.Oders;
import com.foo.wetrip.bean.Picture;
import com.foo.wetrip.bean.Scenic;
import com.foo.wetrip.bean.Users;
import com.foo.wetrip.service.CommentsService;
import com.foo.wetrip.service.ScenicService;
import com.foo.wetrip.util.CalculateResult;
import com.foo.wetrip.util.CommentsAndUserUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserCommentsController {
    @Autowired
   private CommentsService commentsService;
    @Autowired
   private ScenicService scenicService;


    @RequestMapping(value = "/userComments")
    public String goComments(HttpServletRequest request, Model model){
        String orderNum = request.getParameter("orderNum");
        Oders order = commentsService.getOrderByOrderNum(orderNum);
        Integer scenicId = order.getScenicId();
        model.addAttribute("scenicId",scenicId);
        return "userComments";
    }
    @RequestMapping(value = "/saveComments")
    public String saveComments(Integer scenicId, Integer score, String content, HttpSession session,Model model){
        //从session获得userId
        Users user = (Users) session.getAttribute("user");
        Integer userId = user.getUserId();

        commentsService.saveComments(scenicId,score,content,userId);
        model.addAttribute("scenicId",scenicId);
        return "tankyou";
    }
    @RequestMapping(value = "/review")
    public String AllComments(HttpServletRequest request, Model model) {

        Integer scenicId = Integer.valueOf(request. getParameter("scenicId"));

        //根据scenicId查询全部评论
        List<CommentsAndUserUtil> CAUList = commentsService.getcommentsListWtihUserList(scenicId);
        //查询scenicId景点信息
        Scenic scenic = scenicService.getScenicById(scenicId);
        //算出平均分和好评率
        CalculateResult result = commentsService.calculateResult(CAUList);
        //查询图片
        Picture picture = scenicService.getPicture(scenicId);
        model.addAttribute("CAUList",CAUList);
        model.addAttribute("scenic",scenic);
        model.addAttribute("result",result);
        model.addAttribute("picture",picture);
        return "comment/review";
    }
}

package com.foo.wetrip.controller;

import com.foo.wetrip.bean.Scenic;
import com.foo.wetrip.service.CommentsService;
import com.foo.wetrip.service.ScenicService;
import com.foo.wetrip.util.CalculateResult;
import com.foo.wetrip.util.CommentsAndUserUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class CommentsTypeController {
    @Autowired
    private CommentsService commentsService;
    @Autowired
    private ScenicService scenicService;

    @RequestMapping(value = "/commentsType")
    public String goChoseGet(HttpServletRequest request,Model model){
        String commentsType = request.getParameter("commentsType");

        String[] split = commentsType.split("\\,");
        Integer score = Integer.valueOf(split[0]);
        Integer scenicId= Integer.valueOf(split[1]);
        if (score!=0){
            //根据scenicId和score查询全部评论
            List<CommentsAndUserUtil> CAUList = commentsService.getComentsByScenicIdWithScore(scenicId, score);
            //查询scenicId景点信息
            Scenic scenic = scenicService.getScenicById(scenicId);
            //算出平均分和好评率
            List<CommentsAndUserUtil> CAU = commentsService.getcommentsListWtihUserList(scenicId);
            CalculateResult result = commentsService.calculateResult(CAU);

            model.addAttribute("CAUList",CAUList);
            model.addAttribute("scenic",scenic);
            model.addAttribute("result",result);
            return "comment/review";
        }
        return "redirect:/review?scenicId="+scenicId;
    }
}

package com.foo.wetrip.controller;

import com.foo.wetrip.bean.*;
import com.foo.wetrip.dao.OdersMapper;
import com.foo.wetrip.dao.PictureMapper;
import com.foo.wetrip.dao.ScenicMapper;
import com.foo.wetrip.service.MyOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MyOrderController {

    @Autowired
    MyOrderService myOrderService;

    @Autowired
    OdersMapper odersMapper;

    @Autowired
    ScenicMapper scenicMapper;

    @Autowired
    PictureMapper pictureMapper;
    @GetMapping("/drawBack")
    public ModelAndView drawBack(HttpServletRequest request) {
        String orderNum = request.getParameter("orderNum");
        myOrderService.tuikuan(orderNum);

        return new ModelAndView("redirect:myOrder");
    }

    @RequestMapping("/myOrderDetail")
    public ModelAndView myOrderDetail(HttpSession session, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();

        String orderNum = request.getParameter("orderNum");
        // String orderNum = "20192019";
        // String phoneNum = (String) session.getAttribute("phoneNum");
        String phoneNum = "15760011822";
        String topNum = phoneNum.substring(0,3);
        String lastNum = phoneNum.substring(8,11);
        String phone = topNum+"****"+lastNum;

        //根据订单动态编号查询订单信息
        OdersExample odersExample = new OdersExample();
        OdersExample.Criteria criteria = odersExample.createCriteria();
        Oders oders = new Oders();
        criteria.andOrderNumEqualTo(orderNum);
        List<Oders> odersList = odersMapper.selectByExample(odersExample);
        if(odersList.size()!=0){
            oders = odersList.get(0);
            Integer scenicId = oders.getScenicId();
            //获取景点信息
            Scenic scenic = scenicMapper.selectByPrimaryKey(scenicId);
            Integer pictureId = scenic.getPictureId();
            //获取图片信息
            Picture picture = pictureMapper.selectByPrimaryKey(pictureId);
            String picturePath = picture.getPicturePath();
            modelAndView.addObject("phone",phone);
            modelAndView.addObject("picturePath",picturePath);
            modelAndView.addObject("scenic",scenic);
            System.out.println(oders.getOrderNum());
        }

        modelAndView.addObject("oders",oders);

        modelAndView.setViewName("/users/myOrderDetail");
        return modelAndView;
    }
}

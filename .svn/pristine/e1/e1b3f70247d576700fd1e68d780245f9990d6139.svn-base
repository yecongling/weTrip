package com.foo.wetrip.controller;

import com.alibaba.fastjson.JSON;
import com.foo.wetrip.bean.LineUtil;
import com.foo.wetrip.dao.OdersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class NameController {
    @Autowired
    private OdersMapper odersMapper;

    /**
     * 折线图界面需要使用ajax,把这个controller当做一个跳板
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("haha")
    public String ha(HttpServletRequest request, Model model){
        Integer scenicId = Integer.valueOf(request.getParameter("scenicId"));
        model.addAttribute("scenicId",scenicId);
        return "/back/diagram";
}

    @GetMapping("/line" )
    //  @ResponseBody
    public void seven(HttpServletRequest request,HttpServletResponse response)throws IOException {
        // 得到景区的编号
        Integer scenicId = Integer.valueOf(request.getParameter("scenicId"));
        // 从数据库查询每个月份的门票出售量
        Long aLong11 = odersMapper.selectJan(scenicId);
        Long aLong = odersMapper.selectFeb(scenicId);
        Long aLong1 = odersMapper.selectMar(scenicId);
        Long aLong2 = odersMapper.selectApr(scenicId);
        Long aLong3 = odersMapper.selectMay(scenicId);
        Long aLong4 = odersMapper.selectJune(scenicId);
        Long aLong5 = odersMapper.selectJuly(scenicId);
        Long aLong6 = odersMapper.selectAug(scenicId);
        Long aLong7 = odersMapper.selectSep(scenicId);
        Long aLong8 = odersMapper.selectOct(scenicId);
        Long aLong9 = odersMapper.selectNov(scenicId);
        Long aLong10 = odersMapper.selectDec(scenicId);

        // 实例化一个数量集合
        List counts = new ArrayList();
        if(aLong11==null){
            aLong11=0l;
        }
        counts.add(aLong11);
        if(aLong==null){
            aLong=0l;
        }
        counts.add(aLong);
        if(aLong1==null){
            aLong1=0l;
        }
        counts.add(aLong1);
        if(aLong2==null){
            aLong2=0l;
        }
        counts. add(aLong2);
        if(aLong3==null){
            aLong3=0l;
        }
        counts.add(aLong3);
        if(aLong4==null){
            aLong4=0l;
        }
        counts.add(aLong4);
        if(aLong5==null){
            aLong5=0l;
        }
        counts.add(aLong5);
        if(aLong6==null){
            aLong6=0l;
        }
        counts.add(aLong6);
        if(aLong7==null){
            aLong7=0l;
        }
        counts.add(aLong7);
        if(aLong8==null){
            aLong8=0l;
        }
        counts.add(aLong8);
        if(aLong9==null){
            aLong9=0l;
        }
        counts.add(aLong9);
        if(aLong10==null){
            aLong10=0l;
        }
        counts.add(aLong10);

        // 实例化实体,向里边封装数量和月份
        LineUtil lineA = new LineUtil();
        lineA.setYueFen("一月份");
        lineA.setCounts(aLong11);

        LineUtil lineB = new LineUtil();
        lineB.setYueFen("二月份");
        lineB.setCounts(aLong);

        LineUtil lineC = new LineUtil();
        lineC.setYueFen("三月份");
        lineC.setCounts(aLong1);

        LineUtil lineD = new LineUtil();
        lineD.setYueFen("四月份");
        lineD.setCounts(aLong2);

        LineUtil lineE = new LineUtil();
        lineE.setYueFen("五月份");
        lineE.setCounts(aLong3);

        LineUtil lineF = new LineUtil();
        lineF.setYueFen("六月份");
        lineF.setCounts(aLong4);

        LineUtil lineG = new LineUtil();
        lineG.setYueFen("七月份");
        lineG.setCounts(aLong5);

        LineUtil lineH = new LineUtil();
        lineH.setYueFen("八月份");
        lineH.setCounts(aLong6);

        LineUtil lineI = new LineUtil();
        lineI.setYueFen("九月份");
        lineI.setCounts(aLong7);

        LineUtil lineJ = new LineUtil();
        lineJ.setYueFen("十月份");
        lineJ.setCounts(aLong8);

        LineUtil lineK = new LineUtil();
        lineK.setYueFen("十一月份");
        lineK.setCounts(aLong9);

        LineUtil lineL = new LineUtil();
        lineL.setYueFen("十二月份");
        lineL.setCounts(aLong10);
        // 用一个集合把他们装起来
        List<LineUtil> line = new ArrayList<>();
        line.add(lineA);
        line.add(lineB);
        line.add(lineC);
        line.add(lineD);
        line.add(lineE);
        line.add(lineF);
        line.add(lineG);
        line.add(lineH);
        line.add(lineI);
        line.add(lineJ);
        line.add(lineK);
        line.add(lineL);

       // model.addAttribute("LineUtil",line);


        Map<String, Object> map = new HashMap<>();
        map.put("line", line);
        String json = JSON.toJSONString(map,true);
        response.setContentType("application/json;charset = utf-8");
        response.getWriter().println(json);
    }



}

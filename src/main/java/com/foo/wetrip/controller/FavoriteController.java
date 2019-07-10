package com.foo.wetrip.controller;

import com.foo.wetrip.bean.Favorite;
import com.foo.wetrip.bean.FavoriteExample;
import com.foo.wetrip.bean.Scenic;
import com.foo.wetrip.bean.Users;
import com.foo.wetrip.dao.FavoriteMapper;
import com.foo.wetrip.dao.ScenicMapper;
import com.foo.wetrip.util.FavoriteListUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class FavoriteController {
    @Autowired
    private FavoriteMapper favoriteMapper;
    @Autowired
    private ScenicMapper scenicMapper;

    @RequestMapping(value = "/favorite")
    public String saveFavoriteAndGetList(HttpServletRequest request, Model model, HttpSession session) {
        Integer scenicId = Integer.valueOf(request.getParameter("scenicId"));
        //从session取出User
        Users user = (Users) session.getAttribute("user");
        if (user == null) {
            return "redirect:/preLogin";
        }
        Integer userId = user.getUserId();
        if (scenicId != 0) {
            //往favorite表中插入数据
            Favorite favorite1 = new Favorite();
            favorite1.setScenicId(scenicId);
            favorite1.setUserId(userId);
            favorite1.setCollectionTime(new Date());
            favoriteMapper.insertSelective(favorite1);

            //根据userId查询favorite的集合
            FavoriteExample example = new FavoriteExample();
            FavoriteExample.Criteria criteria = example.createCriteria();
            criteria.andUserIdEqualTo(userId);
            List<Favorite> favorites = favoriteMapper.selectByExample(example);

            List<FavoriteListUtil> favoriteListUtilList = new ArrayList<>();
            myFavorite(favorites, favoriteListUtilList);
            model.addAttribute("favoriteList", favoriteListUtilList);
            model.addAttribute("scenicId", scenicId);
        } else {
            FavoriteExample example = new FavoriteExample();
            FavoriteExample.Criteria criteria = example.createCriteria();
            criteria.andUserIdEqualTo(userId);
            List<Favorite> favorites = favoriteMapper.selectByExample(example);

            List<FavoriteListUtil> favoriteListUtilList = new ArrayList<>();
            myFavorite(favorites, favoriteListUtilList);
            model.addAttribute("favoriteList", favoriteListUtilList);
            model.addAttribute("scenicId", scenicId);
        }
        return "favorite";
    }

    private void myFavorite(List<Favorite> favorites, List<FavoriteListUtil> favoriteListUtilList) {
        for (Favorite favorite : favorites) {
            //利用封装的实体类
            FavoriteListUtil favoriteList = new FavoriteListUtil();
            Integer collectionId = favorite.getCollectionId();
            Integer scenicId1 = favorite.getScenicId();
            Scenic scenic = scenicMapper.selectByPrimaryKey(scenicId1);
            String scenicName = scenic.getScenicName();
            String address = scenic.getAddress();
            String price = scenic.getPrice();
            String description = scenic.getDescription();
            favoriteList.setCollectionId(collectionId);
            favoriteList.setScenicName(scenicName);
            favoriteList.setAddress(address);
            favoriteList.setDescription(description);
            favoriteList.setPrice(price);
            favoriteListUtilList.add(favoriteList);
        }
    }

    @RequestMapping(value = "/cancelFavorite/{id}", method = RequestMethod.GET)
    public String cancelFavorite(@PathVariable("id") Integer id) {
        favoriteMapper.deleteByPrimaryKey(id);
        return "redirect:/favorite?scenicId=0";
    }

    @RequestMapping("/re")
    public String review() {
        return "comment/review";
    }

}

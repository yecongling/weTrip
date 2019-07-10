package com.foo.wetrip.service;

import com.foo.wetrip.bean.Picture;

import java.util.List;

/**
 * @Author: Wonderland
 * @Date: 2019/2/26 10:51
 * @Description: com.foo.wetrip.service
 * weTrip
 */
public interface PictureService {

    /**
     * 得到所有的图片
     * @return
     */
    List<Picture> selectAllPicture();

}

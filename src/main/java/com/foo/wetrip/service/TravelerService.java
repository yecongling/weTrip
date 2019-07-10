package com.foo.wetrip.service;

import com.foo.wetrip.bean.Passengers;
/**
 * @Author: Wonderland
 * @Date: 2019/2/25 16:02
 * @Description: com.foo.wetrip.service
 * weTrip
 */
public interface TravelerService {
    /**
     * 插入旅客
     * @param passengers 旅客实体
     */
    void insert(Passengers passengers);
}

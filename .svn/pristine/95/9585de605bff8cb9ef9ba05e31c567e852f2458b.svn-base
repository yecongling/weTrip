package com.foo.wetrip.service.impl;

import com.foo.wetrip.bean.Passengers;
import com.foo.wetrip.dao.PassengersMapper;
import com.foo.wetrip.service.TravelerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TravelerServiceImpl implements TravelerService {
    @Autowired
    private PassengersMapper passengersMapper;
    @Override
    public void insert(Passengers passengers) {
        passengersMapper.insert(passengers);
    }
}

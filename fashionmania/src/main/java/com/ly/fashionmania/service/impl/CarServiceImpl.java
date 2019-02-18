package com.ly.fashionmania.service.impl;

import com.ly.fashionmania.dao.CarDao;
import com.ly.fashionmania.service.ICarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl implements ICarService {

    @Autowired
    private CarDao carDao;
    @Override
    public int addCar(int u_id, int s_id) {
        return carDao.addCar(u_id,s_id);
    }

    @Override
    public int deleteOne(int u_id, int s_id) {
        return carDao.deleteOne(u_id,s_id);
    }
}

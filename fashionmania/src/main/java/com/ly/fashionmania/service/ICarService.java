package com.ly.fashionmania.service;


import com.ly.fashionmania.entity.CarDto;

import java.util.List;

public interface ICarService {
    int addCar(int u_id, int s_id);

    int deleteOne(int u_id, int s_id);

    List<CarDto> selectInfo(int u_id, int s_id);
}

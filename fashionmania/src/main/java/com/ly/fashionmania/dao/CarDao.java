package com.ly.fashionmania.dao;

import com.ly.fashionmania.entity.CarDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CarDao {
    int addCar(@Param("u_id") int u_id, @Param("s_id") int s_id);

    int deleteOne(@Param("u_id") int u_id, @Param("s_id") int s_id);

    List<CarDto> selectInfo(@Param("u_id") int u_id, @Param("s_id") int s_id);
}

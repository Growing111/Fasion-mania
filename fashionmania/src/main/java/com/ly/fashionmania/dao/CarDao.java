package com.ly.fashionmania.dao;

import org.apache.ibatis.annotations.Param;

public interface CarDao {
    int addCar(@Param("u_id") int u_id, @Param("s_id") int s_id);

    int deleteOne(@Param("u_id") int u_id, @Param("s_id") int s_id);
}

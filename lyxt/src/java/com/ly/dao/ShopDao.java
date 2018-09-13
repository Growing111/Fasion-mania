package com.ly.dao;

import com.ly.entity.Shop;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShopDao {

    List<Shop> getAll();

    Shop findByid(int id);

    List<Shop> getAllByType(@Param("leixing")String leixing, @Param("sex")String sex);

    List<Shop> getAllByCar(int u_id);

    List<Shop> getAllByOrder(int u_id);

    List<Shop> ShowAllShop();

    List<Shop> getAllUserToShop();
}

package com.ly.fashionmania.dao;

import com.ly.fashionmania.entity.Shop;
import com.ly.fashionmania.entity.ShopDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShopDao {

    List<Shop> getAll();

    Shop findByid(int id);

    List<Shop> getAllByType(@Param("leixing") String leixing, @Param("sex") String sex);

    List<Shop> getAllByCar(int u_id);

    List<Shop> getAllByOrder(int u_id);

    List<Shop> inSearchOfshop(String condition);

    List<Shop> ShowAllShop();

    List<ShopDto> getAllUserToShop();
    List<ShopDto> allUserToShopPage(@Param("limit")int limit, @Param("page")int page);

    List<Shop> showAllShopPage(@Param("limit")int limit,@Param("page")int page);
}

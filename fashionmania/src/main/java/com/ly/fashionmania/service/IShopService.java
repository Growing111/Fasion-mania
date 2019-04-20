package com.ly.fashionmania.service;


import com.ly.fashionmania.entity.Shop;
import com.ly.fashionmania.entity.ShopDto;
import com.ly.fashionmania.entity.Type;

import java.util.List;

public interface IShopService {

    List<Shop> getAll();

    Shop findById(int id);

    List<Shop> getAllByType(Type type);

    List<Shop> getAllByCar(int u_id);

    List<Shop> getAllByOrder(int u_id);
    List<Shop> inSearchOfshop(String condition);
    List<Shop> ShowAllShop();

    List<Shop> ShowAllShopPage(int limit,int page);

    List<ShopDto> getAllUserToShop();

    List<ShopDto> getAllUserToShopPage(int limit, int page);
}

package com.ly.service;

import com.ly.entity.Shop;
import com.ly.entity.Type;

import java.util.List;

public interface IShopService {

    List<Shop> getAll();

    Shop findById(int id);

    List<Shop> getAllByType(Type type);

    List<Shop> getAllByCar(int u_id);

    List<Shop> getAllByOrder(int u_id);

    List<Shop> ShowAllShop();

    List<Shop> getAllUserToShop();
}

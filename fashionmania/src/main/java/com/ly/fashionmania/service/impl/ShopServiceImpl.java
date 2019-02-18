package com.ly.fashionmania.service.impl;


import com.ly.fashionmania.dao.ShopDao;
import com.ly.fashionmania.entity.Shop;
import com.ly.fashionmania.entity.Type;
import com.ly.fashionmania.service.IShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShopServiceImpl implements IShopService {

    @Autowired
    private ShopDao shopDao;

    @Override
    public List<Shop> getAll() {
        return shopDao.getAll();
    }

    @Override
    public Shop findById(int id) {
        return shopDao.findByid(id);
    }

    @Override
    public List<Shop> getAllByType(Type type) {
        String leixing=type.getLeixing();
        String sex=type.getSex();
        return shopDao.getAllByType(leixing,sex);
    }

    @Override
    public List<Shop> getAllByCar(int u_id) {

        return shopDao.getAllByCar(u_id);
    }

    @Override
    public List<Shop> getAllByOrder(int u_id) {
        return shopDao.getAllByOrder(u_id);
    }

    @Override
    public List<Shop> ShowAllShop() {
        return shopDao.ShowAllShop();
    }

    @Override
    public List<Shop> getAllUserToShop() {
        return shopDao.getAllUserToShop();
    }
}

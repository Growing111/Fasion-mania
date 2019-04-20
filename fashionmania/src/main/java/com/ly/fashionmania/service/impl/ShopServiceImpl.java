package com.ly.fashionmania.service.impl;


import com.ly.fashionmania.dao.ShopDao;
import com.ly.fashionmania.entity.Shop;
import com.ly.fashionmania.entity.ShopDto;
import com.ly.fashionmania.entity.Type;
import com.ly.fashionmania.service.IShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ShopServiceImpl implements IShopService {

    @Resource
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
    public List<Shop> inSearchOfshop(String condition) {
        return shopDao.inSearchOfshop(condition);
    }

    @Override
    public List<Shop> ShowAllShop() {
        return shopDao.ShowAllShop();
    }

    @Override
    public List<Shop> ShowAllShopPage(int limit, int page) {
        return shopDao.showAllShopPage(limit,page);
    }


    @Override
    public List<ShopDto> getAllUserToShop() {
        return shopDao.getAllUserToShop();
    }

    @Override
    public List<ShopDto> getAllUserToShopPage(int limit, int page) {
        return shopDao.allUserToShopPage(limit,page);
    }
}

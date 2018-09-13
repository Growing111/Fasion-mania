package com.ly.service.impl;

import com.ly.dao.ShopDao;
import com.ly.entity.Shop;
import com.ly.entity.Type;
import com.ly.service.IShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

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

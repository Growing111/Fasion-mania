package com.ly.fashionmania.service.impl;

import com.ly.fashionmania.dao.OrdersDao;
import com.ly.fashionmania.entity.OrderDetail;
import com.ly.fashionmania.entity.Orders;
import com.ly.fashionmania.service.IOdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OdersServiceImpl implements IOdersService {

    @Autowired
    private OrdersDao ordersDao;

    @Override
    @Transactional
    public boolean addOrderAndOrdersDetail(Orders orders, OrderDetail orderDetail) {
        int res=ordersDao.addOrder(orders);
        orderDetail.setO_id(orders.getId());
        int result=ordersDao.addOrdersDetail(orderDetail);
        if(res>0&&result>0) {
            return true;
        }else {
            return false;
        }
    }

    @Override
    public int deleteOeder(int id) {
        return ordersDao.deleteOeder(id);
    }


}

package com.ly.service.impl;

import com.ly.dao.OrdersDao;
import com.ly.entity.OrderDetail;
import com.ly.entity.Orders;
import com.ly.service.IOdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OdersServiceImpl implements IOdersService{

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

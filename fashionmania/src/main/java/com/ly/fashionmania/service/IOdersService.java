package com.ly.fashionmania.service;


import com.ly.fashionmania.entity.OrderDetail;
import com.ly.fashionmania.entity.Orders;

public interface IOdersService{

    boolean addOrderAndOrdersDetail(Orders orders, OrderDetail orderDetail);

    int deleteOeder(int id);
}

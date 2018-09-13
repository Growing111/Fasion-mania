package com.ly.service;

import com.ly.entity.OrderDetail;
import com.ly.entity.Orders;

import java.sql.Timestamp;

public interface IOdersService{

    boolean addOrderAndOrdersDetail(Orders orders, OrderDetail orderDetail);

    int deleteOeder(int id);
}

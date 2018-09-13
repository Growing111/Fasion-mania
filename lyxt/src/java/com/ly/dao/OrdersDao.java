package com.ly.dao;

import com.ly.entity.OrderDetail;
import com.ly.entity.Orders;

import java.sql.Timestamp;

public interface OrdersDao {

    int addOrder(Orders orders);

//    int findIdByMakeTimp(int u_id,Timestamp maketimp);

    int addOrdersDetail(OrderDetail orderDetail);

    int deleteOeder(int id);
}

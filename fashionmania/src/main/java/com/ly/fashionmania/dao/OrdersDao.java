package com.ly.fashionmania.dao;

import com.ly.fashionmania.entity.OrderDetail;
import com.ly.fashionmania.entity.Orders;

public interface OrdersDao {

    int addOrder(Orders orders);

//    int findIdByMakeTimp(int u_id,Timestamp maketimp);

    int addOrdersDetail(OrderDetail orderDetail);

    int deleteOeder(int id);
}

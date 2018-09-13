package com.test;

import com.ly.dao.OrdersDao;
import com.ly.dao.ShopDao;
import com.ly.entity.OrderDetail;
import com.ly.entity.Orders;
import com.ly.entity.Shop;
import com.ly.service.IOdersService;
import com.ly.service.IShopService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

public class Dome1 {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext cs = new ClassPathXmlApplicationContext("bean.xml");
//        IOdersService odersService=cs.getBean(IOdersService.class);
//        Orders orders=new Orders();
//        orders.setU_id(1);
//        orders.setAddress("sadsa");
//        Timestamp timestamp=new Timestamp(System.currentTimeMillis());
//        orders.setMakeTime(timestamp);
//        OrderDetail orderDetail=new OrderDetail();
//        orderDetail.setO_id(orders.getId());
//        orderDetail.setS_id(1);
//        orderDetail.setCount(1);
//        boolean bo=odersService.addOrderAndOrdersDetail(orders,orderDetail);
//        System.out.println(bo);


//        IShopService bean = cs.getBean(IShopService.class);
//        List<Shop> allByOrder = bean.getAllByOrder(1);
//        System.out.println(allByOrder);
        IOdersService bean = cs.getBean(IOdersService.class);
        int s=bean.deleteOeder(5);
        System.out.println(s);
    }
}

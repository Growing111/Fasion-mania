package com.test;

import com.ly.entity.Admin;
import com.ly.entity.LiuYan;
import com.ly.entity.Shop;
import com.ly.entity.User;
import com.ly.service.IAdminService;
import com.ly.service.ILiuYanService;
import com.ly.service.IShopService;
import com.ly.service.IUserService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class test {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext cc = new ClassPathXmlApplicationContext("bean.xml");
        IShopService bean = cc.getBean(IShopService.class);
        List<Shop> allUserToShop = bean.getAllUserToShop();
        System.out.println(allUserToShop);
    }
}

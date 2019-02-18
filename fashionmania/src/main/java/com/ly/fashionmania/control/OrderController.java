package com.ly.fashionmania.control;



import com.ly.fashionmania.entity.OrderDetail;
import com.ly.fashionmania.entity.Orders;
import com.ly.fashionmania.entity.Parameter;
import com.ly.fashionmania.service.IOdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Timestamp;

@Controller
public class OrderController {

    @Autowired
    private IOdersService odersService;

    @RequestMapping("/dopay")
    public String addOrder(Model model, int u_id, String address, Parameter canShu, int count, int s_id, float price){
        Orders orders=new Orders();
        orders.setU_id(u_id);
        orders.setAddress(address);
        Timestamp timestamp=new Timestamp(System.currentTimeMillis());
        orders.setMakeTime(timestamp);
        OrderDetail orderDetail=new OrderDetail();
        orderDetail.setO_id(orders.getId());
        orderDetail.setCount(count);
        orderDetail.setS_id(s_id);
        orderDetail.setColor(canShu.getColor());
        orderDetail.setSize(canShu.getSize());
        boolean boolen=odersService.addOrderAndOrdersDetail(orders,orderDetail);
        String sid=String.valueOf(orders.getId());
        int of= (int) (price*count);
        //ModelAndView mv=new ModelAndView("alipay.trade.page.pay");
        model.addAttribute("WIDout_trade_no",sid);
        model.addAttribute("WIDtotal_amount",of);
        System.out.println(orders.getId()+";"+price);
        return "alipay.trade.page.pay";
    }

    @RequestMapping("/deleteOrder")
    @Transactional
    public ModelAndView deleteOeder(int o_id, int u_id){
        int res=odersService.deleteOeder(o_id);
        return new ModelAndView("redirect:findAllOrder?u_id="+u_id+"");
    }
}

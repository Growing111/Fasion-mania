package com.ly.control;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.ly.alipay.AlipayConfig;
import com.ly.entity.CanShu;
import com.ly.entity.OrderDetail;
import com.ly.entity.Orders;
import com.ly.service.IOdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;

@Controller
public class OrderController {

    @Autowired
    private IOdersService odersService;

    @RequestMapping("/dopay")
    public String addOrder(Model model,int u_id, String address, CanShu canShu, int count, int s_id, float price){
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

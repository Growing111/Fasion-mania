package com.ly.fashionmania.control;


import com.ly.fashionmania.entity.Shop;
import com.ly.fashionmania.entity.ShopDto;
import com.ly.fashionmania.entity.SimpleResponseDto;
import com.ly.fashionmania.entity.Type;
import com.ly.fashionmania.service.IShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ShopController {

    @Autowired
    private IShopService shopService;

    @RequestMapping("/allshop")
    @ResponseBody
    public List<Shop> list() {
        List<Shop> list = shopService.getAll();
        //System.out.println(list);
        return list;
    }

    @RequestMapping("/findshop")
    public String findByid(int id, Model model) {
        Shop shop = shopService.findById(id);
        model.addAttribute("shop", shop);
        //System.out.println(id+":"+shop);
        return "single";
    }

    @RequestMapping("/findAll")
    public String findAllByType(String sex, String leixing, Model model) {
        Type type = new Type();
        type.setSex(sex);
        type.setLeixing(leixing);
        //System.out.println(type);
        List<Shop> list = shopService.getAllByType(type);
        //System.out.println(list);
        model.addAttribute("lists", list);
        return "products";
    }

    @RequestMapping("/displaycar")
    public String findAllByCar(int u_id, Model model) {
        List<Shop> list = shopService.getAllByCar(u_id);
        model.addAttribute("list", list);
        return "checkout";
    }

    @RequestMapping("/dobuy")
    public String dobuy(int s_id, String color, String size, int count, Model model) {
        Shop shop = shopService.findById(s_id);
        shop.setColor(color);
        shop.setSize(size);
        shop.setCount(count);
        model.addAttribute("shop", shop);
        return "buy";
    }

    @RequestMapping("/findAllOrder")
    public String findAllOrder(int u_id, Model model) {
        List<Shop> list = shopService.getAllByOrder(u_id);
        model.addAttribute("order", list);
        return "order";
    }

    @RequestMapping("/inSearchOfshop")
    @ResponseBody
    public List<Shop> ShowAllShop(String condition) {
        List<Shop> list = shopService.inSearchOfshop(condition);
        //System.out.println(list);
        return list;
    }

    @RequestMapping("/showallshop")
    @ResponseBody
    public SimpleResponseDto doShowAllShop( @RequestParam(value="page", required=false,defaultValue="1") int  page,
                                            @RequestParam(value="limit", required=false,defaultValue="10") int  limit) {
        int first = (page-1)*limit;
        List<Shop> cout =shopService.ShowAllShop();
        List<Shop> list = shopService.ShowAllShopPage(limit,first);
        return new SimpleResponseDto<>(list,cout.size());
    }

    @RequestMapping("/getalllist")
    @ResponseBody
    public SimpleResponseDto getAllUserToShop(@RequestParam(value="page", required=false,defaultValue="1") int  page,
                                       @RequestParam(value="limit", required=false,defaultValue="10") int  limit) {
        List<ShopDto> count = shopService.getAllUserToShop();
        int first = (page-1)*limit;
        List<ShopDto> allUserToShop = shopService.getAllUserToShopPage(limit,first);
        return new SimpleResponseDto<>(allUserToShop,count.size());
    }
}

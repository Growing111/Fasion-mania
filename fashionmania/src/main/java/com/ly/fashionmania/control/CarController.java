package com.ly.fashionmania.control;

import com.ly.fashionmania.entity.CarDto;
import com.ly.fashionmania.service.ICarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CarController {

    @Autowired
    private ICarService carService;

    @RequestMapping("/addcar")
    public ModelAndView addCar(int u_id, int s_id, Model model) {
        List<CarDto> carDtos = carService.selectInfo(u_id, s_id);

        if (carDtos.isEmpty()) {
            int result = carService.addCar(u_id, s_id);
            return new ModelAndView("redirect:displaycar?u_id=" + u_id + "");
        } else {
            //修改
//
            model.addAttribute("title", "已加入购物车 ");
            return new ModelAndView("redirect:findshop?id=" + s_id + "");
            
        }
//        if(result>0){
//            System.out.println("ok");
//        }else {
//            System.out.println("error");
//        }

    }

    @RequestMapping("/deleteOne")
    public ModelAndView delete0ne(int u_id, int s_id) {
        int s = carService.deleteOne(u_id, s_id);
        return new ModelAndView("redirect:displaycar?u_id=" + u_id + "");
    }

}

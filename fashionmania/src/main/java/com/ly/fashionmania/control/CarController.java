package com.ly.fashionmania.control;

import com.ly.fashionmania.service.ICarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CarController {

    @Autowired
    private ICarService carService;

    @RequestMapping("/addcar")
    public ModelAndView addCar(int u_id, int s_id){
        int result=carService.addCar(u_id,s_id);
//        if(result>0){
//            System.out.println("ok");
//        }else {
//            System.out.println("error");
//        }
        return new ModelAndView("redirect:displaycar?u_id="+u_id+"");
    }

    @RequestMapping("/deleteOne")
    public ModelAndView delete0ne(int u_id, int s_id){
        int s=carService.deleteOne(u_id,s_id);
        return new ModelAndView("redirect:displaycar?u_id="+u_id+"");
    }

}

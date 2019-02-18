package com.ly.fashionmania.control;



import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseControl {

    @RequestMapping("Hello")
    public String test(ModelMap modelMap){

        return "account";
    }

}

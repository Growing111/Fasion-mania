package com.ly.fashionmania.control;



import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseControl {

    @RequestMapping("gotoAccount")
    public String Account(ModelMap modelMap){
        return "account";
    }

    @RequestMapping("gotoIndex")
    public String Index(){
        return "index";
    }

    @RequestMapping("gotoRegister")
    public String Register(ModelMap modelMap){
        return "register";
    }
}

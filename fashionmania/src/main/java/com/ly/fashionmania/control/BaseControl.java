package com.ly.fashionmania.control;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseControl {

    @RequestMapping("gotoAccount")
    public String Account() {
        return "account";
    }

    @RequestMapping("gotoIndex")
    public String Index() {
        return "index";
    }

    @RequestMapping("gotoRegister")
    public String Register() {
        return "register";
    }

    @RequestMapping("gotoContact")
    public String Contact() {
        return "contact";
    }

    @RequestMapping("adminLogin")
    public String admin() {
        return "admin/index";
    }
    @RequestMapping("gotoMain")
    public String gotoAdminMain(){
        return "admin/main";
    }

    @RequestMapping("gotoAllShop")
    public String gotoAllShop(){
        return "admin/allshop";
    }
    @RequestMapping("gotoAllUser")
    public String gotoAllUser(){
        return "admin/alluser";
    }
    @RequestMapping("gotoAllOrder")
    public String gotoAllOrder(){
        return "admin/allorder";
    }
    @RequestMapping("gotoAllLiuyan")
    public String gotoAllLiuyan(){
        return "admin/allliuyan";
    }
    @RequestMapping("gotoTest")
    public String gotoTest(){
        return "admin/shopview";
    }
}

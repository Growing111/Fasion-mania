package com.ly.control;

import com.ly.entity.Admin;
import com.ly.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class AdminController {

    @Autowired
    private IAdminService adminService;
    @RequestMapping("/LoginServlet")
    @ResponseBody
    public String AdminLogin(String username, String password, HttpSession session){
        Admin admin=new Admin();
        admin.setUsername(username);
        admin.setPassword(password);
        Admin byAdmin = adminService.findByAdmin(admin);
        if(byAdmin!=null){
            session.setAttribute("admin",byAdmin);
            return "ok";
        }else {
            return  "error";
        }
    }
}

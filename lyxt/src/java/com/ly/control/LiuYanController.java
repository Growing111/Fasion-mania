package com.ly.control;

import com.ly.entity.LiuYan;
import com.ly.entity.User;
import com.ly.service.ILiuYanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class LiuYanController {

    @Autowired
    private ILiuYanService liuYanService;

    @RequestMapping("/addliuyan")
    @ResponseBody
    public String addliuyan(LiuYan liuYan,int u_id){
        System.out.println(u_id);
        System.out.println(liuYan);
        User user=new User();
        user.setId(u_id);
        liuYan.setUser(user);
        int s=liuYanService.addLiuYan(liuYan);
        if(s>0) {
            return "ok";
        }else {
            return "error";
        }
    }

    @RequestMapping("/findAllLiuyan")
    @ResponseBody
    public List<LiuYan> findAllLiuyan(){
        List<LiuYan> allLiuyan = liuYanService.findAllLiuyan();
        return allLiuyan;
    }
}

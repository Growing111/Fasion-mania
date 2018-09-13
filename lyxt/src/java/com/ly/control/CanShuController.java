package com.ly.control;

import com.ly.entity.CanShu;
import com.ly.service.ICanShuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

@Controller
public class CanShuController {

    @Autowired
    private ICanShuService canShuService;

    @RequestMapping(value = "/getcanshu",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String getAllByS_id(int s_id, ModelMap model){
        List<CanShu> canshulist=canShuService.getAllByS_id(s_id);
        String result="";
        String color="";
        String size="";
        for(int i=0;i<canshulist.size();i++){
            CanShu canShu=canshulist.get(i);
            if(!color.contains(canShu.getColor())){
                color+=canShu.getColor()+",";
            }
            if(!size.contains(canShu.getSize())){
                size+=canShu.getSize()+",";
            }
        }
        result=color+";"+size;
        //System.out.println(result);
        return result;
    }
}

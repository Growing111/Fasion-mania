package com.ly.fashionmania.control;


import com.ly.fashionmania.entity.Comment;
import com.ly.fashionmania.entity.SimpleResponseDto;
import com.ly.fashionmania.entity.User;
import com.ly.fashionmania.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class LiuYanController {

    @Autowired
    private ICommentService commentService;

    @RequestMapping("/addliuyan")
    @ResponseBody
    public String addliuyan(Comment liuYan, int u_id) {
        System.out.println(u_id);
        System.out.println(liuYan);
        User user = new User();
        user.setId(u_id);
        liuYan.setUser(user);
        int s = commentService.addLiuYan(liuYan);
        if (s > 0) {
            return "ok";
        } else {
            return "error";
        }
    }

    @RequestMapping("/findAllLiuyan")
    @ResponseBody
    public SimpleResponseDto findAllLiuyan(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                           @RequestParam(value = "limit", required = false, defaultValue = "10") int limit) {
        List<Comment> count = commentService.findAllLiuyan();
        int first = (page-1)*limit;
        List<Comment> allLiuyan = commentService.findAllLiuyanPage(limit, first);
        return new SimpleResponseDto<>(allLiuyan, count.size());
    }
}

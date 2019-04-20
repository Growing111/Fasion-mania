package com.ly.fashionmania.control;

import com.ly.fashionmania.entity.SimpleResponseDto;
import com.ly.fashionmania.entity.User;
import com.ly.fashionmania.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
//@SessionAttributes("user")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/list")
    @ResponseBody
    public SimpleResponseDto getUsers(@RequestParam(value="page", required=false,defaultValue="1") int  page,
                               @RequestParam(value="limit", required=false,defaultValue="10") int  limit) {
        List<User> users = userService.getUsers();
        int first = limit* (page-1);
        List<User> list = userService.getUsersPage(limit,first);
        System.out.println(list);
        return new SimpleResponseDto<>(list,users.size());
    }

    @RequestMapping("/exit")
    public ModelAndView exit(HttpServletRequest request) {
//    	model.addAttribute("user","");
        HttpSession session = request.getSession();
        session.setAttribute("user", null);
        return new ModelAndView("redirect:/index");
    }


    @RequestMapping("/add")
    public String adduser(User user, ModelMap model) {
        System.out.println(user);
        model.addAttribute("user", user);
        int s = userService.addUser(user);
        System.out.println(s);
        return "index";
    }

    @RequestMapping("/login")
    @ResponseBody
    public String login(HttpServletRequest request, ModelMap model) {
        User user = new User();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        user.setEmail(email);
        user.setPassword(password);
        User user1 = userService.findUser(user);
        System.out.println(user1);
        if (user1 != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user1);
//            model.addAttribute("user", user1);
            return "ok";
        } else {
            return "error";
        }
    }

    @RequestMapping("/index")
    public String index(Model model) {
        return "index";
    }

    @RequestMapping("delete")
    @ResponseBody
    public String deleteUserById(Integer id) {
        return userService.deleteUserById(id) > 0 ? "ok" : "error";
    }

    @RequestMapping("/checkname")
    @ResponseBody
    public String getUserByName(String nickname) {
        User user = userService.getUserByName(nickname);
        if (user != null) {
            return "exist";
        } else {
            return "ok";
        }
    }

    @RequestMapping("/checkemail")
    @ResponseBody
    public String getUserByEmail(String email) {
        User user = userService.getUserByEmail(email);
        //	System.out.println(user);
        if (user != null) {
            return "exist";
        } else {
            return "ok";
        }
    }

    @RequestMapping("/update")
    @ResponseBody
    public String updateUser(@ModelAttribute User user) {
        return userService.updateUser(user) > 0 ? "ok" : "error";
    }
}

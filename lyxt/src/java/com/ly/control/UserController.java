package com.ly.control;

import java.util.List;

import com.ly.entity.User;
import com.ly.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@SessionAttributes("user")
public class UserController {

	@Autowired
	private IUserService userService;
    
    @RequestMapping("/list")
	@ResponseBody
    public List<User> getUsers(){
     	List<User> list=userService.getUsers();
		System.out.println(list);
		return list;
    }

    @RequestMapping("/exit")
	public ModelAndView exit(ModelMap model, SessionStatus sessionStatus){
//    	model.addAttribute("user","");
		sessionStatus.setComplete();
		return new ModelAndView("redirect:/index");
	}


	@RequestMapping("/add")
	public String adduser(User user,ModelMap model){
		System.out.println(user);
		model.addAttribute("user",user);
		int s=userService.addUser(user);
		System.out.println(s);
		return "index";
	}

	@RequestMapping("/login")
	@ResponseBody
	public String login(String email,String password,ModelMap model){
		User user=new User();
		user.setEmail(email);
		user.setPassword(password);
		User user1=userService.findUser(user);
		if(user1!=null){
			model.addAttribute("user",user1);
			return "ok";
		}else {
			return "error";
		}
	}

	@RequestMapping("/index")
	public String index(Model model){
		return "index";
	}

    @RequestMapping("delete")
	@ResponseBody
	public String deleteUserById(Integer id) {
    	return userService.deleteUserById(id)>0?"ok":"error";
	}

    @RequestMapping("/checkname")
	@ResponseBody
	public String getUserByName(String nickname) {
		User user=userService.getUserByName(nickname);
		if(user!=null){
			return "exist";
		}else{
			return "ok";
		}
	}

	@RequestMapping("/checkemail")
	@ResponseBody
	public String getUserByEmail(String email) {
		User user=userService.getUserByEmail(email);
		//	System.out.println(user);
		if(user!=null){
			return "exist";
		}else{
			return "ok";
		}
	}

	@RequestMapping("/update")
	@ResponseBody
	public String updateUser(@ModelAttribute User user) {
		return userService.updateUser(user)>0?"ok":"error";
	}
}

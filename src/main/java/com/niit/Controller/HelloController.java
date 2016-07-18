package com.niit.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.Dao.LoginDao;

@Controller
public class HelloController {
	@Autowired
	private LoginDao loginDao;
	@RequestMapping({"/","/index"})
	public String home(){
		return "index";
	}
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	@RequestMapping(value = "/loginSuccess", method = RequestMethod.POST)
	public String success(@RequestParam("email") String email, @RequestParam("password") String password) {
		
		boolean value = loginDao.isValidLogin(email, password);
		if (value == true) {
			return "loginSuccess";
		}

		else {

			return "error";
		}
	}
}

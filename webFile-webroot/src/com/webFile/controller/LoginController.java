package com.webFile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webFile.business.object.User;
import com.webFile.enums.UserState;
import com.webFile.user.services.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {

	private UserService userService;
	
	@RequestMapping("addUser")
	public void addUser(){
		User user = new User();
		user.setUserName("name");
		user.setPassword("123456");
		user.setUserState(UserState.ACTIVE);
		userService.addUser(user);
	}
	
}

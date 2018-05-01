package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String homePage()
	{
		return "index";
	} 
	
	@RequestMapping("/login")	// /login.... /login?error(invalid credentials)..... /login?logout(successful logout)
	public String login(@RequestParam(value="error", required = false) String error, 
    @RequestParam(value="logout", required = false) String logout, Model model)
	{
		if(error != null)
		{ 
			model.addAttribute("error", "Invalid username and password"); 
		}  
		if (logout != null)
		{ 
			model.addAttribute("msg", "You have been logged out successfully"); 
		}  
			return "login";  
	}

	@RequestMapping("/signup")
	public String signup()
	{
		return "signup"; 
	}
	
	
}

package com.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Expense;
import com.entity.Users;
import com.service.ExpenseService;
import com.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	
	
	@Autowired
	ExpenseService expenseservice;
	@Autowired
     UserService userservice;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/index")
	public String dashboard(Model model, Principal principal) {
		model.addAttribute("title", "User Dashboard");
		return "home";
	}
}

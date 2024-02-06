package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Expense;
import com.entity.Users;
import com.service.ExpenseService;
import com.service.UserService;
@Controller
public class MasterController {

	
	@Autowired
	ExpenseService expenseservice;
	@Autowired
     UserService userservice;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
//	@RequestMapping("/")
//	public ModelAndView home()
//	{
//		ModelAndView mv=new ModelAndView("home");
//		mv.addObject("message","List Of Expenses : ");
//		List<Expense> expenses=expenseservice.findAll();
//		System.out.println(expenses);
//		mv.addObject("expenses", expenses);
//		return mv;
//	}
	
	@RequestMapping("/")
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView("base");
		return mv;
	}
	
	@GetMapping("/signin")
	public String customLogin(Model model)
	{
		System.out.println("Inside customLogin Method ");
		model.addAttribute("title","Login Page");
		return "indexx";
	}
	
	
	@GetMapping("/dologin")
	public String doLogin(Model model)
	{
		model.addAttribute("title","Login Page");
		return "indexx";
	}
	
	
	
	@RequestMapping("/sign")
	public ModelAndView signup(Model model)
	{
        model.addAttribute("users", new Users());
		ModelAndView mv=new ModelAndView("signup");
		return mv;
	}
	

	
//	@RequestMapping(value="/process_register",method=RequestMethod.POST)
//	public String registerUser(@ModelAttribute("users")Users users)
//	{
//		System.out.println("Inside register user method ");
//		System.out.println("Username is : "+users.getUname());
//		System.out.println("Password is : "+users.getPassword());
//		Users user=new Users();
//		user.setEmail_id(users.getEmail_id());
//		user.setPhone_no(users.getPhone_no());
//		user.setUname(users.getUname());
//		user.setRole("USER");
//	    user.setPassword(passwordEncoder.encode(users.getPassword()));
//		userservice.save(user);
//		return "redirect:/";
//	}
	



	
	@RequestMapping("user/expense")
	public ModelAndView addExpense()
	{
	ModelAndView mv=new ModelAndView("expense");
	mv.addObject("expense",new Expense());
	return mv;
	}
	

	
	
	
	
	@RequestMapping(value="/expense",method=RequestMethod.POST)
	public String save(@ModelAttribute("expense")Expense expense)
	{
		System.out.println("Inside save method");
		expenseservice.save(expense);
		return "redirect:/";
	}
	
	@RequestMapping(value="/expense/{id}")
	public ModelAndView edit(@PathVariable("id") long id)
	{
		ModelAndView mv=new ModelAndView("expense");
		Expense expense=expenseservice.findById(id);
		mv.addObject("expense", expense);
		return mv;

	}
	
	@RequestMapping(value="/expense/{id}/delete")
	public String delete(@PathVariable("id") long id)
	{
		expenseservice.delete(id);
		return "redirect:/";

		
	}
	
}

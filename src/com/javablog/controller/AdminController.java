package com.javablog.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javablog.model.domain.Admin;
import com.javablog.model.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/")
	public String goMain(HttpServletRequest request) {
		System.out.println("AdminController>> goMain Á¢¼Ó"); 
		return "index";
	}
	
	@RequestMapping(value="/admin/login")
	public String login() {
		return "Javablog/login";
	}
	
	@RequestMapping(value="/admin/logout")
	public String logout() {
		return "Javablog/logout";
	}
	
}

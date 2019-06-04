package com.javablog.cotroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javablog.model.service.AdminServiceImpl;

@Controller
public class AdminController {
	
	@Autowired
	private AdminServiceImpl adminImpl;
	
	@RequestMapping(value="/main")
	public String goMain(HttpServletRequest request) {
		System.out.println("AdminController>> goMain Á¢¼Ó"); 
		return "redirect: /index.jsp";
	}
	
	@RequestMapping(value="/admin/logout")
	public String logout() {
		return "javablog/logout";
	}
}

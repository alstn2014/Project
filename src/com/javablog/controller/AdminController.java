package com.javablog.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javablog.model.domain.Admin;
import com.javablog.model.service.AdminService;
import com.javablog.model.service.BoardService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/")
	public String goMain(HttpServletRequest request) {
		System.out.println("AdminController>> goMain Á¢¼Ó"); 
		List boardList=boardService.selectAll();
		request.getSession().setAttribute("boardList", boardList);
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

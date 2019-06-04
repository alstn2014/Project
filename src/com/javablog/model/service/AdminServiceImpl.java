package com.javablog.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javablog.model.domain.Admin;
import com.javablog.model.repository.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
 	private AdminDAO adminDAO;

	public Admin login(Admin admin) {
		Admin adminResult = adminDAO.login(admin);
		return adminResult;
	}

}

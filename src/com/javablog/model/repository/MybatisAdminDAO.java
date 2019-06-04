package com.javablog.model.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javablog.model.domain.Admin;

@Repository
public class MybatisAdminDAO implements AdminDAO{

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	public Admin login(Admin admin) {
		Admin adminResult = sessionTemplate.selectOne("Admin.login", admin);
		return adminResult;
	}

}

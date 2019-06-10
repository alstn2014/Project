package com.javablog.model.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javablog.model.domain.Write;

@Repository
public class MybatisWriteDAO {
	
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	public int insert(Write write) {
		return sessionTemplate.insert("Write.insert", write);
	}
	
}

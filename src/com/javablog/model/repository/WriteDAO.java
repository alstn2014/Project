package com.javablog.model.repository;

import com.javablog.model.domain.Write;

public interface WriteDAO {
	public int insert(Write write);
	public int update(Write write);
	public int delete(int board_id);
}

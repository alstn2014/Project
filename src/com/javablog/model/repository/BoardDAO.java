package com.javablog.model.repository;

import java.util.List;

import com.javablog.model.domain.Board;

public interface BoardDAO {
	public List selectAll();
	public Board select(int board_id);
	public int insert(Board write);
	public int update(Board write);
	public int delete(int board_id);
	
}

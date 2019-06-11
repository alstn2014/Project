package com.javablog.model.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javablog.model.domain.Board;

@Repository
public class MybatisBoardDAO implements BoardDAO{
	
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	public int insert(Board board) {
		System.out.println("글 등록 dao 호출"+board.getBoard_id());
		return sessionTemplate.insert("Board.insert", board);
	}
	
	public List<Board> selectAll(){
		return sessionTemplate.selectList("Board.selectAll");
	}
	
	public Board select(int board_id) {
		return sessionTemplate.selectOne("Board.select", board_id);
	}
	
	public int update(Board board) {
		return sessionTemplate.update("Board.update", board);
	}
	
	public int delete(int board_id) {
		return sessionTemplate.delete("Board.delete", board_id);
	}
	
}

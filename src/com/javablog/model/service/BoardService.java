package com.javablog.model.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.javablog.model.domain.Board;


public interface BoardService {
   
   public void insert(Board board);
   public List selectAll();
   public Board select(int board_id);
   public void update(Board board);
   public void delete(int board_id);
}
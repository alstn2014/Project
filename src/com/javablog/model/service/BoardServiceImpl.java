package com.javablog.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javablog.exception.DeleteFailException;
import com.javablog.exception.EditFailException;
import com.javablog.exception.RegistFailException;
import com.javablog.model.domain.Board;
import com.javablog.model.repository.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
   
   @Autowired
   private BoardDAO boardDAO;
 
   // 관리자 : 게시물 한건 등록하기
   public void insert(Board board) throws RegistFailException{ 
         int result=boardDAO.insert(board);
        if(result==0 ) { 
         throw new RegistFailException("게시물 등록 실패");
      }
   }

   // 관리자: 게시물 수정
      public void update(Board board) throws EditFailException{
         int result=boardDAO.update(board);
         if(result==0 ) {
            throw new EditFailException("게시물 수정 실패");
         }
      }
   
   // 관리자: 게시물 삭제
      public void delete(int board_id) throws DeleteFailException{
		int result=boardDAO.delete(board_id);
		if(result==0) {
		  throw new DeleteFailException("삭제 실패");
		}
      }
   
   // 관리자: 게시물 목록 보기
   public List selectAll() {
      return boardDAO.selectAll();
   }
   
   // 관리자: 입양 게시물 1건 상세보기
   public Board select(int board_id) {
      return boardDAO.select(board_id);
   }
   
}
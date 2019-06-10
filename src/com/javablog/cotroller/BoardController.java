package com.javablog.cotroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javablog.model.domain.Board;
import com.javablog.model.service.BoardService;

@Controller
public class BoardController{

   @Autowired
   private BoardService boardService;
 
 //게시물 목록보기
   @RequestMapping(value="/admin/board/list", method=RequestMethod.GET)
   public ModelAndView showBoardList() {
      List boardList=boardService.selectAll();
      ModelAndView mav=new ModelAndView();
      mav.setViewName("admin/board/list");
      mav.addObject("boardList", boardList);
      return mav;
   }      

    //게시물 1건 상세보기
   @RequestMapping(value="/admin/board/detail", method=RequestMethod.GET)
   public ModelAndView detail(int board_id) {
      Board board=boardService.select(board_id);
      ModelAndView mav=new ModelAndView();
      mav.setViewName("admin/board/detail");
      mav.addObject("board", board);
      return mav;
   }      
   //게시물 수정
   @RequestMapping(value="/admin/board/edit", method=RequestMethod.POST)
   public ModelAndView edit(Board board) {
      boardService.update(board);
      ModelAndView mav=new ModelAndView();
      mav.setViewName("admin/board/detail");
      mav.addObject("board", board);
      return mav;
   }
   //게시물 삭제
   @RequestMapping(value="/admin/board/delete", method=RequestMethod.GET)
   public String del(int board_id) {
      boardService.delete(board_id);
      return "redirect:/admin/board/list";
   }
   
  //게시물 작성
   @RequestMapping(value="/admin/board/regist", method=RequestMethod.POST)
   public String regist(Board board) {
      boardService.insert(board);
     return "redirect:/admin/board/list";
   }

}
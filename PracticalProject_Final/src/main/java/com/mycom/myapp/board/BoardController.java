package com.mycom.myapp.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/board/majorlist", method = RequestMethod.GET)
	public String majorBoardlist() {
		return "index";
	}
	
	@RequestMapping(value = "/board/addlist", method = RequestMethod.GET)
	public String addlist() {
		return "board/board-template";
	}
	
	@RequestMapping(value = "/board/list/{category}", method = RequestMethod.GET)
	public String boardlist(@PathVariable("category") int category, Model model) {
		model.addAttribute("list", boardService.getBoardList(category));
		if(category==0)
			return "home";
		if(category==1)
			return "home";
		return "home";
	}
	
	@RequestMapping(value = "/board/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value = "/board/addok", method = RequestMethod.POST)
	public String addPostOK(BoardVO vo) {
		int i = boardService.insertBoard(vo);
		if(i == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 완료!!!");
		return "redirect:addlist";
	}
	
	@RequestMapping(value = "/board/editpost/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("boardVO", boardVO);
		return "editform";
	}
	
	@RequestMapping(value = "/board/editok", method = RequestMethod.POST)
	public String editPostOK(BoardVO vo) {
		int i = boardService.updateBoard(vo);
		if(i == 0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 완료!!!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/board/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = boardService.deleteBoard(id);
		if(i == 0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공!!!");
		return "redirect:../list";
	}
}
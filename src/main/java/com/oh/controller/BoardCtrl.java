package com.oh.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.oh.dto.BoardDTO;
import com.oh.dto.SearchDTO;
import com.oh.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardCtrl {
	@Autowired
	BoardService bs;
	
	@GetMapping("list")
	public String boardList(SearchDTO sdto, Model model) throws Exception{
		List<BoardDTO> boardList = new ArrayList<BoardDTO>();
		if(sdto != null) {
			boardList = bs.boardList(sdto);
		}else {
			boardList = bs.boardList();
		}
		model.addAttribute("boardList", boardList);
		return "/board/boardList";
	}
	
	@GetMapping("view")
	public String view(@RequestParam int bno, Model model) throws Exception {
		BoardDTO board = bs.boardView(bno);
		model.addAttribute("board", board);
		return "/board/view";
	}
	
	@GetMapping("writeForm")
	public String writeForm() {
		return "/board/writeForm";
	}
	
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(BoardDTO bdto, Model model) throws Exception {
		bs.boardAdd(bdto);
		return "redirect:/board/list";
	}
	
	@GetMapping("updateForm")
	public String updateForm(@RequestParam int bno, Model model) throws Exception {
		BoardDTO board = bs.boardView(bno);
		model.addAttribute("board", board);
		return "/board/updateForm";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(BoardDTO bdto, Model model) throws Exception {
		bs.boardUpdate(bdto);
		int bno = bdto.getBno();
		return "redirect:/board/list";
	}
	
	@GetMapping("delete")
	public String delete(int bno, Model model) throws Exception {
		bs.boardDelete(bno);
		return "redirect:/board/list";
	}
}

package com.oh.service;

import java.util.List;

import com.oh.dto.BoardDTO;
import com.oh.dto.SearchDTO;

public interface BoardService {
	//글목록
		public List<BoardDTO> boardList() throws Exception;
		public List<BoardDTO> boardList(SearchDTO sdto) throws Exception;
		//글상세
		public BoardDTO boardView(int bno) throws Exception;
		//글작성
		public void boardAdd(BoardDTO bdto) throws Exception;
		//글수정
		public void boardUpdate(BoardDTO bdto) throws Exception;
		//글삭제
		public void boardDelete(int bno) throws Exception;

}

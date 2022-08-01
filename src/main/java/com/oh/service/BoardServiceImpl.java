package com.oh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oh.dao.BoardDAO;
import com.oh.dto.BoardDTO;
import com.oh.dto.SearchDTO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardDAO boardDao;
	
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return boardDao.boardList();
	}

	@Override
	public List<BoardDTO> boardList(SearchDTO sdto) throws Exception {
		return boardDao.boardList(sdto);
	}

	@Override
	public BoardDTO boardView(int bno) throws Exception {
		return boardDao.boardView(bno);
	}

	@Override
	public void boardAdd(BoardDTO bdto) throws Exception {
		boardDao.boardAdd(bdto);
		
	}

	@Override
	public void boardUpdate(BoardDTO bdto) throws Exception {
		boardDao.boardUpdate(bdto);
		
	}

	@Override
	public void boardDelete(int bno) throws Exception {
		boardDao.boardDelete(bno);
		
	}

}

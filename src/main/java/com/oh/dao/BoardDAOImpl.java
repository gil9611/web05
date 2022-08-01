package com.oh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oh.dto.BoardDTO;
import com.oh.dto.SearchDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	@Override
	public List<BoardDTO> boardList(SearchDTO sdto) throws Exception {
		return sqlSession.selectList("board.boardList", sdto);
	}

	@Override
	public BoardDTO boardView(int bno) throws Exception {
		return sqlSession.selectOne("board.boardView", bno);
	}

	@Override
	public void boardAdd(BoardDTO bdto) throws Exception {
		sqlSession.insert("board.boardAdd", bdto);
		
	}

	@Override
	public void boardUpdate(BoardDTO bdto) throws Exception {
		sqlSession.update("board.boardUpdate", bdto);
		
	}

	@Override
	public void boardDelete(int bno) throws Exception {
		sqlSession.delete("board.boardDelete", bno);
		
	}

}

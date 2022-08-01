package com.oh.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oh.dto.MemberDTO;
import com.oh.dto.SearchDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.memberList");
	}

	@Override
	public MemberDTO memberView(SearchDTO sdto) throws Exception {
		return sqlSession.selectOne("member.memberView", sdto);
	}

	@Override
	public void memberAdd(MemberDTO mdto) throws Exception {
		sqlSession.insert("member.memberAdd", mdto);
	}

	@Override
	public void memberUpdate(MemberDTO mdto) throws Exception {
		sqlSession.update("member.memberUpdate", mdto);
		
	}

	@Override
	public void memberDelete(String mid) throws Exception {
		sqlSession.delete("member.memberDelete", mid);
		
	}

	@Override
	public MemberDTO memberLogin(String mid, String mpw) throws Exception {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("mid", mid);
		map.put("mpw", mpw);
		return sqlSession.selectOne("member.memberLogin", map);
	}

	@Override
	public MemberDTO memberLoginId(String mid) throws Exception {
		return sqlSession.selectOne("member.memberLoginId", mid);
	}

}

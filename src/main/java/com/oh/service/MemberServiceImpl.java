package com.oh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oh.dao.MemberDAO;
import com.oh.dto.MemberDTO;
import com.oh.dto.SearchDTO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO memberDao;
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	@Override
	public MemberDTO memberView(SearchDTO sdto) throws Exception {
		return memberDao.memberView(sdto);
	}

	@Override
	public void memberAdd(MemberDTO mdto) throws Exception {
		memberDao.memberAdd(mdto);
		
	}

	@Override
	public void memberUpdate(MemberDTO mdto) throws Exception {
		memberDao.memberUpdate(mdto);
	}

	@Override
	public void memberDelete(String mid) throws Exception {
		memberDao.memberDelete(mid);
		
	}

	@Override
	public MemberDTO memberLogin(String mid, String mpw) throws Exception {
		return memberDao.memberLogin(mid, mpw);
	}

	@Override
	public MemberDTO memberLoginId(String mid) throws Exception {
		return memberDao.memberLoginId(mid);
	}

	@Override
	public boolean memberLoginTest(String mid, String mpw) {
		/*
		if(mid.equals("admin")&&mpw.equals("1234")) {
			return true;
		} else {
			return false;
		}	*/
		return true;
	}
	

}

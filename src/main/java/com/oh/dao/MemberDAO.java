package com.oh.dao;

import java.util.List;

import com.oh.dto.MemberDTO;
import com.oh.dto.SearchDTO;


public interface MemberDAO {
	//멤버 목록
	public List<MemberDTO> memberList() throws Exception;
	//멤버 상세
	public MemberDTO memberView(SearchDTO sdto) throws Exception;
	//멤버추가
	public void memberAdd(MemberDTO mdto) throws Exception;
	//멤버 업데이트
	public void memberUpdate(MemberDTO mdto) throws Exception;
	//멤버 삭제
	public void memberDelete(String mid) throws Exception;
	//로그인
	public MemberDTO memberLogin(String mid, String mpw) throws Exception;
	//로그인 아이디체크
	public MemberDTO memberLoginId(String mid) throws Exception;
}

package com.oh.service;

import java.util.List;

import com.oh.dto.BasketDTO;

public interface BasketService {
	//바구니리스트
	public List<BasketDTO> basketList(String mid) throws Exception;
	//바구니서치
	public BasketDTO basketSerch(int bno) throws Exception;
	//바구니추가
	public void basketAdd(BasketDTO bdto) throws Exception;
	//바구니수정
	public void basketUpdate(BasketDTO bdto) throws Exception;
	//바구니삭제
	public void basketDelete(int bno) throws Exception;
}

package com.oh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oh.dao.BasketDAO;
import com.oh.dto.BasketDTO;

@Service
public class BasketServiceImpl implements BasketService {

	@Autowired
	BasketDAO bdao;
	
	@Override
	public List<BasketDTO> basketList(String mid) throws Exception {
		return bdao.basketList(mid);
	}

	@Override
	public void basketAdd(BasketDTO bdto) throws Exception {
		bdao.basketAdd(bdto);
		
	}

	@Override
	public void basketUpdate(BasketDTO bdto) throws Exception {
		bdao.basketUpdate(bdto);
		
	}

	@Override
	public void basketDelete(int bno) throws Exception {
		bdao.basketDelete(bno);
		
	}

	@Override
	public BasketDTO basketSerch(int bno) throws Exception {
		return bdao.basketSerch(bno);
	}
	
}

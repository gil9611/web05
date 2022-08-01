package com.oh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oh.dto.BasketDTO;

@Repository
public class BasketDAOImpl implements BasketDAO{

	@Autowired
	SqlSession sql;
	
	@Override
	public List<BasketDTO> basketList(String mid) throws Exception {
		return sql.selectList("basket.basketList", mid);
	}

	@Override
	public void basketAdd(BasketDTO bdto) throws Exception {
		sql.insert("basket.basketAdd", bdto);
		
	}

	@Override
	public void basketUpdate(BasketDTO bdto) throws Exception {
		sql.update("basket.basketUpdate", bdto);
		
	}

	@Override
	public void basketDelete(int bno) throws Exception {
		sql.delete("basket.basketDelete", bno);
		
	}

	@Override
	public BasketDTO basketSerch(int bno) throws Exception {
		return sql.selectOne("basket.basketSerch", bno);
	}

}

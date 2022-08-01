package com.oh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oh.dto.CategoryCodeDTO;

@Repository
public class CategoryCodeDAOImpl implements CategoryCodeDAO {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<CategoryCodeDTO> ccList(String code) throws Exception {
		return sql.selectList("categoryCode.search", code);
	}

}

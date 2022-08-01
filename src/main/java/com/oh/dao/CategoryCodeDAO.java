package com.oh.dao;

import java.util.List;

import com.oh.dto.CategoryCodeDTO;

public interface CategoryCodeDAO {
	//카테고리코드 목록
	public List<CategoryCodeDTO> ccList(String code) throws Exception;
	//추가
}

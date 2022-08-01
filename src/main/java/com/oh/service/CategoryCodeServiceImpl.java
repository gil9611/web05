package com.oh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oh.dao.CategoryCodeDAO;
import com.oh.dto.CategoryCodeDTO;

@Service
public class CategoryCodeServiceImpl implements CategoryCodeService{

	@Autowired
	CategoryCodeDAO ccdao;
	
	@Override
	public List<CategoryCodeDTO> ccList(String code) throws Exception {
		return ccdao.ccList(code);
	}

}

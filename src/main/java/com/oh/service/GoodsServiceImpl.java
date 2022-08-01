package com.oh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oh.dao.GoodsDAO;
import com.oh.dto.GoodsDTO;
import com.oh.dto.SearchDTO;
import com.oh.util.PageMaker;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	GoodsDAO gdao;
	
	@Override
	public List<GoodsDTO> goodsList(SearchDTO sdto) throws Exception {
		return gdao.goodsList(sdto);
	}
	
	@Override
	public List<GoodsDTO> goodsPageList(PageMaker page) throws Exception {
		return gdao.goodsPageList(page);
	}

	@Override
	public GoodsDTO goodsView(String gcode) throws Exception {
		return gdao.goodsView(gcode);
	}

	@Override
	public void goodsAdd(GoodsDTO gdto) throws Exception {
		gdao.goodsAdd(gdto);
		
	}

	@Override
	public void goodsUpdate(GoodsDTO gdto) throws Exception {
		gdao.goodsUpdate(gdto);
		
	}

	@Override
	public void goodsDelete(String gcode) throws Exception {
		gdao.goodsDelete(gcode);
		
	}

	@Override
	public int goodsCount(SearchDTO sdto) throws Exception {
		return gdao.goodsCount(sdto);
	}
	

}

package com.oh.dao;

import java.util.List;

import com.oh.dto.GoodsDTO;
import com.oh.dto.SearchDTO;
import com.oh.util.PageMaker;

public interface GoodsDAO {
	//상품목록
	public List<GoodsDTO> goodsList(SearchDTO sdto) throws Exception;
	public List<GoodsDTO> goodsPageList(PageMaker page) throws Exception;
	//상품상세
	public GoodsDTO goodsView(String gcode) throws Exception;
	//상품등록
	public void goodsAdd(GoodsDTO gdto) throws Exception;
	//상품수정
	public void goodsUpdate(GoodsDTO gdto) throws Exception;
	//상품삭제
	public void goodsDelete (String gcode) throws Exception;
	//상품갯수
	public int goodsCount(SearchDTO sdto) throws Exception;
}

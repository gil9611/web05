package com.oh.dao;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oh.dto.CategoryCodeDTO;
import com.oh.dto.GoodsDTO;
import com.oh.dto.SearchDTO;
import com.oh.util.PageMaker;

@Repository
public class GoodsDAOImpl implements GoodsDAO {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<GoodsDTO> goodsList(SearchDTO sdto) throws Exception {
		return sql.selectList("goods.goodsList", sdto);
	}

	@Override
	public List<GoodsDTO> goodsPageList(PageMaker page) throws Exception {
		return sql.selectList("goods.goodsPageList", page);
	}
	
	@Override
	public GoodsDTO goodsView(String gcode) throws Exception {
		return sql.selectOne("goods.goodsView", gcode);
	}

	@Override
	public void goodsAdd(GoodsDTO gdto) throws Exception {
		sql.insert("goods.goodsAdd", gdto);
		
	}

	@Override
	public void goodsUpdate(GoodsDTO gdto) throws Exception {
		sql.update("goods.goodsUpdate", gdto);
		
	}

	@Override
	public void goodsDelete(String gcode) throws Exception {
		sql.delete("goods.goodsDelelte", gcode);
		
	}

	@Override
	public int goodsCount(SearchDTO sdto) throws Exception {
		return sql.selectOne("goods.goodsCount", sdto);
	}

}

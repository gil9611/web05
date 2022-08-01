package com.oh.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.oh.dto.CategoryCodeDTO;
import com.oh.dto.GoodsDTO;
import com.oh.dto.SearchDTO;
import com.oh.service.CategoryCodeService;
import com.oh.service.GoodsService;
import com.oh.util.PageMaker;

@Controller
@RequestMapping("/goods/*")
public class GoodsCtrl {
	@Autowired
	GoodsService gs;
	@Autowired
	CategoryCodeService ccs;
	
	@GetMapping("list")
	public String goodslist(String search, String keyword, Model model) throws Exception{
		SearchDTO sdto = new SearchDTO();
		sdto.setSearch(search);
		sdto.setKeyword(keyword);
		List<GoodsDTO> goodsList = gs.goodsList(sdto);
		model.addAttribute("goodsList", goodsList);
		return "/goods/goodsList";
	}
	
	@GetMapping("pageList")
	public String goodsPageList(String search, String keyword, @RequestParam("curPage") int curPage, Model model) throws Exception{
		SearchDTO sdto = new SearchDTO();
		sdto.setSearch(search);
		sdto.setKeyword(keyword);
		int cnt = gs.goodsCount(sdto);
		PageMaker page = new PageMaker(cnt, curPage, 12, 10);
		page.setSearch(search);
		page.setKeyword(keyword);
		List<GoodsDTO> goodsPageList = gs.goodsPageList(page);
		model.addAttribute("goodsPageList", goodsPageList);
		model.addAttribute("page", page);
		model.addAttribute("cnt", cnt);
        return "/goods/goodsPageList";
	}
	
	@ModelAttribute("goods")
	protected Object formBack() throws Exception {
		return new GoodsDTO();
	}
	
	@RequestMapping("addForm")
	public String form(Model model) {
		ccData(model);
		return "/goods/addGoodsForm1";
	}
	
	public void ccData(Model model) {
		List<CategoryCodeDTO> ccList1 = new ArrayList<CategoryCodeDTO>();
		ccList1.add(new CategoryCodeDTO("가구", "01", "가구"));
		ccList1.add(new CategoryCodeDTO("패브릭", "02", "패브릭"));
		ccList1.add(new CategoryCodeDTO("조명", "03", "조명"));
		ccList1.add(new CategoryCodeDTO("데코·식물", "04", "데코·식물"));
		ccList1.add(new CategoryCodeDTO("수납·정리", "05", "수납·정리"));
		ccList1.add(new CategoryCodeDTO("공구·DIY", "06", "공구·DIY"));
		List<CategoryCodeDTO> ccList2 = new ArrayList<CategoryCodeDTO>();
		try {
			ccList2.addAll(ccs.ccList("01"));
			ccList2.addAll(ccs.ccList("02"));
			ccList2.addAll(ccs.ccList("03"));
			ccList2.addAll(ccs.ccList("04"));
			ccList2.addAll(ccs.ccList("05"));
			ccList2.addAll(ccs.ccList("06"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("ccList1", ccList1);
		model.addAttribute("ccList2", ccList2);
	}
	
	@RequestMapping(value="add", method=RequestMethod.POST)
	public String addGoods(GoodsDTO gdto, Model model) throws Exception {
		gs.goodsAdd(gdto);
		return "redirect:/admin/adminPage";
	}
	
	@GetMapping("view")
	public String goodsView(String gcode, Model model) throws Exception{
		GoodsDTO goods = gs.goodsView(gcode);
		model.addAttribute("goods", goods);
		return "/goods/goodsView";
	}
	
	@GetMapping("updateForm")
	public String goodsUpdateForm(String gcode, Model model)throws Exception{
		GoodsDTO goods = gs.goodsView(gcode);
		ccData(model);
		model.addAttribute("goods", goods);
		return "/goods/goodsUpdateForm";
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String goodsUpdate(GoodsDTO gdto, Model model) throws Exception{
		gs.goodsUpdate(gdto);
		return "redirect:/goods/view?gcode="+gdto.getGcode();
	}
}

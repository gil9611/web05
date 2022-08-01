package com.oh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oh.dto.BasketDTO;
import com.oh.dto.GoodsDTO;
import com.oh.service.BasketService;
import com.oh.service.GoodsService;

@Controller
@RequestMapping("/basket/")
public class BasketCtrl {
	
	@Autowired
	BasketService bs;
	@Autowired
	GoodsService gs;
	@Autowired
	HttpSession session;
	
	@GetMapping("list")
	public String basketList(Model model) throws Exception {
		String mid = (String)session.getAttribute("sid");
		List<BasketDTO> basketList = bs.basketList(mid);
		model.addAttribute("basketList", basketList);
		return "/basket/basketList";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String basketAdd(String gcode) throws Exception{
		int bamount = 1;
		GoodsDTO gdto = gs.goodsView(gcode);
		BasketDTO bdto = new BasketDTO();
		bdto.setMid((String)session.getAttribute("sid"));
		bdto.setGno(gcode);
		bdto.setGname(gdto.getGname());
		bdto.setBamount(bamount);
		bdto.setBprice(bdto.getBamount()*gdto.getGprice());
		bs.basketAdd(bdto);
		return "redirect:/basket/list";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String basketUpdate(BasketDTO bdto) throws Exception{
		bs.basketUpdate(bdto);
		return "redirect:/basket/list";
	}
	
	@GetMapping("delete")
	public String basketDelete(int bno) throws Exception {
		bs.basketDelete(bno);
		return "redirect:/basket/list";
	}
}

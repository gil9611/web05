package com.oh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oh.dto.GoodsDTO;
import com.oh.dto.PaymentDTO;
import com.oh.service.BasketService;
import com.oh.service.GoodsService;
import com.oh.service.PaymentService;

@Controller
@RequestMapping("/payment/")
public class PaymentCtrl {
	
	@Autowired
	PaymentService ps;
	@Autowired
	BasketService bs;
	@Autowired
	GoodsService gs;
	@Autowired
	HttpSession session;
	
	@GetMapping("list")
	public String paymentList(Model model) throws Exception{
		String mid = (String)session.getAttribute("sid");
		List<PaymentDTO> paymentList = ps.paymentList(mid);
		model.addAttribute("paymentList", paymentList);
		return "/payment/paymentList";
	}
	
	@GetMapping("addForm")
	public String paymentAddForm(String gno, Model model) throws Exception{
		GoodsDTO gdto = gs.goodsView(gno);
		model.addAttribute("goods", gdto);
		return "/payment/paymentAddForm";
	}
	
}

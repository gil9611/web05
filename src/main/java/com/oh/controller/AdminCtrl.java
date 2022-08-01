package com.oh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*")
public class AdminCtrl {
	
	@GetMapping("adminPage")
	public String adminPage() {
		return "/admin/adminPage";
	}
}

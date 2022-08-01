package com.oh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oh.dto.FormDTO;

@Controller
public class FormCtrl {
	
	@RequestMapping("/save")
	public String formsave(@ModelAttribute FormDTO member, BindingResult result) {
		return "redirect:/input";
	}
	
	@RequestMapping("/input")
	public ModelAndView formInput() {
		return new ModelAndView("testForm", "formDTO", new FormDTO());
	}
}

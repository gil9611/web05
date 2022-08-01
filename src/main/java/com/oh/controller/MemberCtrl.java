package com.oh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.oh.dto.MemberDTO;
import com.oh.dto.SearchDTO;
import com.oh.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberCtrl {
	@Autowired
	MemberService ms;
	@Autowired
	HttpSession session;
	@Bean
    public PasswordEncoder pwdEncoder() {
        return new BCryptPasswordEncoder();
    }
	
	@RequestMapping("list")
	public String memberList(Model model) throws Exception{
		List<MemberDTO> memberList = ms.memberList();
		model.addAttribute("memberList", memberList);
		return "/member/memberList";
	}
	@RequestMapping(value="view", method = RequestMethod.POST)
	public String memberView(SearchDTO sdto, Model model) throws Exception{
		MemberDTO member = ms.memberView(sdto);
		model.addAttribute("memberList", member);
		return "/member/memberList";
	}
	
	@GetMapping("join")
	public String join(){
		return "/member/join";
	}
	
	
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String memberAdd(MemberDTO mdto, Model model) throws Exception{
		String mpw = pwdEncoder().encode(mdto.getMpw());
		mdto.setMpw(mpw);
		ms.memberAdd(mdto);
		return "redirect:/";
	}
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String memberUpdate(MemberDTO mdto, Model model) throws Exception{
		ms.memberUpdate(mdto);
		String mid = mdto.getMid();
		MemberDTO user = ms.memberLoginId(mid);
		session.setAttribute("user", user);
		session.setAttribute("sid", mid);
		return "redirect:/";
	}
	
	@GetMapping("updateForm")
	public String memberUpdateForm(Model model) throws Exception{
		String mid = (String)session.getAttribute("sid");
		MemberDTO member = ms.memberLoginId(mid);
		model.addAttribute("member", member);
		return "/member/updateForm";
	}
	
	@GetMapping("delete")
	public String memberDelete(@RequestParam String mid) throws Exception{
		ms.memberDelete(mid);
		return "logout";
	}
	
	@GetMapping("loginForm")
	public String loginForm(){
		return "/member/loginForm";
	}
	
	@GetMapping("login")
	public String memberLogin(String mid, String mpw, Model model) throws Exception{
		MemberDTO user = ms.memberLoginId(mid);
		if(user != null) {
			//암호화
			boolean pwCheck = pwdEncoder().matches(mpw, user.getMpw());
			if(pwCheck == true) {
				session.setAttribute("user", user);
				session.setAttribute("sid", mid);
				return "redirect:/";
			} 
		}
		return "redirect:/member/loginForm";
	}
	
	@GetMapping("logout")
	public String logout(){
		session.invalidate();
		return "redirect:/";
	}
	
}

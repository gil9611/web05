package com.oh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.oh.dto.NoticeDTO;
import com.oh.service.NoticeService;
import com.oh.util.PageMaker;

@Controller
@RequestMapping("/notice/")
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
	@Autowired
	HttpSession session;
	
	//DataTables jQuery 플러그인을 활용한 목록
	@RequestMapping(value="list.do", method = RequestMethod.GET)
    public String noticeList(Model model) throws Exception {
		List<NoticeDTO> noticeList = noticeService.noticeList();
		int cnt = noticeService.noticeCount();
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("cnt", cnt);
        return "notice/noticeList";
    }
	
	//페이지메이커를 활용한 페이지 분리하기 목록
	@RequestMapping(value="pageList.do", method = RequestMethod.GET)
    public String noticePageList(@RequestParam("curPage") int curPage, Model model) throws Exception {
		int cnt = noticeService.noticeCount();
		//PageMaker page = new PageMaker(cnt, curPage);
		//PageMaker page = new PageMaker(cnt, curPage, 10);
		PageMaker page = new PageMaker(cnt, curPage, 10, 10);
		List<NoticeDTO> noticePageList = noticeService.noticePageList(page);
		model.addAttribute("noticePageList", noticePageList);
		model.addAttribute("page", page);
		model.addAttribute("cnt", cnt);
        return "notice/noticePageList";
    }
	
	@RequestMapping(value="addNoticeForm.do", method = RequestMethod.GET)
    public String addNoticeForm(Model model) throws Exception {
        return "notice/addNoticeForm";
    }
	
	@RequestMapping(value="addNotice.do", method = RequestMethod.POST)
    public String addNotice(NoticeDTO notice, Model model) throws Exception {
		noticeService.addNotice(notice);
        return "redirect:/notice/list.do";
    }
	
	@RequestMapping(value="addSmartNoticeForm.do", method = RequestMethod.GET)
    public String addNoticeSmartForm(Model model) throws Exception {
        return "notice/addSmartNoticeForm";
    }
	
	@RequestMapping(value="addSmartNotice.do", method = RequestMethod.POST)
    public String addSmartNotice(NoticeDTO notice, Model model) throws Exception {
		noticeService.addNotice(notice);
        return "redirect:/notice/pageList.do?curPage=1";
    }
}
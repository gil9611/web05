package com.oh.service;

import java.util.List;

import com.oh.dto.NoticeDTO;
import com.oh.util.PageMaker;

public interface NoticeService {
	public List<NoticeDTO> noticeList() throws Exception;
	public List<NoticeDTO> noticePageList(PageMaker page) throws Exception;
	public NoticeDTO noticeRead(int seq) throws Exception;
	public int noticeCount() throws Exception;
	public void addNotice(NoticeDTO notice) throws Exception; 
	public void deleteNotice(NoticeDTO notice) throws Exception;
	public void updateNotice(NoticeDTO notice) throws Exception;
}

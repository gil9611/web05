package com.oh.dto;

import java.util.Date;

public class BoardDTO {
	private int bno;
	private String btit;
	private String bname;
	private String bnote;
	private Date regdate;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBtit() {
		return btit;
	}
	public void setBtit(String btit) {
		this.btit = btit;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBnote() {
		return bnote;
	}
	public void setBnote(String bnote) {
		this.bnote = bnote;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	

}

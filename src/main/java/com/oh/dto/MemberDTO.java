package com.oh.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
	private String mid;
	private String mpw;
	private String mname;
	private String mtell;
	private String memail;
	private int grade;
	private Date regdate;
	
}

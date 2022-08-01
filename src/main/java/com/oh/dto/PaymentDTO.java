package com.oh.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PaymentDTO {
	private int pno;
	private String paytype;
	private String payno;
	private String gcode;
	private String gname;
	private int pamount;
	private int pmoney;
	private String mid;
	private String pname;
	private String ptel;
	private String padd;
	private String pmemo;
	private Date regdate;
}

package com.oh.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BasketDTO {
	private int bno;
	private String mid;
	private String gno;
	private String gname;
	private int bamount;
	private int bprice;
	private Date regdate;
}

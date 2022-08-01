package com.oh.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GoodsDTO {
	private int gno;
	private String gcode;
	private String gname;
	private String gcategory1;
	private String gcategory2;
	private int gprice;
	private String gcolor;
	private String gsize;
	private String gmeterial;
	private int gamount;
	private String gcomment;
	private String gimg;
	private Date regdate;
}

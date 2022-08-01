package com.oh.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CategoryCodeDTO {
	private String cgcategory;
	private String cgcode;
	private String cglabel;
	
	public CategoryCodeDTO() {}
	public CategoryCodeDTO(String cgcategory, String cgcode, String cglabel) {
		this.cgcategory = cgcategory;
		this.cgcode = cgcode;
		this.cglabel = cglabel;
	}

}

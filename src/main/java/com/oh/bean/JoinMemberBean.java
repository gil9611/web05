package com.oh.bean;

import java.util.Date;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class JoinMemberBean {
	
	@Size(min=4, max=12, message="4~12자여야 합니다.")
	@Pattern(regexp= "^([A-Za-z])+([0-9])+$", message="아이디는 대소문자와 숫자의 조합이여야합니다.")
	private String mid;
	
	@Size(min=4, max=12, message="4~12자여야 합니다.")
	@Pattern(regexp= "^([A-Za-z])+([0-9])+$", message="비밀번호는 대소문자와 숫자의 조합이여야합니다.")
	private String mpw;
	
	@Size(min=4, max=12, message="4~12자여야 합니다.")
	@Pattern(regexp= "^([A-Za-z])+([0-9])+$", message="비밀번호 확인은 대소문자와 숫자의 조합이여야합니다.")
	private String mpw2;
	
	private String mname;
	private String mtell;
	private String memail;
	Date regdate;
}

package com.oh.shop;

import org.junit.Assert;
import org.junit.Test;

import com.oh.dto.MemberDTO;

import lombok.extern.log4j.Log4j;
@Log4j
public class DTOTest1 {

	@Test
	public void test() {
		log.info("DTO Test~!");
		MemberDTO member = new MemberDTO();
		member.setMid("admin");
		member.setMname("관리자");
		member.setMemail("admin@email.com");
		member.setMtell("010-1234-5678");
		tDTOTest(member);
	}
	public void tDTOTest(MemberDTO mem) {
		try {
			Assert.assertNotNull(mem);	//값이 비어있는지 테스트
			Assert.assertEquals(mem.getMname(), "관리자"); //특정 속성값의 일치 비교 테스트
		} catch(Exception e) {
			Assert.fail("해당 DTO가 비정상적임");
		}
	}
}

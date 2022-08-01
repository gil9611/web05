package com.oh.util;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.oh.dto.UserDTO;

public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return UserDTO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object object, Errors errors) {
		UserDTO user = (UserDTO) object;
		String defaultMsg = "필수 입력 사항입니다.";
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id", "required", "아이디를 정확하게 입력해주세요");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required", "이메일을 정확하게 입력해주세요");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.address1", "required", "주소1 정확하게 입력해주세요");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.address2", "required", "주소2 정확하게 입력해주세요");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "job", "required", defaultMsg);
		
		if(user.getGender()==null || user.getGender().length == 0) {
			errors.rejectValue("gender", "select");
		}
		
		if(user.getName().length() < 2 || user.getName().length() >12) {
			errors.rejectValue("name", "lengthsize", "이름은 2자이상 12자 미만이여야 합니다.");
		}
	}

}

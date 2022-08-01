package com.oh.service;

import java.util.List;

import com.oh.dto.PaymentDTO;

public interface PaymentService {
	//거래 리스트
		public List<PaymentDTO> paymentList(String mid) throws Exception;
		//거래 추가
		public void paymentAdd(PaymentDTO pdto) throws Exception;
}

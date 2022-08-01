package com.oh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oh.dao.PaymentDAO;
import com.oh.dto.PaymentDTO;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	PaymentDAO pdao;
	
	@Override
	public List<PaymentDTO> paymentList(String mid) throws Exception {
		return pdao.paymentList(mid);
	}

	@Override
	public void paymentAdd(PaymentDTO pdto) throws Exception {
		pdao.paymentAdd(pdto);
	}
	
}

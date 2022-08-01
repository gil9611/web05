package com.oh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oh.dto.PaymentDTO;

@Repository
public class PaymentDAOImpl implements PaymentDAO {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<PaymentDTO> paymentList(String mid) throws Exception {
		return sql.selectList("payment.paymentList", mid);
	}

	@Override
	public void paymentAdd(PaymentDTO pdto) throws Exception {
		sql.insert("payment.paymentAdd", pdto);
	}

}

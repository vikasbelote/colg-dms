package com.santan.trade.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.santan.trade.model.InvestmentModel;
import com.santan.trade.model.UserModel;
import com.santan.trade.repository.InvestmentRepository;

@Service
public class InvestmentService {
	
	@Autowired
	private InvestmentRepository investmentRepository;
	
	public List<InvestmentModel> getInvestments(Integer userId) {
		return investmentRepository.getInvestments(userId);
	}
	
	public InvestmentModel getInvestment(Integer investmentId) {
		return investmentRepository.getInvestment(investmentId);
	}
	
	public boolean saveInvestment(InvestmentModel investmentModel, Integer userId) {
		
		UserModel userModel = new UserModel();
		userModel.setUserId(userId);
		
		investmentModel.setUserModel(userModel);
		return investmentRepository.saveInvestmentModel(investmentModel);
	}
}

package com.santan.trade.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.santan.trade.model.OutcomeModel;
import com.santan.trade.model.TradeModel;
import com.santan.trade.repository.OutcomeRepository;

@Service
public class OutcomeService {
	
	@Autowired
	private OutcomeRepository outcomeRepository;
	
	public List<TradeModel> getTrades() {
		return outcomeRepository.getTrades();
	}
	
	public boolean saveOutcome(OutcomeModel outcomeModel) {
		return outcomeRepository.saveOutcomeModel(outcomeModel);
	}
}

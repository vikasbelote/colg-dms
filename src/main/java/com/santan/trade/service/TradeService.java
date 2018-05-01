package com.santan.trade.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.santan.trade.model.TradeModel;
import com.santan.trade.repository.TradeRepository;

@Service
public class TradeService {
	
	@Autowired
	private TradeRepository tradeRepository;
	
	public List<TradeModel> getTrades() {
		return tradeRepository.getTrades();
	}
	
	public TradeModel getTrade(Integer tradeId) {
		return tradeRepository.getTrade(tradeId);
	}
	
	public boolean saveTrade(TradeModel tradeModel) {
		return tradeRepository.saveTradeModel(tradeModel);
	}

}

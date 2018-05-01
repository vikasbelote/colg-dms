package com.santan.trade.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "santan_outcome")
public class OutcomeModel {
	
	@Id
	@GeneratedValue
	@Column(name = "outcome_id")
	private Integer outcomeId;
	
	@Column(name = "outcome_amount")
	private Double outcomeAmount;
	
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "trade_id")
	private TradeModel tradeModel;

	public Integer getOutcomeId() {
		return outcomeId;
	}

	public void setOutcomeId(Integer outcomeId) {
		this.outcomeId = outcomeId;
	}

	public Double getOutcomeAmount() {
		return outcomeAmount;
	}

	public void setOutcomeAmount(Double outcomeAmount) {
		this.outcomeAmount = outcomeAmount;
	}

	public TradeModel getTradeModel() {
		return tradeModel;
	}

	public void setTradeModel(TradeModel tradeModel) {
		this.tradeModel = tradeModel;
	}
	
	
}

package com.santan.trade.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "santan_trade")
public class TradeModel {
	
	@Id
	@GeneratedValue
	@Column(name = "trade_id")
	private Integer tradeId;
	
	@Column(name = "trade_amount")
	private Double tradeAmount;
	
	@Column(name = "trade_date")
	private Date tradeDate;
	
	@OneToOne(mappedBy = "tradeModel", fetch = FetchType.LAZY)
	private OutcomeModel outcomeModel;

	public Integer getTradeId() {
		return tradeId;
	}

	public void setTradeId(Integer tradeId) {
		this.tradeId = tradeId;
	}

	public Double getTradeAmount() {
		return tradeAmount;
	}

	public void setTradeAmount(Double tradeAmount) {
		this.tradeAmount = tradeAmount;
	}

	public Date getTradeDate() {
		return tradeDate;
	}

	public void setTradeDate(Date tradeDate) {
		this.tradeDate = tradeDate;
	}

	public OutcomeModel getOutcomeModel() {
		return outcomeModel;
	}

	public void setOutcomeModel(OutcomeModel outcomeModel) {
		this.outcomeModel = outcomeModel;
	}
}

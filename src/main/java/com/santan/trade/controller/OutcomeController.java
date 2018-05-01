package com.santan.trade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.santan.trade.model.OutcomeModel;
import com.santan.trade.service.OutcomeService;

@Controller
public class OutcomeController {
	
	@Autowired
	private OutcomeService outcomeService;
	
	@RequestMapping(value = "outcome", method = RequestMethod.GET)
	public ModelAndView getTradeTable() {
		
		ModelAndView modelAndView = new ModelAndView("outcome", "outcomeModel" , new OutcomeModel());
		modelAndView.addObject("trades", outcomeService.getTrades());
		return modelAndView;
	}
	
	@RequestMapping(value = "post-outcome", method = RequestMethod.POST)
	public ModelAndView postOutcome(@ModelAttribute("outcomeModel")OutcomeModel outcomeModel) {
		
		if(outcomeService.saveOutcome(outcomeModel)) {
			
		}
		
		ModelAndView modelAndView = new ModelAndView("outcome");
		modelAndView.addObject("trades", outcomeService.getTrades());
		return modelAndView;
	}

}

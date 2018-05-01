package com.santan.trade.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.santan.trade.model.InvestmentModel;
import com.santan.trade.model.TradeModel;
import com.santan.trade.service.InvestmentService;
import com.santan.trade.service.TradeService;

@Controller
public class TradeController {
	
	@Autowired
	private TradeService tradeService;
	
	@RequestMapping(value = "add-trade",  method = RequestMethod.GET)
	public ModelAndView addTrade() {
		return new ModelAndView("addTrade","tradeModel", new TradeModel());
	}
    
	@RequestMapping(value = "trade-history",  method = RequestMethod.GET)
	public ModelAndView tradeHistory(HttpSession session) {
		
		//Integer userId = (Integer)session.getAttribute("USERID");
		
		ModelAndView modelAndView = new ModelAndView("tradeHistory");
		modelAndView.addObject("trades", tradeService.getTrades());
		
		return modelAndView;
	}
	
	@RequestMapping(value = "edit-trade",  method = RequestMethod.GET)
	public ModelAndView editTrade(@RequestParam("id") Integer tradeId) {
		
		TradeModel tradeModel = tradeService.getTrade(tradeId);
		return new ModelAndView("addTrade", "tradeModel", tradeModel);
	}
	
	@RequestMapping(value = "post-trade",  method = RequestMethod.POST)
	public String postInvestment(@ModelAttribute("tradeModel") TradeModel tradeModel, HttpSession session
			, RedirectAttributes redirectAttributes) {
		
		//Integer userId = (Integer)session.getAttribute("USERID");
		if(tradeService.saveTrade(tradeModel)) {
			redirectAttributes.addFlashAttribute("success", true);
			redirectAttributes.addFlashAttribute("msg", "Congrats!!! Trade information save successfully.");
		}
		else {
			redirectAttributes.addFlashAttribute("success", false);
			redirectAttributes.addFlashAttribute("msg", "There is problem with saving information.");
		}
		return "redirect:/trade-history";
	}
		
	
}

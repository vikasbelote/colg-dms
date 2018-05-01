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
import com.santan.trade.service.InvestmentService;

@Controller
public class InvestmentController {
	
	@Autowired
	private InvestmentService investmentService;
	
	@RequestMapping(value = "add-investment",  method = RequestMethod.GET)
	public ModelAndView addInvestment() {
		return new ModelAndView("addInvestment","investmentModel", new InvestmentModel());
	}
    
	@RequestMapping(value = "my-investment",  method = RequestMethod.GET)
	public ModelAndView myInvestment(HttpSession session) {
		
		Integer userId = (Integer)session.getAttribute("USERID");
		
		ModelAndView modelAndView = new ModelAndView("myInvestment");
		modelAndView.addObject("investments", investmentService.getInvestments(userId));
		
		return modelAndView;
	}
	
	@RequestMapping(value = "edit-investment",  method = RequestMethod.GET)
	public ModelAndView editInvestment(@RequestParam("id") Integer investmentId) {
		
		InvestmentModel investmentModel = investmentService.getInvestment(investmentId);
		return new ModelAndView("addInvestment", "investmentModel", investmentModel);
	}
	
	@RequestMapping(value = "post-investment",  method = RequestMethod.POST)
	public String postInvestment(@ModelAttribute("investmentModel") InvestmentModel investmentModel, HttpSession session
			, RedirectAttributes redirectAttributes) {
		
		Integer userId = (Integer)session.getAttribute("USERID");
		if(investmentService.saveInvestment(investmentModel, userId)) {
			redirectAttributes.addFlashAttribute("success", true);
			redirectAttributes.addFlashAttribute("msg", "Congrats!!! Investment information save successfully.");
		}
		else {
			redirectAttributes.addFlashAttribute("success", false);
			redirectAttributes.addFlashAttribute("msg", "There is problem with saving information.");
		}
		return "redirect:/my-investment";
	}
	
}

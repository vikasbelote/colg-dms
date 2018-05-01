package com.santan.trade.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.santan.trade.model.UserModel;
import com.santan.trade.service.LoginAndRegisterService;

@Controller
public class LoginAndRegisterController {
	
	@Autowired
	private LoginAndRegisterService loginAndRegisterService;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("layout.login", "userModel", new UserModel());
	}
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public ModelAndView register() {
		return new ModelAndView("layout.register", "userModel", new UserModel());
	}
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(@ModelAttribute("userModel") UserModel userModel, RedirectAttributes redirectAttributes) {
		
		if(loginAndRegisterService.saveUserModel(userModel)) {
			redirectAttributes.addFlashAttribute("success", true);
			redirectAttributes.addFlashAttribute("msg", "Congrats!!! User information save successfully.");
		}
		else {
			redirectAttributes.addFlashAttribute("success", false);
			redirectAttributes.addFlashAttribute("msg", "There is problem with saving information.");
		}
		return "redirect:/register";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@ModelAttribute("userModel") UserModel userModel, HttpSession session) {
		
		UserModel userModelDB = loginAndRegisterService.getUserModel(userModel);
		if(userModelDB != null) {
			
			session.setAttribute("USERNAME", userModelDB.getUserName());
			session.setAttribute("USERID", userModelDB.getUserId());
			return "redirect:/dashboard";
		}	
		return "redirect:/login";
	}
	
}

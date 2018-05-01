package com.santan.trade.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.santan.trade.model.UserModel;
import com.santan.trade.repository.LoginAndRegisterRepository;

@Service
public class LoginAndRegisterService {
	
	@Autowired
	private LoginAndRegisterRepository loginAndRegisterRepository;
	
	public boolean saveUserModel(UserModel userModel) {
		return loginAndRegisterRepository.saveUserModel(userModel);
	}
	
	public UserModel getUserModel(UserModel userModel) {
		return loginAndRegisterRepository.getUserModel(userModel);
	}

}

package com.laptrinhjavaweb.service.impl;

import javax.inject.Inject;

import com.laptrinhjavaweb.dao.IUserDAO;
import com.laptrinhjavaweb.model.UserModel;
import com.laptrinhjavaweb.service.IUserService;

public class UserService implements IUserService{
@Inject IUserDAO userdao;
	@Override
	public UserModel findByUserAndPassAndStatus(String userName, String password, Integer status) {
		
		return userdao.findByUserAndPassAndStatus(userName, password, status);
		
	}

}

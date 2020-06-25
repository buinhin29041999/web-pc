package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.model.UserModel;

public interface IUserService {
	UserModel findByUserAndPassAndStatus(String userName, String password,Integer status);
}

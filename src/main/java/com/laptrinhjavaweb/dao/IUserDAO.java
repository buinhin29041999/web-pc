package com.laptrinhjavaweb.dao;

import com.laptrinhjavaweb.model.UserModel;

public interface IUserDAO extends GenericsDAO<UserModel> {
	UserModel findByUserAndPassAndStatus(String userName, String password,Integer status);
}

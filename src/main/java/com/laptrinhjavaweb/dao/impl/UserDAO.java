package com.laptrinhjavaweb.dao.impl;

import java.util.List;

import com.laptrinhjavaweb.dao.IUserDAO;
import com.laptrinhjavaweb.mapper.UserMapper;
import com.laptrinhjavaweb.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

	@Override
	public UserModel findByUserAndPassAndStatus(String userName, String password, Integer status) {
		StringBuilder sql= new StringBuilder();
		 sql.append("SELECT * FROM user join vai_tro on user.roleId = vai_tro.id ");
		 sql.append(" WHERE userName=? and passWord=? and status=?");
		
		  List<UserModel> user = query(sql.toString(), new UserMapper(), userName,password,status); 
		  return user.isEmpty() ? null : user.get(0);
	}

}

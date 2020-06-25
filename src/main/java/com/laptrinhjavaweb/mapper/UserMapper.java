package com.laptrinhjavaweb.mapper;

import java.sql.ResultSet;

import com.laptrinhjavaweb.model.UserModel;
import com.laptrinhjavaweb.model.VaiTroModel;

public class UserMapper implements RowMapper<UserModel> {

	@Override
	public UserModel mapRow(ResultSet rSet) {
		try {
			UserModel user = new UserModel();
			user.setId(rSet.getLong("id"));
			user.setUserName(rSet.getString("userName"));
			user.setPassWord(rSet.getString("passWord"));
			user.setFullName(rSet.getString("fullName"));
			user.setStatus(rSet.getInt("status"));
			try {
				VaiTroModel vaitro = new VaiTroModel();
				vaitro.setCode(rSet.getString("code"));
				vaitro.setName(rSet.getString("name"));
				user.setVaiTroModel(vaitro);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}

			return user;

		} catch (Exception e) {

			return null;
		}
	}

}

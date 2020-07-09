package com.laptrinhjavaweb.mapper;

import java.sql.ResultSet;

import com.laptrinhjavaweb.model.NhaCungCapModel;

public class SupplierMapper implements RowMapper<NhaCungCapModel> {

	@Override
	public NhaCungCapModel mapRow(ResultSet rSet) {
		try {
			NhaCungCapModel ncc=new NhaCungCapModel();
			ncc.setId(rSet.getLong("id"));
			ncc.setName(rSet.getString("name"));
			return ncc;
		} catch (Exception e) {
			return null;
		}
		
		
	}

}

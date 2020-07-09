package com.laptrinhjavaweb.dao.impl;

import java.util.List;

import com.laptrinhjavaweb.dao.ISupplierDAO;
import com.laptrinhjavaweb.mapper.SupplierMapper;
import com.laptrinhjavaweb.model.NhaCungCapModel;

public class SupplierDAO extends AbstractDAO<NhaCungCapModel> implements ISupplierDAO {

	@Override
	public NhaCungCapModel findOne(Long id) {
		String sql = "SELECT * FROM category WHERE id=?";
		List<NhaCungCapModel> ncc = query(sql, new SupplierMapper(), id);
		return ncc.isEmpty() ? null : ncc.get(0);
	}

	@Override
	public List<NhaCungCapModel> findAll() {
		String sql = "SELECT *from nha_cung_cap";
		return query(sql, new SupplierMapper());
	}

}

package com.laptrinhjavaweb.dao;

import java.util.List;

import com.laptrinhjavaweb.model.NhaCungCapModel;

public interface ISupplierDAO {
	NhaCungCapModel findOne(Long id);
	List<NhaCungCapModel> findAll();
}

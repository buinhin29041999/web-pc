package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.model.NhaCungCapModel;

public interface ISupplierService {
	NhaCungCapModel findOne(Long id);
	List<NhaCungCapModel> findAll();
}

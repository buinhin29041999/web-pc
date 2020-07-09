package com.laptrinhjavaweb.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.laptrinhjavaweb.dao.ISupplierDAO;
import com.laptrinhjavaweb.model.NhaCungCapModel;
import com.laptrinhjavaweb.service.ISupplierService;

public class SupplierService implements ISupplierService {
	
	@Inject ISupplierDAO supdao;
	
	@Override
	public NhaCungCapModel findOne(Long id) {
		
		return supdao.findOne(id);
	}

	@Override
	public List<NhaCungCapModel> findAll() {
		
		return supdao.findAll();
	}

}

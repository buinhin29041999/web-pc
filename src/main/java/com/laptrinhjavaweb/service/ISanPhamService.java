package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.model.SanPhamModel;
import com.laptrinhjavaweb.paging.Pageble;

public interface ISanPhamService {
	List<SanPhamModel> findByCategoryid(Long cateId);

	SanPhamModel save(SanPhamModel sp);

	SanPhamModel update(SanPhamModel spnew);

	void delete(Long[] ids);

	List<SanPhamModel> findAll(Pageble pageble, Integer cateId, Integer spId );
	

	int getTotalItem();
	List<SanPhamModel> findNewestSP(Integer sl);
}

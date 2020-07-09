package com.laptrinhjavaweb.dao;

import java.util.List;

import com.laptrinhjavaweb.model.SanPhamModel;
import com.laptrinhjavaweb.paging.Pageble;

public interface ISanPhamDAO extends GenericsDAO<SanPhamModel> {
	SanPhamModel findOne(Long id);
	List<SanPhamModel> findByCategoryId(Long categoryid);
	Long save(SanPhamModel sp);
	void update(SanPhamModel sp);
	void delete(Long id);
	List<SanPhamModel> findAll(Pageble pageble, Integer cateId, Integer spId);	
	int getTotalItem();
	List<SanPhamModel> findNewestSP(Integer sl);
}

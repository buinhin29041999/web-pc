package com.laptrinhjavaweb.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.laptrinhjavaweb.dao.ISanPhamDAO;
import com.laptrinhjavaweb.model.SanPhamModel;
import com.laptrinhjavaweb.paging.Pageble;
import com.laptrinhjavaweb.service.ISanPhamService;

public class SanPhamService implements ISanPhamService {

	@Inject
	private ISanPhamDAO spdao;

	@Override
	public List<SanPhamModel> findByCategoryid(Long cateId) {

		return spdao.findByCategoryId(cateId);
	}

	@Override
	public SanPhamModel save(SanPhamModel spModel) {
		spModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		spModel.setCreatedBy("Admin");
		Long spId = spdao.save(spModel);
		return spdao.findOne(spId);
	}

	@Override
	public SanPhamModel update(SanPhamModel spnew) {
		SanPhamModel oldsp = spdao.findOne(spnew.getId());
		spnew.setCreatedBy(oldsp.getCreatedBy());
		spnew.setCreatedDate(oldsp.getCreatedDate());
		spnew.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		spnew.setModifiedBy("");
		spdao.update(spnew);
		return spdao.findOne(spnew.getId());
	}

	@Override
	public void delete(Long[] ids) {
		for (Long id : ids) {
			//1. delete comment
			//2. delete sanpham
			spdao.delete(id);
		}

	}

	

	@Override
	public int getTotalItem() {
		
		return spdao.getTotalItem();
	}



	@Override
	public List<SanPhamModel> findNewestSP(Integer sl) {
		
		return spdao.findNewestSP(sl);
	}

	@Override
	public List<SanPhamModel> findAll(Pageble pageble,Integer cateId,Integer spId) {
		
		return spdao.findAll(pageble,cateId,spId);
	}

}

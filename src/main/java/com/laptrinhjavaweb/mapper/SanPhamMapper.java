package com.laptrinhjavaweb.mapper;

import java.sql.ResultSet;

import com.laptrinhjavaweb.model.SanPhamModel;

public class SanPhamMapper implements RowMapper<SanPhamModel> {

	@Override
	public SanPhamModel mapRow(ResultSet rSet) {

		try {
			SanPhamModel sanpham = new SanPhamModel();
			sanpham.setId(rSet.getLong("id"));
			sanpham.setName(rSet.getString("name"));
			sanpham.setCategoryId(rSet.getLong("categoryid"));
			sanpham.setNhaCungCapId(rSet.getLong("nha_cung_cap_id"));
			sanpham.setThumbnail(rSet.getString("thumbnail"));
			sanpham.setShortDescription(rSet.getString("shortdescription"));
			sanpham.setContext(rSet.getString("content"));
			sanpham.setDonGia(rSet.getInt("don_gia"));
			sanpham.setSoLuong(rSet.getInt("so_luong"));
			sanpham.setCreatedDate(rSet.getTimestamp("createdate"));
			sanpham.setCreatedBy(rSet.getString("createdby"));
			sanpham.setModifiedDate(rSet.getTimestamp("modifieddate"));
			sanpham.setModifiedBy(rSet.getString("modifiedby"));
			if (rSet.getTimestamp("modifieddate")==null) {
				sanpham.setModifiedDate(rSet.getTimestamp("modifieddate"));
			}
			if (rSet.getString("modifiedby")==null) {
				sanpham.setModifiedBy(rSet.getString("modifiedby"));
			}
			
			return sanpham;

		} catch (Exception e) {
			return null;
		}
	}

}

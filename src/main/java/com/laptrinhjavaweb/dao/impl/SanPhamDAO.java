package com.laptrinhjavaweb.dao.impl;

import java.util.List;

import com.laptrinhjavaweb.dao.ISanPhamDAO;
import com.laptrinhjavaweb.mapper.SanPhamMapper;
import com.laptrinhjavaweb.model.SanPhamModel;
import com.laptrinhjavaweb.paging.Pageble;

public class SanPhamDAO extends AbstractDAO<SanPhamModel> implements ISanPhamDAO {

	@Override
	public List<SanPhamModel> findByCategoryId(Long categoryid) {
		String sql = "SELECT * FROM san_pham WHERE categoryid=?";
		return query(sql, new SanPhamMapper(), categoryid);
	}

	// Lưu sản phẩm theo id
	@Override
	public Long save(SanPhamModel sp) {
		// String sql = "INSERT INTO san_pham(name,categoryid,nha_cung_cap_id)
		// VALUES(?,?,?) ";
		StringBuilder sql = new StringBuilder("INSERT INTO san_pham(name,categoryid, ");
		sql.append(
				"thumbnail,shortdescription,content,don_gia,so_luong,createdate,createdby,nha_cung_cap_id,modifieddate,modifiedby)");
		sql.append("VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
		return insert(sql.toString(), sp.getName(), sp.getCategoryId(), sp.getThumbnail(), sp.getShortDescription(),
				sp.getContext(), sp.getDonGia(), sp.getSoLuong(), sp.getCreatedDate(), sp.getCreatedBy(),
				sp.getNhaCungCapId(), sp.getModifiedDate(), sp.getModifiedBy());

	}

	// Update
	@Override
	public void update(SanPhamModel sp) {
		StringBuilder sql = new StringBuilder("UPDATE san_pham SET name = ?, categoryid = ?, nha_cung_cap_id = ?,");
		sql.append("shortdescription = ? ,thumbnail = ?, content = ?, don_gia = ?, so_luong = ?,");
		sql.append("createdate = ?, createdby = ?, modifieddate = ?, modifiedby = ? WHERE id = ? ");
		update(sql.toString(), sp.getName(), sp.getCategoryId(), sp.getNhaCungCapId(), sp.getShortDescription(),
				sp.getThumbnail(), sp.getContext(), sp.getDonGia(), sp.getSoLuong(), sp.getCreatedDate(),
				sp.getCreatedBy(), sp.getModifiedDate(), sp.getModifiedBy(), sp.getId());

	}

	@Override
	public SanPhamModel findOne(Long id) {
		String sql = "SELECT * FROM san_pham WHERE id=?";
		List<SanPhamModel> sanphams = query(sql, new SanPhamMapper(), id);
		return sanphams.isEmpty() ? null : sanphams.get(0);
	}

	@Override
	public void delete(Long id) {
		String sql = "DELETE FROM san_pham WHERE id=?";
		update(sql, id);

	}

	@Override
	public List<SanPhamModel> findAll(Pageble pageble, Integer cateId,Integer spId) {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM san_pham");
		if (spId!=null) {
			sql.append(" where id= " + spId);
		}
		if (cateId != null) {
			sql.append(" where categoryid= " + cateId);
		}
		if (pageble != null) {

			if (pageble.getSorter() != null) {
				sql.append(
						" order by " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + " ");
			}

			if (pageble.getOffset() != null && pageble.getLimit() != null) {
				sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit() + " ");
			}
		}
		return query(sql.toString(), new SanPhamMapper());

	}

	@Override
	public int getTotalItem() {
		String sql = "SELECT count(*) FROM san_pham";
		return count(sql);
	}

	@Override
	public List<SanPhamModel> findNewestSP(Integer sl) {
		String sql = "select * from san_pham order by  createdate DESC limit ?";
		return query(sql, new SanPhamMapper(), sl);
	}

}

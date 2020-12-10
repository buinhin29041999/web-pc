package dao.impl;

import java.util.List;

import dao.IBannerDAO;
import mapper.BannerMapper;
import model.BannerModel;

public class BannerDAO extends AbstractDAO<BannerModel> implements IBannerDAO {

	@Override
	public List<BannerModel> findAll() {
		StringBuilder sql= new StringBuilder();
		sql.append("select * from Banner");
		return query(sql.toString(), new BannerMapper());
	}

}

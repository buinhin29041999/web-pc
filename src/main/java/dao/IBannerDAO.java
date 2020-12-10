package dao;

import java.util.List;

import model.BannerModel;

public interface IBannerDAO {
	List<BannerModel> findAll();
}

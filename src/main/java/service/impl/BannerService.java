package service.impl;

import java.util.List;

import javax.inject.Inject;

import dao.IBannerDAO;
import model.BannerModel;
import service.IBannerService;

public class BannerService implements IBannerService {
@Inject IBannerDAO bannerDAO;
	@Override
	public List<BannerModel> findAll() {
		
		return bannerDAO.findAll();
	}

}

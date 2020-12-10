package service.impl;

import dao.ICategoryDAO;
import dao.IProductDAO;
import model.CategoryModel;
import model.ProductModel;
import paging.Pageble;
import service.IProductService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class ProductService implements IProductService {

	@Inject
	private IProductDAO spdao;

	@Inject
	ICategoryDAO catedao;

	@Override
	public List<ProductModel> findAllOrSearch(String type, Long categoryid, String name, Long brandID) {
		return spdao.findAllOrSearch(type, categoryid, name,brandID);
	}

	@Override
	public ProductModel save(ProductModel spModel) {
		spModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		CategoryModel categoryModel = catedao.findOne(spModel.getCategoryId());
		if (categoryModel.getId() != null) {
			spModel.setCategoryId(categoryModel.getId());
		}
		Long spId = spdao.save(spModel);
		return spdao.findOne(spId);
	}

	@Override
	public ProductModel update(ProductModel spnew) {
		ProductModel oldsp = spdao.findOne(spnew.getId());
		spnew.setCreatedBy(oldsp.getCreatedBy());
		spnew.setCreatedDate(oldsp.getCreatedDate());
		spnew.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		CategoryModel categoryModel = catedao.findOne(spnew.getCategoryId());
		spnew.setCategoryId(categoryModel.getId());
		spdao.update(spnew);
		return spdao.findOne(spnew.getId());
	}

	@Override
	public void delete(Long[] ids) {
		for (Long id : ids) {
			// 1. delete comment
			// 2. delete sanpham
			spdao.delete(id);
		}

	}

	@Override
	public int getTotalItem() {

		return spdao.getTotalItem();
	}

	@Override
	public List<ProductModel> findNewestSP(Integer sl) {

		return spdao.findNewestSP(sl);
	}

	@Override
	public List<ProductModel> findAll(Pageble pageble, Integer cateId, Integer spId) {

		return spdao.findAll(pageble, cateId, spId);
	}

	@Override
	public ProductModel fineOne(Long id) {
		ProductModel sanPhamModel = spdao.findOne(id);
		/*
		 * CategoryModel categoryMode=catedao.findOne(sanPhamModel.getCategoryId());
		 * sanPhamModel.setCategoryCode(categoryMode.getCode());
		 */
		return sanPhamModel;
	}

}

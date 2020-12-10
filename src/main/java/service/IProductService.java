package service;

import model.ProductModel;
import paging.Pageble;

import java.util.List;

public interface IProductService {
    List<ProductModel> findAllOrSearch(String type, Long categoryid, String name, Long brandId);

    ProductModel save(ProductModel sp);

    ProductModel update(ProductModel spnew);

    void delete(Long[] ids);

    List<ProductModel> findAll(Pageble pageble, Integer cateId, Integer spId);

    int getTotalItem();

    List<ProductModel> findNewestSP(Integer sl);

    ProductModel fineOne(Long id);
}

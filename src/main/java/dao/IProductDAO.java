package dao;

import model.ProductModel;
import paging.Pageble;

import java.util.List;

public interface IProductDAO extends GenericsDAO<ProductModel> {
    ProductModel findOne(Long id);

    List<ProductModel> findAllOrSearch(String type,Long categoryid, String name,Long brandId);

    Long save(ProductModel sp);

    void update(ProductModel sp);

    void delete(Long id);

    List<ProductModel> findAll(Pageble pageble, Integer cateId, Integer spId);

    int getTotalItem();

    List<ProductModel> findNewestSP(Integer sl);
}

package dao;

import model.CategoryModel;

import java.util.List;

public interface ICategoryDAO extends GenericsDAO<CategoryModel> {
    List<CategoryModel> findAll();

    CategoryModel findOne(Long id);

    CategoryModel findOneByCode(String code);

    List<CategoryModel> findByCode(String code);
}

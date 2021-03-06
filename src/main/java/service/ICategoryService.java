package service;

import model.CategoryModel;

import java.util.List;

public interface ICategoryService {
    List<CategoryModel> findAll();

    List<CategoryModel> findByCode(String code);
}

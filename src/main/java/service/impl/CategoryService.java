package service.impl;

import dao.ICategoryDAO;
import model.CategoryModel;
import service.ICategoryService;

import javax.inject.Inject;
import java.util.List;

public class CategoryService implements ICategoryService {
    @Inject
    private ICategoryDAO categorydao;

    @Override
    public List<CategoryModel> findAll() {
        return categorydao.findAll();

    }

    @Override
    public List<CategoryModel> findByCode(String code) {
        return categorydao.findByCode(code);
    }

}

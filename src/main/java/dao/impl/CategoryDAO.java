package dao.impl;

import dao.ICategoryDAO;
import mapper.CategoryMapper;
import model.CategoryModel;

import java.util.List;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {

    @Override
    public List<CategoryModel> findAll() {
        String sql = "SELECT * FROM Category";
        return query(sql, new CategoryMapper());
    }

    @Override
    public CategoryModel findOne(Long id) {
        String sql = "SELECT * FROM Category WHERE id=?";
        List<CategoryModel> cate = query(sql, new CategoryMapper(), id);
        return cate.isEmpty() ? null : cate.get(0);
    }

    @Override
    public CategoryModel findOneByCode(String code) {
        String sql = "SELECT * FROM Category WHERE code=?";
        List<CategoryModel> cate = query(sql, new CategoryMapper(), code);
        return cate.isEmpty() ? null : cate.get(0);
    }

    @Override
    public List<CategoryModel> findByCode(String code) {
        String sql = "SELECT * FROM Category WHERE code=?";
        return query(sql, new CategoryMapper(), code);
    }

}

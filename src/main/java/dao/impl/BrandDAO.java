package dao.impl;

import dao.IBrandDAO;
import mapper.BrandMapper;
import model.BrandModel;

import java.util.List;

public class BrandDAO extends AbstractDAO<BrandModel> implements IBrandDAO {

    @Override
    public BrandModel findOne(Long id) {
        String sql = "SELECT * FROM category WHERE id=?";
        List<BrandModel> ncc = query(sql, new BrandMapper(), id);
        return ncc.isEmpty() ? null : ncc.get(0);
    }

    @Override
    public List<BrandModel> findAll() {
        String sql = "SELECT *from Brand";
        return query(sql, new BrandMapper());
    }

}

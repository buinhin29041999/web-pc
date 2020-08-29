package dao;

import model.BrandModel;

import java.util.List;

public interface IBrandDAO {
    BrandModel findOne(Long id);

    List<BrandModel> findAll();
}

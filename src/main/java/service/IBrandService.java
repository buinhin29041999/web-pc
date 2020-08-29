package service;

import model.BrandModel;

import java.util.List;

public interface IBrandService {
    BrandModel findOne(Long id);

    List<BrandModel> findAll();
}

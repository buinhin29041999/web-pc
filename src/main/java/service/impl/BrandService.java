package service.impl;

import dao.IBrandDAO;
import model.BrandModel;
import service.IBrandService;

import javax.inject.Inject;
import java.util.List;

public class BrandService implements IBrandService {

    @Inject
    IBrandDAO supdao;

    @Override
    public BrandModel findOne(Long id) {

        return supdao.findOne(id);
    }

    @Override
    public List<BrandModel> findAll() {

        return supdao.findAll();
    }

}

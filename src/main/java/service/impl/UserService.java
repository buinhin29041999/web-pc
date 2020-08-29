package service.impl;

import dao.IUserDAO;
import model.UserModel;
import service.IUserService;

import javax.inject.Inject;

public class UserService implements IUserService {
    @Inject
    IUserDAO userdao;

    @Override
    public UserModel findByUserAndPassAndStatus(String userName, String password, Integer status) {

        return userdao.findByUserAndPassAndStatus(userName, password, status);

    }

}

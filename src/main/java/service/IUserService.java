package service;

import model.UserModel;

public interface IUserService {
    UserModel findByUserAndPassAndStatus(String userName, String password, Integer status);
}

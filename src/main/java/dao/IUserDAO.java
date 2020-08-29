package dao;

import model.UserModel;

public interface IUserDAO extends GenericsDAO<UserModel> {
    UserModel findByUserAndPassAndStatus(String userName, String password, Integer status);
}

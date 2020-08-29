package dao.impl;

import dao.IUserDAO;
import mapper.UserMapper;
import model.UserModel;

import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public UserModel findByUserAndPassAndStatus(String userName, String password, Integer status) {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT * FROM User join Role on User.roleId = Role.id ");
        sql.append(" WHERE username=? and password=? and status=?");

        List<UserModel> user = query(sql.toString(), new UserMapper(), userName, password, status);
        return user.isEmpty() ? null : user.get(0);
    }

}

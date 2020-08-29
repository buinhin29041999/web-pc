package mapper;

import model.RoleModel;
import model.UserModel;

import java.sql.ResultSet;

public class UserMapper implements RowMapper<UserModel> {

    @Override
    public UserModel mapRow(ResultSet rSet) {
        try {
            UserModel user = new UserModel();
            user.setId(rSet.getLong("id"));
            user.setUserName(rSet.getString("username"));
            user.setPassWord(rSet.getString("password"));
            user.setFullName(rSet.getString("fullName"));
            user.setStatus(rSet.getInt("status"));
            try {
                RoleModel vaitro = new RoleModel();
                vaitro.setCode(rSet.getString("code"));
                vaitro.setName(rSet.getString("name"));
                user.setRoleModel(vaitro);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }

            return user;

        } catch (Exception e) {

            return null;
        }
    }

}

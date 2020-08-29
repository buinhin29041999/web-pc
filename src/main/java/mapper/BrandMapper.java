package mapper;

import model.BrandModel;

import java.sql.ResultSet;

public class BrandMapper implements RowMapper<BrandModel> {

    @Override
    public BrandModel mapRow(ResultSet rSet) {
        try {
            BrandModel ncc = new BrandModel();
            ncc.setId(rSet.getLong("id"));
            ncc.setName(rSet.getString("name"));
            return ncc;
        } catch (Exception e) {
            return null;
        }


    }

}

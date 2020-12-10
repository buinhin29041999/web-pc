package mapper;

import java.sql.ResultSet;

import model.BannerModel;

public class BannerMapper implements RowMapper<BannerModel> {

	@Override
	public BannerModel mapRow(ResultSet rSet) {
		
		try {
			BannerModel banner=new BannerModel();
			banner.setImage(rSet.getString("image"));
			return banner;
		} catch (Exception e) {
			return null;
		}
		
	}

}

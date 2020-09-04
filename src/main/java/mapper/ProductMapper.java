package mapper;

import model.ProductModel;

import java.sql.ResultSet;

public class ProductMapper implements RowMapper<ProductModel> {

    @Override
    public ProductModel mapRow(ResultSet rSet) {

        try {
            ProductModel sanpham = new ProductModel();
            sanpham.setId(rSet.getLong("id"));
            sanpham.setName(rSet.getString("name"));
            sanpham.setCategoryId(rSet.getLong("categoryId"));
            sanpham.setBrandId(rSet.getLong("brandId"));
            sanpham.setImage(rSet.getString("image"));
            sanpham.setShortDescription(rSet.getString("shortDescription"));
            sanpham.setContent(rSet.getString("content"));
            sanpham.setPrice(rSet.getInt("price"));
            sanpham.setAmount(rSet.getInt("amount"));
            sanpham.setCreatedDate(rSet.getTimestamp("createdDate"));
            sanpham.setCreatedBy(rSet.getString("createdBy"));
            sanpham.setModifiedDate(rSet.getTimestamp("modifiedDate"));
            sanpham.setModifiedBy(rSet.getString("modifiedBy"));
            if (rSet.getTimestamp("modifiedDate") == null) {
                sanpham.setModifiedDate(rSet.getTimestamp("modifiedDate"));
            }
            if (rSet.getString("modifiedBy") == null) {
                sanpham.setModifiedBy(rSet.getString("modifiedBy"));
            }

            return sanpham;

        } catch (Exception e) {
            return null;
        }
    }

}

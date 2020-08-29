package dao.impl;

import dao.IProductDAO;
import mapper.ProductMapper;
import model.ProductModel;
import paging.Pageble;

import java.util.List;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

    @Override
    public List<ProductModel> findByCateIdAndOrName(Long categoryid, String name) {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT * FROM Product WHERE ");
        if (categoryid == 0) {
            sql.append(" name like '%" + name + "%'");
        }
        if (name == "") {
            sql.append(" categoryId =" + categoryid);
        } else if (categoryid != 0 && name != "") {
            sql.append("categoryId = " + categoryid + " and name like '%" + name + "%'");
        }
        return query(sql.toString(), new ProductMapper());
    }

    // Lưu sản phẩm theo id
    @Override
    public Long save(ProductModel sp) {
        StringBuilder sql = new StringBuilder("INSERT INTO Product(name,categoryId, ");
        sql.append(
                "thumbnail,shortDescription,content,price,amount,createdDate,createdBy,brandId,modifiedDate,modifiedBy)");
        sql.append("VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
        return insert(sql.toString(), sp.getName(), sp.getCategoryId(), sp.getThumbnail(), sp.getShortDescription(),
                sp.getContent(), sp.getPrice(), sp.getAmount(), sp.getCreatedDate(), sp.getCreatedBy(), sp.getBrandId(),
                sp.getModifiedDate(), sp.getModifiedBy());

    }

    // Update
    @Override
    public void update(ProductModel sp) {
        StringBuilder sql = new StringBuilder("UPDATE Product SET name = ?, categoryId = ?, brandId = ?,");
        sql.append("shortDescription = ? ,thumbnail = ?, content = ?, price = ?, amount = ?,");
        sql.append("createdDate = ?, createdBy = ?, modifiedDate = ?, modifiedBy = ? WHERE id = ? ");
        update(sql.toString(), sp.getName(), sp.getCategoryId(), sp.getBrandId(), sp.getShortDescription(),
                sp.getThumbnail(), sp.getContent(), sp.getPrice(), sp.getAmount(), sp.getCreatedDate(),
                sp.getCreatedBy(), sp.getModifiedDate(), sp.getModifiedBy(), sp.getId());

    }

    @Override
    public ProductModel findOne(Long id) {
        String sql = "SELECT * FROM Product WHERE id=?";
        List<ProductModel> sanphams = query(sql, new ProductMapper(), id);
        return sanphams.isEmpty() ? null : sanphams.get(0);
    }

    @Override
    public void delete(Long id) {
        String sql = "DELETE FROM Product WHERE id=?";
        update(sql, id);

    }

    @Override
    public List<ProductModel> findAll(Pageble pageble, Integer cateId, Integer spId) {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT * FROM Product");
        if (spId != null) {
            sql.append(" where id= " + spId);
        }
        if (cateId != null) {
            sql.append(" where categoryId= " + cateId);
        }
        if (pageble != null) {

            if (pageble.getSorter() != null) {
                sql.append(
                        " order by " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy() + " ");
            }

            if (pageble.getOffset() != null && pageble.getLimit() != null) {
                sql.append(" LIMIT " + pageble.getOffset() + ", " + pageble.getLimit() + " ");
            }
        }
        return query(sql.toString(), new ProductMapper());

    }

    @Override
    public int getTotalItem() {
        String sql = "SELECT count(*) FROM Product";
        return count(sql);
    }

    @Override
    public List<ProductModel> findNewestSP(Integer sl) {
        String sql = "select * from Product order by  createdDate DESC limit ?";
        return query(sql, new ProductMapper(), sl);
    }

}

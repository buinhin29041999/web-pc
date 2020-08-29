package dao;

import mapper.RowMapper;

import java.util.List;

public interface GenericsDAO<T> {
    @SuppressWarnings("hiding")
    <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameter);

    void update(String sql, Object... parameters);

    Long insert(String sql, Object... parameters);

    int count(String sql, Object... parameters);
}

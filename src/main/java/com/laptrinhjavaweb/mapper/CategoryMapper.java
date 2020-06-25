package com.laptrinhjavaweb.mapper;

import java.sql.ResultSet;

import com.laptrinhjavaweb.model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel> {

	@Override
	public CategoryModel mapRow(ResultSet rSet) {
		try {
			CategoryModel categoryModel = new CategoryModel();
			categoryModel.setId(rSet.getLong("id"));
			categoryModel.setCode(rSet.getString("code"));
			categoryModel.setName(rSet.getString("name"));
			return categoryModel;

		} catch (Exception e) {

			return null;
		}

	}

}

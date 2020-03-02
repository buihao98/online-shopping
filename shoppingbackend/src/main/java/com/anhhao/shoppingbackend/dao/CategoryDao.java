package com.anhhao.shoppingbackend.dao;

import java.util.List;

import com.anhhao.shoppingbackend.dto.Category;

public interface CategoryDao {

	List<Category> listCategories();

	Category getId(int id);
}

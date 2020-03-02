package com.anhhao.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.anhhao.shoppingbackend.dao.CategoryDao;
import com.anhhao.shoppingbackend.dto.Category;

@Repository("categoryDao")
public class CategoryDaoImpl implements CategoryDao {
	private static List<Category> categories = new ArrayList<Category>();

	static {
		Category category = new Category();

		category.setId(1);
		category.setName("Iphone");
		category.setDescription("This is some description for Iphone");
		category.setImageURL("");
		categories.add(category);

		category = new Category();
		category.setId(2);
		category.setName("SamSung");
		category.setDescription("This is some description for SamSung");
		category.setImageURL("");
		categories.add(category);

		category = new Category();
		category.setId(3);
		category.setName("Oppo");
		category.setDescription("This is some description for Oppo");
		category.setImageURL("");
		categories.add(category);

	}

	@Override
	public List<Category> listCategories() {

		return categories;
	}

	@Override
	public Category getId(int id) {
		for (Category category : categories) {
			if (category.getId() == id)
				return category;
		}

		return null;
	}

}

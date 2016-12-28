package com.dao;

import com.model.Categories;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface CategoriesDao {
    Categories findByID(int categoryID);

    void saveCategories(Categories category);

    void deleteCategoriesByID(int categoryID);

    void updateCategories(Categories category);

    List<Categories> findAllCategories();
}

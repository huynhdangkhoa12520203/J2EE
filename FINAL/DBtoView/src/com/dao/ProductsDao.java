package com.dao;

import com.model.Products;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface ProductsDao {
    Products findByID(int productID);

    void saveProducts(Products product);

    void deleteProductsByID(int productID);

    void updateProducts(Products product);

    List<Products> getProductsByName(String keyword);

    List<Products> findAllProducts();

    public List<Products> getListProductsByType(String categoryId);
}

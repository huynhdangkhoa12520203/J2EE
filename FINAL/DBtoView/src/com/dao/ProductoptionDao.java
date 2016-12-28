package com.dao;

import com.model.Productoption;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface ProductoptionDao {
    Productoption findByID(int productOptionID);

    void saveProductoption(Productoption productOption);

    void deleteProductoptionByID(int productOptionID);

    void updateProductoption(Productoption productOption);

    List<Productoption> findAllProductoption();
}

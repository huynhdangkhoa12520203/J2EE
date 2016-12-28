package com.dao;

import com.model.Suppliers;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface SuppliersDao {
    Suppliers findByID(int supplierID);

    void saveSuppliers(Suppliers supplier);

    void deleteSuppliersByID(int supplierID);

    void updateSuppliers(Suppliers supplier);

    List<Suppliers> findAllSuppliers();
}

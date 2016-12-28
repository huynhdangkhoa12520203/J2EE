package com.dao;

import com.model.Customers;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface CustomersDao {
    Customers findByID(int customerID);

    void saveCustomers(Customers customer);

    void deleteCustomersByID(int customerID);

    void updateCustomers(Customers customer);

    List<Customers> findAllCustomers();

    Long count();
}

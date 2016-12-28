package com.dao;

import com.model.Orders;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface OrdersDao {
    Orders findByID(int orderID);

    void saveOrders(Orders order);

    void deleteOrdersByID(int orderID);

    void updateOrders(Orders order);

    List<Orders> findAllOrders();

    Long count();
}

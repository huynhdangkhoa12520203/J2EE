package com.dao;

import com.model.Orderdetails;
import com.model.OrderdetailsId;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface OrderdetailsDao {
    Orderdetails findByID(OrderdetailsId orderDetailID);

    void saveOrderdetails(Orderdetails orderDetail);

    void deleteOrderdetailsByID(OrderdetailsId orderDetailID);

    void updateOrderdetails(Orderdetails orderDetail);

    List<Orderdetails> findAllOrderdetails();
}

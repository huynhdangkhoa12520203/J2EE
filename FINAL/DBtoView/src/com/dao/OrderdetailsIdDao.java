package com.dao;

import com.model.OrderdetailsId;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface OrderdetailsIdDao {
    OrderdetailsId findByID(int orderDetailIdID);

    void saveOrderdetailsId(OrderdetailsId orderDetailId);

    void deleteOrderdetailsIdByID(int orderDetailIdID);

    void updateOrderdetailsId(OrderdetailsId orderDetailId);

    List<OrderdetailsId> findAllOrderdetailsId();
}

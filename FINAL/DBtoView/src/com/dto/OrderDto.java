package com.dto;

import com.model.Orders;

/**
 * Created by noowaay on 12/06/2016.
 */
public class OrderDto {
    Orders order;

    double total;

    public Orders getOrder() {
        return order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}

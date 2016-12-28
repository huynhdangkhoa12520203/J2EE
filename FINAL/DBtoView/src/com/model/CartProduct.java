package com.model;

import com.model.Products;
import com.opensymphony.xwork2.ActionSupport;
import java.util.*;
import java.util.HashMap;
/**
 * Created by NguyenThi on 6/13/2016.
 */
public class CartProduct {
    private Products product;
    private int quantity;

    public CartProduct(Products product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public void increaseQuantity(){
        this.quantity++;
    }

    public void decreaseQuantity(){
        this.quantity--;
    }

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return product.getPrice()*quantity;
    }
}

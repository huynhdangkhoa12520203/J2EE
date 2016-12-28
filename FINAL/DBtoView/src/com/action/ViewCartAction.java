package com.action;

import com.model.CartProduct;
import com.model.Products;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import java.util.*;


import java.util.HashMap;

/**
 * Created by user on 6/1/2016.
 */
public class ViewCartAction extends ActionSupport{

    private int deleteProductId = 0;
    private int increaseProductId = 0;
    private int decreaseProductId = 0;
    private List<CartProduct> products;
    private float total;
    private boolean isEmpty;

    @Override
    public String execute() throws Exception {
        isEmpty = false;
        total = 0;

        products = (List<CartProduct>) ActionContext.getContext().getSession().get("cart");
        if (products!=null) {
            if (products.isEmpty()) {
                isEmpty = true;
                return SUCCESS;
            }
        }else {
            return SUCCESS;
        }

        for (CartProduct temp : products) {
            total+=temp.getTotalPrice();
        }

        return SUCCESS;
    }

    public String removeProduct() throws Exception{
        isEmpty = false;
        total = 0;
        products = (List<CartProduct>) ActionContext.getContext().getSession().get("cart");

        if (products.isEmpty()) {
            isEmpty = true;
            return SUCCESS;
        }

        if (deleteProductId != 0){
            for (ListIterator<CartProduct> iter = products.listIterator(); iter.hasNext(); ) {
                CartProduct element = iter.next();
                if (element.getProduct().getProductId()==deleteProductId){
                    iter.remove();
                }
            }
        }

        ActionContext.getContext().getSession().put("cart", products);
        return SUCCESS;
    }

    public String changeQuantity(){
        isEmpty = false;
        total = 0;
        products = (List<CartProduct>) ActionContext.getContext().getSession().get("cart");

        if (products.isEmpty()) {
            isEmpty = true;
            return SUCCESS;
        }

        if (increaseProductId != 0){
            products.stream().filter(element -> element.getProduct().getProductId() == increaseProductId).forEach(CartProduct::increaseQuantity);
        }

        if (decreaseProductId != 0){
            products.stream().filter(element -> element.getProduct().getProductId() == decreaseProductId).forEach(CartProduct::decreaseQuantity);
        }

        ActionContext.getContext().getSession().put("cart", products);

        return SUCCESS;
    }

    public List<CartProduct> getProducts() {
        return products;
    }

    public void setProducts(List<CartProduct> products) {
        this.products = products;
    }

    public boolean isEmpty() {
        return isEmpty;
    }

    public void setEmpty(boolean empty) {
        isEmpty = empty;
    }

    public float getTotal() {
        return total;
    }

    public int getDeleteProductId() {
        return deleteProductId;
    }

    public void setDeleteProductId(int deleteProductId) {
        this.deleteProductId = deleteProductId;
    }

    public int getDecreaseProductId() {
        return decreaseProductId;
    }

    public void setDecreaseProductId(int decreaseProductId) {
        this.decreaseProductId = decreaseProductId;
    }

    public int getIncreaseProductId() {
        return increaseProductId;
    }

    public void setIncreaseProductId(int increaseProductId) {
        this.increaseProductId = increaseProductId;
    }
}

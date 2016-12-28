package com.dto;

import com.model.Images;
import com.model.Products;

/**
 * Created by noowaay on 11/06/2016.
 */
public class ProductDto {
    Products product;
    Images image;

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

    public Images getImage() {
        return image;
    }

    public void setImage(Images image) {
        this.image = image;
    }
}

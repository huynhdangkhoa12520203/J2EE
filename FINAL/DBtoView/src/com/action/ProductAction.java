package com.action;

import com.dao.CategoriesDaoImpl;
import com.dao.ProductsDaoImpl;
import com.model.Categories;
import com.model.Products;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by user on 6/1/2016.
 */
public class ProductAction extends ActionSupport{
    private int currentProductId;
    private int currentCategoryId;
    private Products detailProduct;
    private Categories detailCategory;
    private List<Categories> categoriesList;
    private CategoriesDaoImpl categoryDao = new CategoriesDaoImpl();

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String productsList(){
        detailCategory = categoryDao.findByID(currentCategoryId);
        categoriesList = categoryDao.findAllCategories();
        return SUCCESS;
    }

    public String productDetail(){
        ProductsDaoImpl productsDao = new ProductsDaoImpl();
        detailProduct = productsDao.findByID(currentProductId);
        categoriesList = categoryDao.findAllCategories();
        return SUCCESS;
    }

    public int getCurrentProductId() {
        return currentProductId;
    }

    public void setCurrentProductId(int currentProductId) {
        this.currentProductId = currentProductId;
    }

    public Products getDetailProduct() {
        return detailProduct;
    }

    public void setDetailProduct(Products detailProduct) {
        this.detailProduct = detailProduct;
    }

    public List<Categories> getCategoriesList() {
        return categoriesList;
    }

    public void setCategoriesList(List<Categories> categoriesList) {
        this.categoriesList = categoriesList;
    }

    public int getCurrentCategoryId() {
        return currentCategoryId;
    }

    public void setCurrentCategoryId(int currentCategoryId) {
        this.currentCategoryId = currentCategoryId;
    }

    public Categories getDetailCategory() {
        return detailCategory;
    }

    public void setDetailCategory(Categories detailCategory) {
        this.detailCategory = detailCategory;
    }
}

package com.action;


import com.dao.CategoriesDaoImpl;
import com.dao.ImagesDaoImpl;

import com.dao.ProductsDaoImpl;
import com.model.*;

import com.opensymphony.xwork2.ActionSupport;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by user on 6/1/2016.
 */
public class HomePageAction extends ActionSupport {
    private CategoriesDaoImpl categoriesDao;
    private List<Categories> categoriesList;

    @Override
    public String execute() throws Exception {
        categoriesDao = new CategoriesDaoImpl();
        categoriesList = categoriesDao.findAllCategories();
        return SUCCESS;
    }

    public List<Categories> getCategoriesList() {
        return categoriesList;
    }

    public void setCategoriesList(List<Categories> categoriesList) {
        this.categoriesList = categoriesList;
    }
}

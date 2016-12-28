package com.action;

import com.dao.ProductsDao;
import com.dao.ProductsDaoImpl;
import com.model.Products;
import com.opensymphony.xwork2.ActionSupport;
import java.lang.String;
import java.awt.*;
import java.util.List;

/**
 * Created by NguyenThi on 6/12/2016.
 */
public class ProductList extends ActionSupport {
    private String keyword;
    private List<Products> products;
    ProductsDaoImpl new2=new ProductsDaoImpl();

    @Override
    public String execute() throws Exception {
        products = new2.getProductsByName(keyword);
        return SUCCESS;
    }
    public void setKeyword(String keyword)
    {
        this.keyword=keyword;
    }
    public String getKeyword(){
        return keyword;
    }
}

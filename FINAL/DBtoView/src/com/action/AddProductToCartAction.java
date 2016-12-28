package com.action;

import com.model.CartProduct;
import com.model.Products;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.dao.ProductsDaoImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by NguyenThi on 6/12/2016.
 */
public class AddProductToCartAction extends ActionSupport{
    private int productID;
    private ProductsDaoImpl productsDao=new ProductsDaoImpl();

    public String execute() throws Exception {
        List<CartProduct> cart =(List<CartProduct>) ActionContext.getContext().getSession().get("cart");

        if(cart == null)
        {
            cart =new ArrayList<CartProduct>();
        }

        try {
            Products p= productsDao.findByID(productID);
            if (p != null){
                cart.add(new CartProduct(p,1));
            }
        } catch (Exception e){
            return ERROR;
        }
        ActionContext.getContext().getSession().put("cart", cart);
        return SUCCESS;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }
}

package com.action.admin;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by user on 6/1/2016.
 */
public class ReviewsAction extends ActionSupport {
    @Override
    public String execute() throws Exception {
        System.out.println("test reviews admin");
        return SUCCESS;
    }

    public String reviews()  throws Exception {
        return SUCCESS;
    }
}

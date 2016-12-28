package com.action;

import com.dao.BlogDao;
import com.dao.BlogDaoImpl;
import com.dao.CategoriesDaoImpl;
import com.model.Blog;
import com.model.Categories;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by user on 6/2/2016.
 */
public class BlogAction extends ActionSupport {
    private List<Blog> blogList;
    private List<Categories> categoriesList;
    private BlogDaoImpl blogDao = new BlogDaoImpl();
    private CategoriesDaoImpl categoriesDao = new CategoriesDaoImpl();

    @Override
    public String execute() throws Exception {
        blogList = blogDao.findAllBlogs();
        categoriesList = categoriesDao.findAllCategories();
        return SUCCESS;
    }

    public String blogDetail() throws Exception {
        return SUCCESS;
    }

    public List<Blog> getBlogList() {
        return blogList;
    }

    public void setBlogList(List<Blog> blogList) {
        this.blogList = blogList;
    }

    public List<Categories> getCategoriesList() {
        return categoriesList;
    }

    public void setCategoriesList(List<Categories> categoriesList) {
        this.categoriesList = categoriesList;
    }
}

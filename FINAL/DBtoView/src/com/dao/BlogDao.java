package com.dao;

import com.model.Blog;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface BlogDao {
    Blog findByID(int blogID);

    List<Blog> findAllBlogs();

    public Blog getBlogsByUserId(String userId);
}

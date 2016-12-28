package com.dao;

import com.model.Blog;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class BlogDaoImpl implements BlogDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();

    @Override
    public Blog findByID(int blogID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Blog.class);
        criteria.add(Restrictions.eq("id",blogID));
        return (Blog) criteria.uniqueResult();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Blog> findAllBlogs() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Blog.class);
        return (List<Blog>) criteria.list();
    }

    @Override
    public Blog getBlogsByUserId(String userId) {
        session.beginTransaction();
        String hql = "FROM com.model.Blog I WHERE I.user = :userId";
        Query query = session.createQuery(hql);
        query.setString("userId", userId);
        Blog results =  (Blog) query.uniqueResult();
        return  results;
    }
}

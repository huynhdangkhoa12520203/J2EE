package com.dao;

import com.model.Products;
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
public class ProductsDaoImpl implements ProductsDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Products findByID(int productID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Products.class);
        criteria.add(Restrictions.eq("productId",productID));
        return (Products) criteria.uniqueResult();
    }

    @Override
    public void saveProducts(Products product) {
        session.beginTransaction();
        session.persist(product);
        session.getTransaction().commit();
    }

    @Override
    public void deleteProductsByID(int productID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Products.class, productID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateProducts(Products product) {
        session.beginTransaction();
        session.update(product);
        session.getTransaction().commit();
    }

    @Override
    public List<Products> getProductsByName(String keyword) {

        session.beginTransaction();
        Criteria criteria = session.createCriteria(Products.class);
        return (List<Products>) criteria.list();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Products> findAllProducts() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Products.class);
        return (List<Products>) criteria.list();
    }
    @Override
    public List<Products> getListProductsByType(String categoryId)
    {
        session.beginTransaction();
        String hql = "FROM com.model.Products P WHERE P.categories = :productType";
        Query query = session.createQuery(hql);
        query.setString("productType", categoryId);
        List results = query.list();
        return (List<Products>) results;
    }
}

package com.dao;

import com.model.Productoption;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class ProductoptionDaoImpl implements ProductoptionDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Productoption findByID(int productOptionID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Productoption.class);
        criteria.add(Restrictions.eq("productOptionId",productOptionID));
        return (Productoption) criteria.uniqueResult();
    }

    @Override
    public void saveProductoption(Productoption productOption) {
        session.beginTransaction();
        session.persist(productOption);
        session.getTransaction().commit();
    }

    @Override
    public void deleteProductoptionByID(int productOptionID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Productoption.class, productOptionID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateProductoption(Productoption productOption) {
        session.beginTransaction();
        session.update(productOption);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Productoption> findAllProductoption() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Productoption.class);
        return (List<Productoption>) criteria.list();
    }
}

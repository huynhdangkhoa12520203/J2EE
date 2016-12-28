package com.dao;

import com.model.Categories;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class CategoriesDaoImpl implements CategoriesDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Categories findByID(int categoryID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Categories.class);
        criteria.add(Restrictions.eq("categoryId",categoryID));
        return (Categories) criteria.uniqueResult();
    }

    @Override
    public void saveCategories(Categories category) {
        session.beginTransaction();
        session.persist(category);
        session.getTransaction().commit();
    }

    @Override
    public void deleteCategoriesByID(int categoryID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Categories.class, categoryID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateCategories(Categories category) {
        session.beginTransaction();
        session.update(category);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Categories> findAllCategories() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Categories.class);
        return (List<Categories>) criteria.list();
    }
}

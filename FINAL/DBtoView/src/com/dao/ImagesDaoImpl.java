package com.dao;

import com.model.Images;
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
public class ImagesDaoImpl implements ImagesDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Images findByID(int imageID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Images.class);
        criteria.add(Restrictions.eq("id",imageID));
        return (Images) criteria.uniqueResult();
    }

    @Override
    public void saveImages(Images image) {
        session.beginTransaction();
        session.persist(image);
        session.getTransaction().commit();
    }

    @Override
    public void deleteImagesByID(int imageID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Images.class, imageID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateImages(Images image) {
        session.beginTransaction();
        session.update(image);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Images> findAllImages() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Images.class);
        return (List<Images>) criteria.list();
    }
    @Override
    public Images getImagesByProductId(String productId)
    {
        session.beginTransaction();
        String hql = "FROM com.model.Images I WHERE I.products = :productId";
        Query query = session.createQuery(hql);
        query.setString("productId", productId);
        Images results =  (Images) query.uniqueResult();
        return  results;
    }
}

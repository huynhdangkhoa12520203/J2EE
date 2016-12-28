package com.dao;

import com.model.Tags;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class TagsDaoImpl implements TagsDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Tags findByID(int tagID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Tags.class);
        criteria.add(Restrictions.eq("tagId",tagID));
        return (Tags) criteria.uniqueResult();
    }

    @Override
    public void saveTags(Tags tag) {
        session.beginTransaction();
        session.persist(tag);
        session.getTransaction().commit();
    }

    @Override
    public void deleteTagsByID(int tagID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Tags.class, tagID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateTags(Tags tag) {
        session.beginTransaction();
        session.update(tag);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Tags> findAllTags() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Tags.class);
        return (List<Tags>) criteria.list();
    }
}

package com.dao;

import com.model.Test;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class TestDaoImpl implements TestDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Test findByID(int optionID){
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Test.class);
        criteria.add(Restrictions.eq("optionId",optionID));
        return (Test) criteria.uniqueResult();
    }

    @Override
    public void saveTest(Test test) {
        session.beginTransaction();
        session.persist(test);
        session.getTransaction().commit();
    }

    @Override
    public void deleteTestByID(int optionID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Test.class, optionID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateTest(Test test){
        session.beginTransaction();
        session.update(test);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Test> findAllTest() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Test.class);
        return (List<Test>) criteria.list();
    }
}

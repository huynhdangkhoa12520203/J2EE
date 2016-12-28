package com.dao;

import com.model.Options;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class OptionsDaoImpl implements OptionsDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Options findByID(int optionID){
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Options.class);
        criteria.add(Restrictions.eq("optionId",optionID));
        return (Options) criteria.uniqueResult();
    }

    @Override
    public void saveOptions(Options option) {
        session.beginTransaction();
        session.persist(option);
        session.getTransaction().commit();
    }

    @Override
    public void deleteOptionsByID(int optionID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Options.class, optionID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateOptions(Options option){
        session.beginTransaction();
        session.update(option);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Options> findAllOptions() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Options.class);
        return (List<Options>) criteria.list();
    }
}

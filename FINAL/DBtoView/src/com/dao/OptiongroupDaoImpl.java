package com.dao;

import com.model.Optiongroup;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class OptiongroupDaoImpl implements OptiongroupDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Optiongroup findByID(int optionGroupID){
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Optiongroup.class);
        criteria.add(Restrictions.eq("optionGroupId",optionGroupID));
        return (Optiongroup) criteria.uniqueResult();
    }

    @Override
    public void saveOptiongroup(Optiongroup optionGroup) {
        session.beginTransaction();
        session.persist(optionGroup);
        session.getTransaction().commit();
    }

    @Override
    public void deleteOptiongroupByID(int optionGroupID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Optiongroup.class, optionGroupID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateOptiongroup(Optiongroup optionGroup){
        session.beginTransaction();
        session.update(optionGroup);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Optiongroup> findAllOptiongroup() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Optiongroup.class);
        return (List<Optiongroup>) criteria.list();
    }
}

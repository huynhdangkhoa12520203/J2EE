package com.dao;

import com.model.Roles;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class RolesDaoImpl implements RolesDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Roles findByID(int roleID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Roles.class);
        criteria.add(Restrictions.eq("roleId",roleID));
        return (Roles) criteria.uniqueResult();
    }

    @Override
    public void saveRoles(Roles role) {
        session.beginTransaction();
        session.persist(role);
        session.getTransaction().commit();
    }

    @Override
    public void deleteRolesByID(int roleID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Roles.class, roleID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateRoles(Roles role) {
        session.beginTransaction();
        session.update(role);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Roles> findAllRoles() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Roles.class);
        return (List<Roles>) criteria.list();
    }
}

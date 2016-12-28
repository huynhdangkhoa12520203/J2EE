package com.dao;

import com.model.Users;
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
public class UsersDaoImpl implements UsersDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();


    @Override
    public List<Users> findByUsername(String userName) {
        session.beginTransaction();
        String hql = "FROM com.model.Users U WHERE U.username = :username";
        Query query = session.createQuery(hql);
        query.setString("username", userName);
        List results = query.list();
        return (List<Users>) results;
    }

    @Override
    public Users findByID(int userID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Users.class);
        criteria.add(Restrictions.eq("userId",userID));
        return (Users) criteria.uniqueResult();
    }

    @Override
    public void saveUsers(Users user) {
        session.beginTransaction();
        session.persist(user);
        session.getTransaction().commit();
    }

    @Override
    public void deleteUsersByID(int userID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Users.class, userID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateUsers(Users user) {
        session.beginTransaction();
        session.update(user);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Users> findAllUsers() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Users.class);
        return (List<Users>) criteria.list();
    }
}

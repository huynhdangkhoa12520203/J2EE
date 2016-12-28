package com.dao;

import com.model.Contact;
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
public class ContactDaoImpl implements ContactDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();


    @Override
    public Contact findByID(int contactID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Contact.class);
        criteria.add(Restrictions.eq("contactID",contactID));
        return (Contact) criteria.uniqueResult();
    }

    @Override
    public void saveContact(Contact contact) {
        session.beginTransaction();
        session.persist(contact);
        session.getTransaction().commit();
    }

    @Override
    public void deleteContactByID(int contact) {
        session.beginTransaction();
        Object persistentInstance = session.load(Contact.class, contact);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateContact(Contact contact) {
        session.beginTransaction();
        session.update(contact);
        session.getTransaction().commit();
    }

    @Override
    public List<Contact> findAllContact() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Contact.class);
        return (List<Contact>) criteria.list();
    }


}

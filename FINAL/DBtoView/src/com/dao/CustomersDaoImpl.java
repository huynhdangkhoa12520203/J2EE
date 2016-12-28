package com.dao;

import com.model.Customers;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class CustomersDaoImpl implements CustomersDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Customers findByID(int customerID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Customers.class);
        criteria.add(Restrictions.eq("customerId",customerID));
        return (Customers) criteria.uniqueResult();
    }

    @Override
    public void saveCustomers(Customers customer) {
        session.beginTransaction();
        session.persist(customer);
        session.getTransaction().commit();
    }

    @Override
    public void deleteCustomersByID(int customerID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Customers.class, customerID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateCustomers(Customers customer) {
        session.beginTransaction();
        session.update(customer);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Customers> findAllCustomers() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Customers.class);
        return (List<Customers>) criteria.list();
    }

    @Override
    public Long count(){
        session.beginTransaction();
        Long count = (Long) session.createQuery("select count(*) from Customers").uniqueResult();
        return count;
    }
}

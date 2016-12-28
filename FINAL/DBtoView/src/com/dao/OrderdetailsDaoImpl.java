package com.dao;

import com.model.Orderdetails;
import com.model.OrderdetailsId;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class OrderdetailsDaoImpl implements OrderdetailsDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Orderdetails findByID(OrderdetailsId orderDetailID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Orderdetails.class);
        criteria.add(Restrictions.eq("id",orderDetailID));
        return (Orderdetails) criteria.uniqueResult();
    }

    @Override
    public void saveOrderdetails(Orderdetails orderDetail) {
        session.beginTransaction();
        session.persist(orderDetail);
        session.getTransaction().commit();
    }

    @Override
    public void deleteOrderdetailsByID(OrderdetailsId orderDetailID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Orderdetails.class, orderDetailID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateOrderdetails(Orderdetails orderDetail) {
        session.beginTransaction();
        session.update(orderDetail);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Orderdetails> findAllOrderdetails() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Orderdetails.class);
        return (List<Orderdetails>) criteria.list();
    }
}

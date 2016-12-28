package com.dao;

import com.model.Orders;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class OrdersDaoImpl implements OrdersDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Orders findByID(int orderID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Orders.class);
        criteria.add(Restrictions.eq("orderId",orderID));
        return (Orders) criteria.uniqueResult();
    }

    @Override
    public void saveOrders(Orders order) {
        session.beginTransaction();
        session.persist(order);
        session.getTransaction().commit();
    }

    @Override
    public void deleteOrdersByID(int orderID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Orders.class, orderID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateOrders(Orders order) {
        session.beginTransaction();
        session.update(order);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Orders> findAllOrders() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Orders.class);
        return (List<Orders>) criteria.list();
    }

    @Override
    public Long count(){
        session.beginTransaction();
        Long count = (Long) session.createQuery("select count(*) from Orders").uniqueResult();
        return count;
    }
}

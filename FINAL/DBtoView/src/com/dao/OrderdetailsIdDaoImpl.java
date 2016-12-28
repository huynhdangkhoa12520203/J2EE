package com.dao;

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
public class OrderdetailsIdDaoImpl implements OrderdetailsIdDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public OrderdetailsId findByID(int orderDetailIdID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(OrderdetailsId.class);
        criteria.add(Restrictions.eq("orderId",orderDetailIdID));
        return (OrderdetailsId) criteria.uniqueResult();
    }

    @Override
    public void saveOrderdetailsId(OrderdetailsId orderDetailId) {
        session.beginTransaction();
        session.persist(orderDetailId);
        session.getTransaction().commit();
    }

    @Override
    public void deleteOrderdetailsIdByID(int orderDetailIdID) {
        session.beginTransaction();
        Object persistentInstance = session.load(OrderdetailsId.class, orderDetailIdID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateOrderdetailsId(OrderdetailsId orderDetailId) {
        session.beginTransaction();
        session.update(orderDetailId);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<OrderdetailsId> findAllOrderdetailsId() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(OrderdetailsId.class);
        return (List<OrderdetailsId>) criteria.list();
    }
}

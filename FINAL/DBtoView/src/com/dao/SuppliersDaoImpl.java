package com.dao;

import com.model.Suppliers;
import com.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public class SuppliersDaoImpl implements SuppliersDao {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
    Session session = this.sessionFactory.openSession();
    @Override
    public Suppliers findByID(int supplierID) {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Suppliers.class);
        criteria.add(Restrictions.eq("supplierId",supplierID));
        return (Suppliers) criteria.uniqueResult();
    }

    @Override
    public void saveSuppliers(Suppliers supplier) {
        session.beginTransaction();
        session.persist(supplier);
        session.getTransaction().commit();
    }

    @Override
    public void deleteSuppliersByID(int supplierID) {
        session.beginTransaction();
        Object persistentInstance = session.load(Suppliers.class, supplierID);
        if (persistentInstance != null) {
            session.delete(persistentInstance);
        }
        session.getTransaction().commit();
    }

    @Override
    public void updateSuppliers(Suppliers supplier) {
        session.beginTransaction();
        session.update(supplier);
        session.getTransaction().commit();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Suppliers> findAllSuppliers() {
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Suppliers.class);
        return (List<Suppliers>) criteria.list();
    }
}

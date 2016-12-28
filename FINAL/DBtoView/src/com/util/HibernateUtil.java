package com.util;

/**
 * Created by noowaay on 07/06/2016.
 */

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import  com.model.*;

public class HibernateUtil {

    //XML based configuration
    private static SessionFactory sessionFactory;

    //Annotation based configuration
    private static SessionFactory sessionAnnotationFactory;

    //Property based configuration
    private static SessionFactory sessionJavaConfigFactory;

    private static SessionFactory buildSessionFactory() {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            Configuration configuration = new Configuration();
            configuration.configure("hibernate.cfg.xml");
            System.out.println("Hibernate Configuration loaded");

            configuration.addAnnotatedClass(Categories.class);
            configuration.addAnnotatedClass(Contact.class);
            configuration.addAnnotatedClass(Customers.class);
            configuration.addAnnotatedClass(Options.class);
            configuration.addAnnotatedClass(Orders.class);
            configuration.addAnnotatedClass(Products.class);
            configuration.addAnnotatedClass(Roles.class);
            configuration.addAnnotatedClass(Suppliers.class);
            configuration.addAnnotatedClass(Users.class);
            configuration.addAnnotatedClass(Images.class);
            configuration.addAnnotatedClass(Optiongroup.class);
            configuration.addAnnotatedClass(Productoption.class);
            configuration.addAnnotatedClass(Orderdetails.class);
            configuration.addAnnotatedClass(OrderdetailsId.class);
            configuration.addAnnotatedClass(Roles.class);
            configuration.addAnnotatedClass(Tags.class);


            System.out.println(configuration.getProperties());

            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
            System.out.println("Hibernate serviceRegistry created");

            SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);

            return sessionFactory;
        }
        catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    private static SessionFactory buildSessionAnnotationFactory() {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            Configuration configuration = new Configuration();
            configuration.configure("Spring-Hibernate-Annotation.cfg.xml");
            System.out.println("Hibernate Annotation Configuration loaded");

            configuration.addAnnotatedClass(Categories.class);
            configuration.addAnnotatedClass(Blog.class);
            configuration.addAnnotatedClass(Customers.class);
            configuration.addAnnotatedClass(Options.class);
            configuration.addAnnotatedClass(Orders.class);
            configuration.addAnnotatedClass(Products.class);
            configuration.addAnnotatedClass(Roles.class);
            configuration.addAnnotatedClass(Suppliers.class);
            configuration.addAnnotatedClass(Users.class);
            configuration.addAnnotatedClass(Images.class);
            configuration.addAnnotatedClass(Optiongroup.class);
            configuration.addAnnotatedClass(Productoption.class);
            configuration.addAnnotatedClass(Orderdetails.class);
            configuration.addAnnotatedClass(OrderdetailsId.class);
            configuration.addAnnotatedClass(Roles.class);
            configuration.addAnnotatedClass(Tags.class);

            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
            System.out.println("Hibernate Annotation serviceRegistry created");

            SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);

            return sessionFactory;
        }
        catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    private static SessionFactory buildSessionJavaConfigFactory() {
        try {
            Configuration configuration = new Configuration();

            //Create Properties, can be read from property files too
            Properties props = new Properties();
            props.put("hibernate.connection.characterEncoding", "UTF-8");
            props.put("hibernate.connection.driver_class", "com.mysql.jdbc.Driver");
            props.put("hibernate.connection.url", "jdbc:mysql://localhost/thoitrang_1");
            props.put("hibernate.connection.username", "root");
            props.put("hibernate.connection.password", "");
            props.put("hibernate.current_session_context_class", "thread");

            configuration.setProperties(props);

            /*Properties props = new Properties();
            props.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
            props.put("hibernate.connection.characterEncoding", "UTF-8");
            props.put("hibernate.connection.driver_class", "com.mysql.jdbc.Driver");
            props.put("hibernate.connection.url", "jdbc:mysql://localhost/thoitrang");
            props.put("hibernate.connection.username", "root");
            props.put("hibernate.connection.password", "");
            props.put("hibernate.show_sql", "true");
            props.put("hibernate.connection.pool_size", "10");
            props.put("hibernate.hbm2ddl.auto", "update");

            configuration.setProperties(props);*/

            //we can set mapping file or class with annotation
            //addClass(Employee1.class) will look for resource
            // com/journaldev/hibernate/model/Employee1.hbm.xml (not good)
            //configuration.addAnnotatedClass(Employee1.class);

            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
            System.out.println("Hibernate Java Config serviceRegistry created");

            SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);

            return sessionFactory;
        }
        catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        if(sessionFactory == null) sessionFactory = buildSessionFactory();
        return sessionFactory;
    }

    public static SessionFactory getSessionAnnotationFactory() {
        if(sessionAnnotationFactory == null) sessionAnnotationFactory = buildSessionAnnotationFactory();
        return sessionAnnotationFactory;
    }

    public static SessionFactory getSessionJavaConfigFactory() {
        if(sessionJavaConfigFactory == null) sessionJavaConfigFactory = buildSessionJavaConfigFactory();
        return sessionJavaConfigFactory;
    }

    public static void shutdown() {
        // Close caches and connection pools
        // Giải phóng cache và Connection Pools.
        getSessionFactory().close();
    }
}
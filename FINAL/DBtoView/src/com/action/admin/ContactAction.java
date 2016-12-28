package com.action.admin;

import com.dao.ContactDao;
import com.dao.ContactDaoImpl;
import com.model.Contact;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by user on 6/1/2016.
 */
public class ContactAction extends ActionSupport {
    private ContactDaoImpl contactDao = new ContactDaoImpl();
    private List<Contact> list;
    @Override
    public String execute() throws Exception {
        System.out.println("test contact admin");
        return SUCCESS;
    }

    public String contacts() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test list categories admin");
        list = contactDao.findAllContact();
        System.out.println(list.size());
        for (Contact contact : list) {
            System.out.println("contact: " + contact.getEmail());
        }
        return SUCCESS;
    }

    public List<Contact> getList() {
        return list;
    }
}

package com.dao;

import com.model.Contact;
import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface ContactDao {

    Contact findByID(int contactID);

    void saveContact(Contact contact);

    void deleteContactByID(int contact);

    void updateContact(Contact contact);

    List<Contact> findAllContact();
}

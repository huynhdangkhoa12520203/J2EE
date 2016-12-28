package com.action;

import com.dao.ContactDaoImpl;
import com.model.Contact;
import com.model.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;
import java.util.Map;

/**
 * Created by user on 6/1/2016.
 */
public class ContactAction extends ActionSupport{
    private Contact contactBean;
    private String feedBackContact;
    @Override
    public String execute() throws Exception {
        //get input
        String nameContactInput = contactBean.getName().trim();
        String emailContactInput = contactBean.getEmail().trim();
        String titleContactInput = contactBean.getTitle().trim();
        String contentContactInput = contactBean.getContent().trim();
        Map session = ActionContext.getContext().getSession();
        //check correct input
        if(nameContactInput.equals("") || emailContactInput.equals("") ||
                titleContactInput.equals("") || contentContactInput.equals(""))
        {
            feedBackContact = "Vui lòng nhập đủ thông tin!";
        }
        else
        {
            //save
            try
            {
                Contact contact = new Contact();
                contact.setName(nameContactInput);
                contact.setEmail(emailContactInput);
                contact.setTitle(titleContactInput);
                contact.setContent(contentContactInput);
                ContactDaoImpl contactDao = new ContactDaoImpl();
                contactDao.saveContact(contact);
                feedBackContact = "Bạn đã gửi liên hệ thành công!";

            }
            catch (Exception ex)
            {
                System.out.println(ex.getMessage());
                feedBackContact = "Liên hệ gửi không thành công, vui lòng thử lại";
            }
        }


        return SUCCESS;
    }
    public String viewContact() throws  Exception
    {
        return SUCCESS;
    }

    public Contact getContactBean() {
        return contactBean;
    }

    public void setContactBean(Contact contactBean) {
        this.contactBean = contactBean;
    }

    public String getFeedBackContact() {
        return feedBackContact;
    }

    public void setFeedBackContact(String feedBackContact) {
        this.feedBackContact = feedBackContact;
    }
}

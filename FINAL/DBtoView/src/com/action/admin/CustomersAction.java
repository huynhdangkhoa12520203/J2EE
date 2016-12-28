package com.action.admin;

import com.dao.CustomersDaoImpl;
import com.model.Customers;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by user on 6/1/2016.
 */
public class CustomersAction extends ActionSupport {
    private CustomersDaoImpl customersDao = new CustomersDaoImpl();
    private List<Customers> list;
    private List<String> selected;
    private Customers customer_add = new Customers();
    private Customers customer_edit = new Customers();

    private String action = null;
    @Override
    public String execute() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test customers admin");
        return SUCCESS;
    }

    public String customers() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test list customers admin");
        list = customersDao.findAllCustomers();

        return SUCCESS;
    }

    public String modifyCustomer() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test modify customer admin");
        HttpServletRequest request;
        String editId;

        System.out.println("action: " + action);
        try {
            request = ServletActionContext.getRequest();
            editId = request.getParameter("customerId");
            System.out.println("customerId: " + editId);
            if (editId != null) {
                customer_edit = customersDao.findByID(Integer.parseInt(editId));
            }

            if (action != null) {
                if (action.equals("Save")) {
                    System.out.println("add");
                    Customers insert = new Customers();
                    System.out.println("address1: " + customer_add.getAddress1());
                    insert.setName(customer_add.getName());
                    insert.setEmail(customer_add.getEmail());
                    insert.setPhone(customer_add.getPhone());
                    insert.setFax(customer_add.getFax());
                    insert.setAddress1(customer_add.getAddress1());
                    insert.setAddress2(customer_add.getAddress2());
                    insert.setZip(customer_add.getZip());
                    insert.setPassword("123456");

                    customersDao.saveCustomers(insert);
                    System.out.println("add ok");
                    return "added";
                }

                if (action.equals("Edit")) {
                    editId = request.getParameter("customerId");
                    Customers edit = customersDao.findByID(Integer.parseInt(editId));

                    edit.setName(request.getParameter("name"));
                    edit.setEmail(request.getParameter("email"));
                    edit.setPhone(request.getParameter("phone"));
                    edit.setFax(request.getParameter("fax"));
                    edit.setAddress1(request.getParameter("address1"));
                    edit.setAddress2(request.getParameter("address2"));
                    edit.setZip(request.getParameter("zip"));
                    //edit.setPassword(request.getParameter("password"));

                    customersDao.updateCustomers(edit);
                    System.out.println("edit ok");
                    return "edited";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return SUCCESS;
    }

    public String deleteCustomer() throws  Exception {
        HttpServletRequest request;
        String[] listCustomersId;
        System.out.println("--------------------------");
        try {
            request = ServletActionContext.getRequest();
            listCustomersId = request.getParameterValues("selected");

            if (action.equals("Delete")) {
                System.out.println("delete");
                for (String id : listCustomersId) {
                    customersDao.deleteCustomersByID(Integer.parseInt(id));
                }
                System.out.println("delete ok");
                return "deleted";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }
    public List<Customers> getList() {
        return list;
    }

    public List<String> getSelected() {
        return selected;
    }

    public void setSelected(List<String> selected) {
        this.selected = selected;
    }

    public Customers getCustomer_add() {
        return customer_add;
    }

    public void setCustomer_add(Customers customer_add) {
        this.customer_add = customer_add;
    }

    public Customers getCustomer_edit() {
        return customer_edit;
    }

    public void setCustomer_edit(Customers customer_edit) {
        this.customer_edit = customer_edit;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }
}

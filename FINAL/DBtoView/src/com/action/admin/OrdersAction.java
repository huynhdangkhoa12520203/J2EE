package com.action.admin;

import com.dao.*;
import com.dto.OrderDto;
import com.dto.ProductDto;
import com.model.*;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * Created by user on 6/1/2016.
 */
public class OrdersAction extends ActionSupport {
    private final String defaultImagePath = "/images/home/default.png";

    private OrdersDaoImpl ordersDao = new OrdersDaoImpl();
    private OrderdetailsDaoImpl orderdetailsDao = new OrderdetailsDaoImpl();
    private ProductsDaoImpl productsDao = new ProductsDaoImpl();
    private CustomersDaoImpl customersDao = new CustomersDaoImpl();
    private List<Orders> list;
    private List<OrderDto> listDto;
    private List<String> selected;
    private List<Products> listProducts;
    private Set<Orderdetails> listProductsInOrder;
    private Set<Orderdetails> listOrderdetails;
    private Orders order_add = new Orders();
    private Orders order_edit = new Orders();
    private Customers customers;
    private Products products;

    private String action = null;
    @Override
    public String execute() throws Exception {
        System.out.println("test orders admin");
        return SUCCESS;
    }

    public String orders() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test list orders admin");
        listDto = new ArrayList<OrderDto>();
        list = ordersDao.findAllOrders();
        double total = 0;
        for (Orders order : list) {
            OrderDto add = new OrderDto();
            add.setOrder(order);
            System.out.println("order id: " + order.getOrderId());
            add.setTotal(this.orderTotal(order.getOrderdetailses()));
            System.out.println("total: " + this.orderTotal(order.getOrderdetailses()));
            listDto.add(add);
        }
        return SUCCESS;
    }

    public String modifyOrder() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test modify order admin");

        HttpServletRequest request;
        String editId;

        System.out.println("action: " + action);
        try {
            request = ServletActionContext.getRequest();
            editId = request.getParameter("orderId");
            System.out.println("orderId: " + editId);
            if (editId != null) {
                order_edit = ordersDao.findByID(Integer.parseInt(editId));
                listProducts = productsDao.findAllProducts();
                listProductsInOrder = order_edit.getOrderdetailses();
                System.out.println("list product in order size: " + listProductsInOrder.size());
            }

            if (action != null) {
                if (action.equals("Save")) {
                    System.out.println("add");
                    Orders insert = new Orders();
                    Customers customersAdd = new Customers();
                    customersAdd.setName(customers.getName());
                    customersAdd.setEmail(customers.getEmail());
                    customersAdd.setPhone(customers.getPhone());
                    customersAdd.setAddress1(customers.getAddress1());
                    customersAdd.setZip(customers.getZip());
                    customersAdd.setPassword("123456");

                    customersDao.saveCustomers(customersAdd);
                    System.out.println("add customers ok");

                    Date date = new Date();
                    System.out.println("date: " + date);
                    insert.setOrderDate(date);
                    insert.setRequireDate(date);
                    insert.setShippedDate(date);
                    insert.setCustomers(customersAdd);
                    insert.setShipAddress(order_add.getShipAddress());
                    insert.setShipCity(order_add.getShipCity());
                    insert.setShipRegion(order_add.getShipRegion());

                    ordersDao.saveOrders(insert);
                    System.out.println("add ok");
                    return "added";
                }

                if (action.equals("Edit")) {
                    System.out.println("edit");
                    editId = request.getParameter("orderId");
                    listOrderdetails = new HashSet<Orderdetails>();
                    Orders edit = ordersDao.findByID(Integer.parseInt(editId));
                    System.out.println("id of product: " + request.getParameter("product"));
                    String[] listProductsId;
                    String[] listQuantity;
                    listProductsId = request.getParameterValues("selected");
                    listQuantity = request.getParameterValues("quantityList");

                    Orderdetails add;
                    OrderdetailsId orderdetailsId;
                    Products addProduct;
                    double price;
                    System.out.println("list product add:");
                    int length = 0;

                    //edit products
                    if (listProductsId != null) {
                        length = listProductsId.length;
                        System.out.println("length product Id: " + listProductsId.length);
                        System.out.println("length quantity Id: " + listQuantity.length);
                    }
                    for (int i = 0; i < length; i++) {
                        System.out.println("product: " + listProductsId[i]);
                        System.out.println("quantity: " + listQuantity[i]);
                        orderdetailsId = new OrderdetailsId();
                        orderdetailsId.setOrderId(edit.getOrderId());
                        orderdetailsId.setProductId(Integer.parseInt(listProductsId[i]));
                        int quantity = Integer.parseInt(listQuantity[i]);

                        System.out.println("product Id: " + orderdetailsId.getProductId());

                        addProduct = productsDao.findByID(orderdetailsId.getProductId());

                        add = new Orderdetails();
                        add = orderdetailsDao.findByID(orderdetailsId);
                        if (add == null) {
                            Orderdetails add2 = new Orderdetails();
                            orderdetailsId.setOrderId(Integer.parseInt(editId));
                            orderdetailsId.setProductId(addProduct.getProductId());
                            System.out.println("order id: " + orderdetailsId.getOrderId());
                            System.out.println("product id: " + addProduct.getProductId());

                            System.out.println("add detail");
                            add2.setProducts(addProduct);
                            //price = productsDao.findByID(Integer.parseInt(listProductsId[i])).getPrice();
                            price = addProduct.getPrice();
                            System.out.println("price: " + price);
                            add2.setPrice(price);
                            add2.setQuanlity(quantity);
                            add2.setDiscount(0.0);
                            add2.setId(orderdetailsId);

                            //save order details

                            orderdetailsDao.saveOrderdetails(add2);
                        } else {
                            System.out.println("update detail");
                            add.setOrders(edit);
                            price = addProduct.getPrice();
                            System.out.println("price: " + price);
                            add.setPrice(price);
                            add.setQuanlity(quantity);
                            add.setDiscount(0.0);
                            add.setProducts(addProduct);

                            orderdetailsDao.updateOrderdetails(add);
                        }
                        listOrderdetails.add(add);
                    }
                    //end edit products
                    Customers editCustomers = new Customers();
                    String customerId = request.getParameter("customerId");
                    editCustomers = customersDao.findByID(Integer.parseInt(customerId));

                    //edit customer
                    editCustomers.setName(request.getParameter("customerName"));
                    editCustomers.setEmail(request.getParameter("customerEmail"));
                    /*editCustomers.setPhone(request.getParameter("customerPhone"));
                    editCustomers.setFax(request.getParameter("customerPhone"));
                    editCustomers.setAddress1(request.getParameter("customerAddress1"));
                    editCustomers.setAddress2(request.getParameter("customerAddress2"));
                    editCustomers.setZip(request.getParameter("customerZip"));
                    editCustomers.setCountry(request.getParameter("customerCountry"));
                    editCustomers.setPassword("123456");*/

                    System.out.println(editCustomers.getName());
                    //end edit customer

                    edit.setShipAddress(request.getParameter("shipAddress"));
                    edit.setShipCity(request.getParameter("shipCity"));
                    edit.setShipRegion(request.getParameter("shipRegion"));
                    //edit.setCustomers(editCustomers);
                    edit.setOrderdetailses(listOrderdetails);
                    System.out.println(edit.getCustomers().getName());
                    ordersDao.updateOrders(edit);
                    System.out.println("edit ok");
                    return "edited";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return SUCCESS;
    }

    public String deleteOrder() throws  Exception {
        HttpServletRequest request;
        String[] listOrdersId;
        System.out.println("--------------------------");
        try {
            request = ServletActionContext.getRequest();
            listOrdersId = request.getParameterValues("selected");
            System.out.println("delete");

            if (action.equals("Delete")) {
                System.out.println("delete");
                for (String id : listOrdersId) {
                    System.out.println(id);
                    ordersDao.deleteOrdersByID(Integer.parseInt(id));
                }
                System.out.println("delete ok");
                return "deleted";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    private double orderTotal(Set<Orderdetails> setOrders) {
        double total = 0;
        for (Orderdetails orderdetail : setOrders) {
            total = total + orderdetail.getPrice()*orderdetail.getQuanlity();
        }
        return total;
    }

    public List<Orders> getList() {
        return list;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public Orders getOrder_edit() {
        return order_edit;
    }

    public void setOrder_edit(Orders order_edit) {
        this.order_edit = order_edit;
    }

    public Orders getOrder_add() {
        return order_add;
    }

    public void setOrder_add(Orders order_add) {
        this.order_add = order_add;
    }

    public List<String> getSelected() {
        return selected;
    }

    public void setSelected(List<String> selected) {
        this.selected = selected;
    }

    public List<OrderDto> getListDto() {
        return listDto;
    }

    public void setListDto(List<OrderDto> listDto) {
        this.listDto = listDto;
    }

    public Customers getCustomers() {
        return customers;
    }

    public void setCustomers(Customers customers) {
        this.customers = customers;
    }

    public Products getProducts() {
        return products;
    }

    public void setProducts(Products products) {
        this.products = products;
    }

    public List<Products> getListProducts() {
        return listProducts;
    }

    public void setListProducts(List<Products> listProducts) {
        this.listProducts = listProducts;
    }

    public Set<Orderdetails> getListOrderdetails() {
        return listOrderdetails;
    }

    public void setListOrderdetails(Set<Orderdetails> listOrderdetails) {
        this.listOrderdetails = listOrderdetails;
    }

    public Set<Orderdetails> getListProductsInOrder() {
        return listProductsInOrder;
    }

    public void setListProductsInOrder(Set<Orderdetails> listProductsInOrder) {
        this.listProductsInOrder = listProductsInOrder;
    }
}

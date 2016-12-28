package com.action.admin;

import com.dao.CustomersDaoImpl;
import com.dao.OrdersDaoImpl;
import com.dto.OrderDto;
import com.model.Orderdetails;
import com.model.Orders;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by user on 6/1/2016.
 */
public class HomeAction extends ActionSupport {
    private Long countCustomer;
    private Long countOrder;
    private List<Orders> list;
    private List<OrderDto> listDto;

    public HomeAction() {

    }

    @Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        String role = "1";
        try{
            role = session.get("roleId").toString();
        } catch (Exception e){
            return ERROR;
        }

        if (role.equals("2")){
            System.out.println("test home admin");
            CustomersDaoImpl customersDao = new CustomersDaoImpl();
            OrdersDaoImpl ordersDao = new OrdersDaoImpl();
            list = new ArrayList<Orders>();

            listDto = new ArrayList<OrderDto>();
            countCustomer = customersDao.count();
            countOrder = ordersDao.count();
            list = ordersDao.findAllOrders();
            double total = 0;
            for (Orders order : list) {
                System.out.println("orders: " + order.getCustomers().getName());
                OrderDto add = new OrderDto();
                add.setOrder(order);
                System.out.println("order id: " + order.getOrderId());
                add.setTotal(this.orderTotal(order.getOrderdetailses()));
                System.out.println("total: " + this.orderTotal(order.getOrderdetailses()));
                listDto.add(add);
            }
        /*Map session = ActionContext.getContext().getSession();
        session.put("CUSTOMERS", countCustomer);*/
            System.out.println("customers: " + countCustomer);
            System.out.println("orders: " + countOrder);
            return SUCCESS;
        }
        else {
            return ERROR;
        }
    }

    public String reviews() throws Exception {
        System.out.println("test home reviews");
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
    public Long getCountCustomer() {
        return countCustomer;
    }
    public Long getCountOrder() {
        return countOrder;
    }

    public List<OrderDto> getListDto() {
        return listDto;
    }
}

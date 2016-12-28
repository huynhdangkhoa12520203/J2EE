package com.action;

import com.dao.UsersDaoImpl;
import com.model.Roles;
import com.model.Users;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by user on 6/1/2016.
 */
public class RegisterAction extends ActionSupport{
    private Users userBean;
    private String feedBack;
    private List<Users> listUsers;
    @Override
    public String execute() throws Exception {
        //get input
        String nameInput = userBean.getUsername().trim();
        String passInput = userBean.getPassword().trim();
        String emailInput = userBean.getEmail().trim();
        Users user = new Users();
        user.setUsername(nameInput);
        user.setPassword(passInput);
        user.setEmail(emailInput);
        //check empty input
        if(nameInput.equals("") || passInput.equals("") || emailInput.equals(""))
        {
            feedBack = "Vui lòng nhập đủ thông tin!";
            return SUCCESS;
        }
        else
        {
            //check conflict email
            UsersDaoImpl usersDao = new UsersDaoImpl();
            listUsers = new ArrayList<Users>();
            listUsers = usersDao.findAllUsers();
            boolean isConflicted = false;
            for(Users user1 : listUsers)
            {
                if(emailInput.equals(user1.getEmail()) )
                {
                    isConflicted = true;
                    break;
                }
            }
            if(isConflicted)// conflict email
            {
                feedBack = "Email bạn nhập đã có người sử dụng, vui lòng nhập email khác!";
                return SUCCESS;
            }
            else //ok, start to save info to DB
            {
                try
                {
                    Roles roles = new Roles();//default role for customer
                    roles.setRoleId(1);
                    user.setRoles(roles);
                    UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
                    usersDaoImpl.saveUsers(user);
                    feedBack = "Đăng kí thành công!";
                    return SUCCESS;
                }
                catch (Exception e)
                {
                    System.out.println(e.getMessage());
                    feedBack = "Đăng kí thất bại";
                    return SUCCESS;
                }
            }
        }






    }
    public String viewRegister() throws Exception
    {
        return SUCCESS;
    }

    public Users getUserBean() {
        return userBean;
    }
    public String getFeedBack() {
        return feedBack;
    }

    public List<Users> getListUsers() {
        return listUsers;
    }

    public void setUserBean(Users userBean) {
        this.userBean = userBean;
    }

    public void setFeedBack(String feedBack) {
        this.feedBack = feedBack;
    }

    public void setListUsers(List<Users> listUsers) {
        this.listUsers = listUsers;
    }
}

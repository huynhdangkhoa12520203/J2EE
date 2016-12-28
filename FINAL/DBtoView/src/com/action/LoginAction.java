package com.action;

import com.dao.UsersDaoImpl;
import com.model.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by user on 6/1/2016.
 */
public class LoginAction extends ActionSupport {
    private Users userBeanLogin;
    private String feedBackLogin;
    private List<Users> listUsersLogin;
    private Integer UserId = 0;
    private String UserName;
    private int roleId = -1;
    @Override
    public String execute() throws Exception {
        //get input
        String nameInput = userBeanLogin.getUsername().trim();
        String passInput = userBeanLogin.getPassword().trim();
        //check empty input
        if(nameInput.equals("") || passInput.equals(""))
        {
            feedBackLogin = "Vui lòng nhập đủ thông tin!";
        }
        else
        {
            //check username and password
            UsersDaoImpl usersDao = new UsersDaoImpl();
            listUsersLogin = new ArrayList<Users>();
            listUsersLogin = usersDao.findByUsername(nameInput);
            boolean isCorrect = false;
            for(Users user : listUsersLogin)
            {
                if(user.getPassword().equals(passInput))
                {
                    isCorrect = true;
                    UserId = user.getUserId();
                    UserName = user.getUsername();
                    roleId = user.getRoles().getRoleId();
                    break;
                }
            }
            if(isCorrect) {
                feedBackLogin = "Đăng nhập thành công!";
                Map session = ActionContext.getContext().getSession();
                session.put("userId",UserId);
                session.put("userName", UserName);
                session.put("logined", "true");
                session.put("roleId",roleId);
                return SUCCESS;
            }
            else
            {
                feedBackLogin = "Bạn đã nhập sai tên hoặc mật khẩu, vui lòng kiểm tra lại";
                return ERROR;
            }
        }
        return ERROR;
    }
    public String viewLogin() throws Exception
    {
        return SUCCESS;
    }
    public String logout() throws Exception {

        Map session = ActionContext.getContext().getSession();

        session.remove("logined");
        session.remove("userId");
        session.remove("userName");
        session.remove("roleId");

        return SUCCESS;

    }

    public Users getUserBeanLogin() {
        return userBeanLogin;
    }

    public void setUserBeanLogin(Users userBeanLogin) {
        this.userBeanLogin = userBeanLogin;
    }

    public String getFeedBackLogin() {
        return feedBackLogin;
    }

    public void setFeedBackLogin(String feedBackLogin) {
        this.feedBackLogin = feedBackLogin;
    }

    public List<Users> getListUsersLogin() {
        return listUsersLogin;
    }

    public void setListUsersLogin(List<Users> listUsersLogin) {
        this.listUsersLogin = listUsersLogin;
    }
}

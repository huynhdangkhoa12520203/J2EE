package com.dao;

import com.model.Users;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface UsersDao {
    public List<Users> findByUsername(String userName);

    Users findByID(int userID);

    void saveUsers(Users user);

    void deleteUsersByID(int userID);

    void updateUsers(Users user);

    List<Users> findAllUsers();
}

package com.dao;

import com.model.Roles;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface RolesDao {
    Roles findByID(int roleID);

    void saveRoles(Roles role);

    void deleteRolesByID(int roleID);

    void updateRoles(Roles role);

    List<Roles> findAllRoles();
}

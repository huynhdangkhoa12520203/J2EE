package com.dao;

import com.model.Optiongroup;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface OptiongroupDao {
    Optiongroup findByID(int optionGroupID);

    void saveOptiongroup(Optiongroup optionGroup);

    void deleteOptiongroupByID(int optionGroupID);

    void updateOptiongroup(Optiongroup optionGroup);

    List<Optiongroup> findAllOptiongroup();
}

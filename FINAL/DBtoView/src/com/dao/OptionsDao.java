package com.dao;

import com.model.Options;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface OptionsDao {
    Options findByID(int optionID);

    void saveOptions(Options option);

    void deleteOptionsByID(int optionID);

    void updateOptions(Options option);

    List<Options> findAllOptions();
}

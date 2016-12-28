package com.dao;

import com.model.Test;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface TestDao {
    Test findByID(int optionID);

    void saveTest(Test test);

    void deleteTestByID(int optionID);

    void updateTest(Test test);

    List<Test> findAllTest();
}

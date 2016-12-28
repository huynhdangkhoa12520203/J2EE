package com.action;

import com.dao.CustomersDaoImpl;
import com.dao.OptionsDaoImpl;
import com.dao.TestDaoImpl;
import com.model.Options;
import com.model.Test;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */

//ko can quan tam toi file nay
public class test {
    public static void main(String[] args) {
        /*OptionsDaoImpl optionDao = new OptionsDaoImpl();
        Options add = new Options();

        add.setOptionName("test2");

        optionDao.saveOptions(add);

        List<Options> temp = optionDao.findAllOptions();
        for (Options pro:temp) {
            System.out.println("option: " + pro.getOptionName());
            Options test = optionDao.findByID(pro.getOptionId());
            //test.setOptionName("test edit");
            //optionDao.deleteOptionsByID(test.getOptionId());
            //optionDao.updateOptions(test);
        }*/

        CustomersDaoImpl customers = new CustomersDaoImpl();

        Long count = customers.count();

        System.out.println("count: " + count);
    }


    // function test connect database with hibernate: database "thoitrang", table "options"
    public  void test() {
        TestDaoImpl testDao = new TestDaoImpl();
        Test add = new Test();
        Test edit = new Test();

        add.setOptionName("test");


        testDao.saveTest(add);
        List<Test> temp = testDao.findAllTest();
        System.out.println("list product:");
        for (Test pro:temp) {
            System.out.println("product: " + pro.getOptionName());
            edit = testDao.findByID(pro.getOptionId());
            edit.setOptionName("test test test");
        }
    }
}

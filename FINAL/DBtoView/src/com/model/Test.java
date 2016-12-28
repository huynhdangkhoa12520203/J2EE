package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;

/**
 * Created by user on 6/2/2016.
 */

@Entity
@Table(name = "options")
public class Test {
    private int optionId;
    private String optionName;

    @Id
    @GeneratedValue
    @Column(name = "optionID", length = 11, nullable = false)
    public int getOptionId() {
        return optionId;
    }

    public void setOptionId(int optionId) {
        this.optionId = optionId;
    }

    @Column(name = "optionName", nullable = false)
    public String getOptionName() {
        return optionName;
    }

    public void setOptionName(String optionName) {
        this.optionName = optionName;
    }
}

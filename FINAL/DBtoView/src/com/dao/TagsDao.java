package com.dao;

import com.model.Tags;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface TagsDao {
    Tags findByID(int tagID);

    void saveTags(Tags tag);

    void deleteTagsByID(int tagID);

    void updateTags(Tags tag);

    List<Tags> findAllTags();
}

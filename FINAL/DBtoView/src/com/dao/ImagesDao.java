package com.dao;

import com.model.Images;

import java.util.List;

/**
 * Created by noowaay on 07/06/2016.
 */
public interface ImagesDao {
    Images findByID(int imageID);

    void saveImages(Images image);

    void deleteImagesByID(int imageID);

    void updateImages(Images image);

    List<Images> findAllImages();

    public Images getImagesByProductId(String productId);
}

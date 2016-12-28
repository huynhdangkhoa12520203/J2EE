package com.action.admin;

import com.dao.CategoriesDaoImpl;
import com.dao.ImagesDaoImpl;
import com.dao.ProductsDaoImpl;
import com.dao.SuppliersDaoImpl;
import com.dto.ProductDto;
import com.model.*;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;
import java.io.File;
import org.apache.commons.io.FileUtils;


import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.*;

/**
 * Created by user on 6/1/2016.
 */
public class ProductsAction extends ActionSupport {
    private final String defaultImagePath = "/images/home/default.png";

    private ProductsDaoImpl productsDao = new ProductsDaoImpl();
    private CategoriesDaoImpl categoriesDao = new CategoriesDaoImpl();
    private SuppliersDaoImpl suppliersDao = new SuppliersDaoImpl();
    private List<Products> list;
    private List<ProductDto> listDto;
    private List<Categories> listCategories;
    private List<Suppliers> listSuppliers;
    private List<String> selected;
    private Set<Images> listImage;
    private Products product_add = new Products();
    private Products product_edit = new Products();
    private String productId;
    private Images imageUpload;

    private File myFile;
    private String myFileContentType;
    private String myFileFileName;
    private String destPath;

    private String action = null;
    @Override
    public String execute() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test products admin");
        return SUCCESS;
    }

    public String products() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test list products admin");
        listDto = new ArrayList<ProductDto>();
        list = productsDao.findAllProducts();

        Set<Images> imageProduct;
        for (Products product : list) {
            imageProduct = product.getImageses();

            Images defaultImage = new Images();
            Images avatar = new Images();
            defaultImage.setUrl(defaultImagePath);
            for (Images hinh : imageProduct) {
                avatar = hinh;
                System.out.println("avatar: " + avatar.getUrl());
                break;
            }

            ProductDto add = new ProductDto();
            add.setProduct(product);
            if (avatar.getUrl() != null) {
                add.setImage(avatar);
            } else {
                add.setImage(defaultImage);
            }
            listDto.add(add);
        }
        return SUCCESS;
    }

    public String modifyProduct() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test modify product admin");
        HttpServletRequest request;
        String editId;

        System.out.println("action: " + action);
        try {
            request = ServletActionContext.getRequest();
            editId = request.getParameter("productId");
            String uploadImageName = request.getParameter("fileName");
            System.out.println("productId: " + editId);

            listCategories = categoriesDao.findAllCategories();
            listSuppliers = suppliersDao.findAllSuppliers();

            System.out.println("uploadImageName: " + uploadImageName);

            if (editId != null) {
                product_edit = productsDao.findByID(Integer.parseInt(editId));
                System.out.println("1");
                listImage = product_edit.getImageses();
            }

            if (uploadImageName != null) {
                ImagesDaoImpl imagesDao = new ImagesDaoImpl();
                Images imagesAddToProduct = new Images();
                //ImagesId imagesIdAddToProduct = new ImagesId();
                Products productTemp = new Products();
                Set<Images> temp = new HashSet<Images>();
                /*Random rand = new Random();
                imagesIdAddToProduct.setImageId(rand.nextInt(50) + 1);
                imagesIdAddToProduct.setProductId(Integer.parseInt(request.getParameter("productId")));*/
                productTemp = productsDao.findByID(Integer.parseInt(request.getParameter("productId")));

                //imagesAddToProduct.setId(imagesIdAddToProduct);
                imagesAddToProduct.setUrl("/images/upload/product/" + uploadImageName);
                imagesAddToProduct.setImageName(productTemp.getProductId() + uploadImageName);
                imagesAddToProduct.setProducts(productTemp);
                System.out.println("path: " + imagesAddToProduct.getUrl());
                imagesDao.saveImages(imagesAddToProduct);
                //lay danh sach image
                temp = productTemp.getImageses();
                //add image moi them
                temp.add(imagesAddToProduct);

                uploadImageName = null;
                System.out.println("2");
                productTemp.setImageses(temp);
                listImage = productTemp.getImageses();
            }
            System.out.println("list image");
            if (listImage != null) {
                for (Images test : listImage) {
                    System.out.println("test: " + test.getUrl());
                }
            }

            if (action != null) {
                if (action.equals("Save")) {
                    System.out.println("add");
                    Products insert = new Products();
                    System.out.println("name product: " + product_add.getProductName());

                    String categoryId = request.getParameter("category");
                    String supplierId = request.getParameter("supplier");
                    String available = request.getParameter("status");
                    product_add.setAvailable(true);
                    if (available.equals("0")) {
                        product_add.setAvailable(false);
                    }
                    System.out.println(categoryId);
                    System.out.println(supplierId);
                    System.out.println(available);

                    insert.setProductName(product_add.getProductName());
                    insert.setUnit(product_add.getUnit());
                    insert.setPrice(product_add.getPrice());
                    insert.setStock(product_add.getStock());
                    insert.setAvailable(product_add.isAvailable());
                    insert.setCategories(categoriesDao.findByID(Integer.parseInt(categoryId)));
                    insert.setSuppliers(suppliersDao.findByID(Integer.parseInt(supplierId)));

                    productsDao.saveProducts(insert);
                    System.out.println("add ok");
                    return "added";
                }

                if (action.equals("Edit")) {
                    editId = request.getParameter("productId");
                    productId = editId;
                    Products edit = productsDao.findByID(Integer.parseInt(editId));

                    String categoryId = request.getParameter("category");
                    String supplierId = request.getParameter("supplier");
                    String available = request.getParameter("status");
                    Set<Images> addImage = new HashSet<Images>();

                    boolean availableEdit = true;
                    if (available.equals("0")) {
                        availableEdit = false;
                    }

                    System.out.println(categoryId);
                    System.out.println(supplierId);
                    System.out.println(available);

                    edit.setProductName(request.getParameter("productName"));
                    edit.setUnit(request.getParameter("unit"));
                    edit.setPrice(Double.parseDouble(request.getParameter("price")));
                    edit.setStock(Integer.parseInt(request.getParameter("stock")));
                    edit.setAvailable(availableEdit);
                    edit.setCategories(categoriesDao.findByID(Integer.parseInt(categoryId)));
                    edit.setSuppliers(suppliersDao.findByID(Integer.parseInt(supplierId)));
                    edit.setImageses(addImage);

                    productsDao.updateProducts(edit);
                    System.out.println("edit ok");
                    return "edited";
                }

                if (action.equals("Upload")) {
                    System.out.println("--------------------------");
                    System.out.println("upload");

                    return "uploaded";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return SUCCESS;
    }

    public String deleteProduct() throws  Exception {
        HttpServletRequest request;
        String[] listProductsId;
        System.out.println("--------------------------");
        try {
            request = ServletActionContext.getRequest();
            listProductsId = request.getParameterValues("selected");

            if (action.equals("Delete")) {
                System.out.println("delete");
                for (String id : listProductsId) {
                    productsDao.deleteProductsByID(Integer.parseInt(id));
                }
                System.out.println("delete ok");
                return "deleted";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    public String upload() {
        destPath = "D:/upload/";
        HttpServletRequest request;
        String pathImage = "images/upload/product";
        String productId;
        System.out.println("--------------------------");
        try{
            request = ServletActionContext.getRequest();
            productId = request.getParameter("productId");
            String path = request.getSession().getServletContext().getRealPath("/") + pathImage;

            System.out.println("productId: " + productId);
            System.out.println("path server: " + path);
            System.out.println("Src File name: " + myFile);
            System.out.println("Dst File name: " + myFileFileName);

            //File destFile  = new File(destPath, myFileFileName);
            File destFile  = new File(path, myFileFileName);
            FileUtils.copyFile(myFile, destFile);
            request.setAttribute("myFileFileName", pathImage + "/" + myFileFileName);
            System.out.println("File Uploaded Successfully");

        } catch(Exception e){
            e.printStackTrace();
        }

        return "uploaded";
    }

    public String deleteImage() {
        HttpServletRequest request;
        ImagesDaoImpl imagesDao = new ImagesDaoImpl();
        try {
            request = ServletActionContext.getRequest();
            productId = request.getParameter("productId");
            String imageId = request.getParameter("imageId");

            imagesDao.deleteImagesByID(Integer.parseInt(imageId));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "deleted";
    }

    public List<Products> getList() {
        return list;
    }

    public List<String> getSelected() {
        return selected;
    }

    public void setSelected(List<String> selected) {
        this.selected = selected;
    }

    public Products getProduct_add() {
        return product_add;
    }

    public void setProduct_add(Products product_add) {
        this.product_add = product_add;
    }

    public Products getProduct_edit() {
        return product_edit;
    }

    public void setProduct_edit(Products product_edit) {
        this.product_edit = product_edit;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public List<ProductDto> getListDto() {
        return listDto;
    }

    public List<Categories> getListCategories() {
        return listCategories;
    }

    public List<Suppliers> getListSuppliers() {
        return listSuppliers;
    }

    public Set<Images> getListImage() {
        return listImage;
    }

    public void setListImage(Set<Images> listImage) {
        this.listImage = listImage;
    }

    public File getMyFile() {
        return myFile;
    }

    public void setMyFile(File myFile) {
        this.myFile = myFile;
    }

    public String getMyFileContentType() {
        return myFileContentType;
    }

    public void setMyFileContentType(String myFileContentType) {
        this.myFileContentType = myFileContentType;
    }

    public String getMyFileFileName() {
        return myFileFileName;
    }

    public void setMyFileFileName(String myFileFileName) {
        this.myFileFileName = myFileFileName;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public Images getImageUpload() {
        return imageUpload;
    }

    public void setImageUpload(Images imageUpload) {
        this.imageUpload = imageUpload;
    }

}

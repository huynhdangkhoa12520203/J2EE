package com.action.admin;

import com.dao.CategoriesDaoImpl;
import com.dao.UsersDaoImpl;
import com.model.Categories;
import com.model.Users;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by user on 6/1/2016.
 */
public class CategoriesAction extends ActionSupport {
    private CategoriesDaoImpl categoriesDao = new CategoriesDaoImpl();
    private List<Categories> list;
    private List<String> selected;
    private Categories category_add = new Categories();
    private Categories category_edit = new Categories();

    private String action = null;
    @Override
    public String execute() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test categories admin");
        return SUCCESS;
    }
    public String categories() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test list categories admin");
        list = categoriesDao.findAllCategories();

        for (Categories category : list) {
            System.out.println("category: " + category.getCategoryName());
        }
        return SUCCESS;
    }

    public String modifyCategory() throws Exception {
        System.out.println("--------------------------");
        System.out.println("test modify category admin");
        HttpServletRequest request;
        String editId;
        System.out.println("action: " + action);
        try {
            request = ServletActionContext.getRequest();
            editId = request.getParameter("categoryId");
            System.out.println("categoryId: " + editId);
            if (editId != null) {
                category_edit = categoriesDao.findByID(Integer.parseInt(editId));
            }

            if (action != null) {
                if (action.equals("Save")) {
                    System.out.println("add");
                    Categories insert = new Categories();
                    insert.setCategoryName(category_add.getCategoryName());
                    insert.setDescription(category_add.getDescription());

                    categoriesDao.saveCategories(insert);
                    System.out.println("add ok");
                    return "added";
                }

                if (action.equals("Edit")) {
                    editId = request.getParameter("categoryId");
                    Categories edit = categoriesDao.findByID(Integer.parseInt(editId));
                    edit.setCategoryName(request.getParameter("categoryName"));
                    edit.setDescription(request.getParameter("description"));
                    System.out.println("category name: " + edit.getCategoryName());
                    System.out.println("category decription: " + edit.getDescription());
                    categoriesDao.updateCategories(edit);
                    System.out.println("edit ok");
                    return "edited";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    public String deleteCategory() throws Exception {
        HttpServletRequest request;
        String[] listCategoriesId;
        System.out.println("--------------------------");
        try {
            request = ServletActionContext.getRequest();
            listCategoriesId = request.getParameterValues("selected");

            if (action.equals("Delete")) {
                System.out.println("delete");
                for (String id : listCategoriesId) {
                    categoriesDao.deleteCategoriesByID(Integer.parseInt(id));
                }
                System.out.println("delete ok");
                return "deleted";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    public List<Categories> getList() {
        return list;
    }

    public Categories getCategory_add() {
        return category_add;
    }

    public void setCategory_add(Categories category_add) {
        this.category_add = category_add;
    }

    public Categories getCategory_edit() {
        return category_edit;
    }

    public void setCategory_edit(Categories category_edit) {
        this.category_edit = category_edit;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public List<String> getSelected() {
        return selected;
    }

    public void setSelected(List<String> selected) {
        this.selected = selected;
    }
}

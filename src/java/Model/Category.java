package Model;

import java.util.*;
import java.lang.*;

public class Category {
    private int CategoryID;
    private String CatergoryName;

    public Category() {
    }

    public Category(int CategoryID, String CatergoryName) {
        this.CategoryID = CategoryID;
        this.CatergoryName = CatergoryName;
    }

    public int getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(int CategoryID) {
        this.CategoryID = CategoryID;
    }

    public String getCatergoryName() {
        return CatergoryName;
    }

    public void setCatergoryName(String CatergoryName) {
        this.CatergoryName = CatergoryName;
    }

    @Override
    public String toString() {
        return "Category{" + "CategoryID=" + CategoryID + ", CatergoryName=" + CatergoryName + '}';
    }
    
}

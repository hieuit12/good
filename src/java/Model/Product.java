package Model;

import java.util.*;
import java.lang.*;

public class Product {
    private int ProductID;
    private String ProductName;
    private Double Price;
    private String image;
    private String describe;
    private int CategoryID;

    public Product() {
    }

    public Product(int ProductID, String ProductName, Double Price, String image, String describe, int CategoryID) {
        this.ProductID = ProductID;
        this.ProductName = ProductName;
        this.Price = Price;
        this.image = image;
        this.describe = describe;
        this.CategoryID = CategoryID;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public Double getPrice() {
        return Price;
    }

    public void setPrice(Double Price) {
        this.Price = Price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public int getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(int CategoryID) {
        this.CategoryID = CategoryID;
    }

    @Override
    public String toString() {
        return "Product{" + "ProductID=" + ProductID + ", ProductName=" + ProductName + ", Price=" + Price + ", image=" + image + ", describe=" + describe + ", CategoryID=" + CategoryID + '}';
    }
    
}

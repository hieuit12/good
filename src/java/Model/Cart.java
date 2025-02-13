package Model;

/**
 *
 * @author DELL
 */
import java.util.*;
import java.lang.*;

public class Cart {
 // p.ProductID, p.ProductName, p.Price, p.image, p.describe, od.DetailId, od.status
    private String ProductID;
    private String ProductName;
    private String Price;
    private String image;
    private String describe;
    private String DetailId;
    private String status;

    public Cart() {
    }

    public Cart(String ProductID, String ProductName, String Price, String image, String describe, String DetailId, String status) {
        this.ProductID = ProductID;
        this.ProductName = ProductName;
        this.Price = Price;
        this.image = image;
        this.describe = describe;
        this.DetailId = DetailId;
        this.status = status;
    }

    public String getProductID() {
        return ProductID;
    }

    public void setProductID(String ProductID) {
        this.ProductID = ProductID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public String getPrice() {
        return Price;
    }

    public void setPrice(String Price) {
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

    public String getDetailId() {
        return DetailId;
    }

    public void setDetailId(String DetailId) {
        this.DetailId = DetailId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Cart{" + "ProductID=" + ProductID + ", ProductName=" + ProductName + ", Price=" + Price + ", image=" + image + ", describe=" + describe + ", DetailId=" + DetailId + ", status=" + status + '}';
    }
    
}

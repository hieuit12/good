package Model;

import java.util.*;
import java.lang.*;

public class OrderDetail {
//    DetailId int IDENTITY PRIMARY KEY,
//	countProduct int,
//	status bit,
//	OrderID int REFERENCES [dbo].[Order](OrderID),
//	ProductID int REFERENCES [dbo].[Product](ProductID)

    private int DetailId;
    private int countProduct;
    private int status;
    private int OrderID;
    private int ProductID;

    public OrderDetail() {
    }

    public OrderDetail(int DetailId, int countProduct, int status, int OrderID, int ProductID) {
        this.DetailId = DetailId;
        this.countProduct = countProduct;
        this.status = status;
        this.OrderID = OrderID;
        this.ProductID = ProductID;
    }

    public int getDetailId() {
        return DetailId;
    }

    public void setDetailId(int DetailId) {
        this.DetailId = DetailId;
    }

    public int getCountProduct() {
        return countProduct;
    }

    public void setCountProduct(int countProduct) {
        this.countProduct = countProduct;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }
}

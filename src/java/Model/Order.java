package Model;

import java.util.*;
import java.lang.*;

public class Order {
//    OrderID int IDENTITY PRIMARY KEY,
//	Address nvarchar(1500),
//	total decimal(10,2),
//	OrderDate Datetime,
//	UserID int REFERENCES [dbo].[User](UserID),
//	PayID int REFERENCES [dbo].[Payment](PayID)

    private int OrderID;
    private String Address;
    private Double total;
    private Date OrderDate;
    private int UserID;
    private int PayID;

    public Order() {
    }

    public Order(int OrderID, String Address, Double total, Date OrderDate, int UserID, int PayID) {
        this.OrderID = OrderID;
        this.Address = Address;
        this.total = total;
        this.OrderDate = OrderDate;
        this.UserID = UserID;
        this.PayID = PayID;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Date getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(Date OrderDate) {
        this.OrderDate = OrderDate;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public int getPayID() {
        return PayID;
    }

    public void setPayID(int PayID) {
        this.PayID = PayID;
    }

    @Override
    public String toString() {
        return "Order{" + "OrderID=" + OrderID + ", Address=" + Address + ", total=" + total + ", OrderDate=" + OrderDate + ", UserID=" + UserID + ", PayID=" + PayID + '}';
    }
    
}

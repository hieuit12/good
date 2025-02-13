package Model;

import java.util.*;
import java.lang.*;

public class Payment {
//    PayID int IDENTITY PRIMARY KEY,
//	PayName nvarchar(20)

    private int PayID;
    private String PayName;

    public Payment() {
    }

    public Payment(int PayID, String PayName) {
        this.PayID = PayID;
        this.PayName = PayName;
    }

    public int getPayID() {
        return PayID;
    }

    public void setPayID(int PayID) {
        this.PayID = PayID;
    }

    public String getPayName() {
        return PayName;
    }

    public void setPayName(String PayName) {
        this.PayName = PayName;
    }

    @Override
    public String toString() {
        return "Payment{" + "PayID=" + PayID + ", PayName=" + PayName + '}';
    }
    
}

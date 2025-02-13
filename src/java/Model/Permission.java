package Model;

import java.util.*;
import java.lang.*;

public class Permission {
    private int RollID;
    private String RollName;

    public Permission() {
    }

    public Permission(int RollID, String RollName) {
        this.RollID = RollID;
        this.RollName = RollName;
    }

    public int getRollID() {
        return RollID;
    }

    public void setRollID(int RollID) {
        this.RollID = RollID;
    }

    public String getRollName() {
        return RollName;
    }

    public void setRollName(String RollName) {
        this.RollName = RollName;
    }

    @Override
    public String toString() {
        return "Permission{" + "RollID=" + RollID + ", RollName=" + RollName + '}';
    }
    
}

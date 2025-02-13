package Model;

import java.util.*;
import java.lang.*;

public class User {
    private int UserID;
    private String Username;
    private String Password;
    private String Fullname;
    private String Email;
    private Date Birthdate;
    private String Gender;
    private String Address;
    private int RollID;

    public User() {
    }

    public User(int UserID, String Username, String Password, String Fullname, String Email, Date Birthdate, String Gender, String Address, int RollID) {
        this.UserID = UserID;
        this.Username = Username;
        this.Password = Password;
        this.Fullname = Fullname;
        this.Email = Email;
        this.Birthdate = Birthdate;
        this.Gender = Gender;
        this.Address = Address;
        this.RollID = RollID;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public Date getBirthdate() {
        return Birthdate;
    }

    public void setBirthdate(Date Birthdate) {
        this.Birthdate = Birthdate;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public int getRollID() {
        return RollID;
    }

    public void setRollID(int RollID) {
        this.RollID = RollID;
    }

    @Override
    public String toString() {
        return "User{" + "UserID=" + UserID + ", Username=" + Username + ", Password=" + Password + ", Fullname=" + Fullname + ", Email=" + Email + ", Birthdate=" + Birthdate + ", Gender=" + Gender + ", Address=" + Address + ", RollID=" + RollID + '}';
    }


    
}

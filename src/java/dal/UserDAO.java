package dal;

import Model.User;
import java.util.*;
import java.lang.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO extends DBContext {

    public static void main(String[] args) {
//        UserDAO d = new UserDAO();
//        User a = d.check("hoangduy", "MTUxMDA0ZndlcWZ3ZTtoZml1ZHNmYXNkZmFzZGZhcw==");
//        System.out.println(a);
        UserDAO c = new UserDAO();
        User list = c.getUserByUserId(9);
        System.out.println(list.toString());
    }
//cai nay cho register chi can 4 cai la đủ

    public void add(String user, String pass, String name, String email) {
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([Username]\n"
                + "           ,[Password]\n"
                + "           ,[Fullname]\n"
                + "           ,[Email]\n"
                + "           ,[RollID])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,3)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            st.setString(3, name);
            st.setString(4, email);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void changePass(String pass, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [Password] = ?     \n"
                + " WHERE UserID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pass);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User checkWithGmail(String username, String mail) {
        String sql = "SELECT [UserID]\n"
                + "      ,[Username]\n"
                + "      ,[Password]\n"
                + "      ,[Fullname]\n"
                + "      ,[Email]\n"
                + "      ,[Birthdate]\n"
                + "      ,[Gender]\n"
                + "      ,[Address]\n"
                + "      ,[RollID]\n"
                + "  FROM [dbo].[User]"
                + "  WHERE [Username]= ? and [Email] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, mail);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User a = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("Fullname"),
                        rs.getString("Email"),
                        rs.getDate("Birthdate"),
                        rs.getString("Gender"),
                        rs.getString("Address"),
                        rs.getInt("RollID"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User check(String username, String password) {
        String sql = "SELECT [UserID]\n"
                + "      ,[Username]\n"
                + "      ,[Password]\n"
                + "      ,[Fullname]\n"
                + "      ,[Email]\n"
                + "      ,[Birthdate]\n"
                + "      ,[Gender]\n"
                + "      ,[Address]\n"
                + "      ,[RollID]\n"
                + "  FROM [dbo].[User]"
                + "  WHERE [Username]= ? and [Password] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User a = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("Fullname"),
                        rs.getString("Email"),
                        rs.getDate("Birthdate"),
                        rs.getString("Gender"),
                        rs.getString("Address"),
                        rs.getInt("RollID"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<User> getAll() {
        List<User> list = new ArrayList<>();
        String sql = "SELECT [UserID]\n"
                + "      ,[Username]\n"
                + "      ,[Password]\n"
                + "      ,[Fullname]\n"
                + "      ,[Email]\n"
                + "      ,[Birthdate]\n"
                + "      ,[Gender]\n"
                + "      ,[Address]\n"
                + "      ,[RollID]\n"
                + "  FROM [dbo].[User]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("Fullname"),
                        rs.getString("Email"),
                        rs.getDate("Birthdate"),
                        rs.getString("Gender"),
                        rs.getString("Address"),
                        rs.getInt("RollID"));
                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    // create
    public void addSeller(String user, String pass, String name, String email, String dob, String gender, String address) {
//        String sql = "INSERT INTO [dbo].[User]\n"
//                + "           ([Username]\n"
//                + "           ,[Password]\n"
//                + "           ,[Fullname]\n"
//                + "           ,[Email]\n"
//                + "           ,[RollID])\n"
//                + "     VALUES\n"
//                + "           (?\n"
//                + "           ,?\n"
//                + "           ,?\n"
//                + "           ,?\n"
//                + "           ,2)";
        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([Username]\n"
                + "           ,[Password]\n"
                + "           ,[Fullname]\n"
                + "           ,[Email]\n"
                + "           ,[Birthdate]\n"
                + "           ,[Gender]\n"
                + "           ,[Address]\n"
                + "           ,[RollID])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,2)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            st.setString(3, name);
            st.setString(4, email);
            st.setString(5, dob);
            st.setString(6, gender);
            st.setString(7, address);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // getuserbyusername
    public User getUserByUserId(int userid) {
        String sql = "SELECT \n"
                + "   *   \n"
                + "  FROM [dbo].[User]\n"
                + "  where [UserID]= ?";
        User user1 = new User();
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, userid);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                User user = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("Fullname"),
                        rs.getString("Email"),
                        rs.getDate("Birthdate"),
                        rs.getString("Gender"),
                        rs.getString("Address"),
                        rs.getInt("RollID")
                );
                return user;
            }
        } catch (Exception e) {
        }
        return null;
    }

    // update
    public void update(String user, String fullname, String email, Date birthdate, String gender, String address, int id) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [Username] = ?\n" //1
                + "      ,[Fullname] = ?\n" //2
                + "      ,[Email] = ?\n" //3
                + "      ,[Birthdate] = ?\n" //4
                + "      ,[Gender] = ?\n" //5
                + "      ,[Address] = ?\n" //6
                + " WHERE UserID = ?";                //7
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, fullname);
            st.setString(3, email);
            st.setDate(4, (java.sql.Date) birthdate);
            st.setString(5, gender);
            st.setString(6, address);
            st.setInt(7, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    //updateprofile
    public void updateprofile(String fullname, String email, String birthdate, String gender, String address, int id) {
        String sql = "UPDATE [dbo].[User] SET "
                + "[Fullname] = ?, " //1
                + "[Email] = ?, "//2
                + "[Birthdate] = ?, "//3
                + "[Gender] = ?, "//4
                + "[Address] = ? "//5
                + "WHERE UserID = ?";//6         

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, fullname);
            st.setString(2, email);
            st.setString(3, birthdate);
            st.setString(4, gender);
            st.setString(5, address);
            st.setInt(6, id);
            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();                // In ra lỗi nếu có
        }
    }

    public boolean updateEmail(int userId, String newEmail) {
        String sql = "UPDATE [dbo].[User] SET Email = ? WHERE UserID = ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, newEmail);
            st.setInt(2, userId);
            return st.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Error updating email: " + e.getMessage());
            return false;
        }
    }

    // Delete
    public void delete(String id) {
        String sql = "DELETE FROM [dbo].[User]\n"
                + "	  WHERE UserID = ?";
        try {
            PreparedStatement rs = connection.prepareStatement(sql);
            rs.setString(1, id);
            rs.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<User> getAllSeller() {
        List<User> list = new ArrayList<>();
        String sql = "SELECT [UserID]\n"
                + "      ,[Username]\n"
                + "      ,[Password]\n"
                + "      ,[Fullname]\n"
                + "      ,[Email]\n"
                + "      ,[Birthdate]\n"
                + "      ,[Gender]\n"
                + "      ,[Address]\n"
                + "      ,[RollID]\n"
                + "  FROM [dbo].[User]"
                + "WHERE [RollID] = 2 ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("Fullname"),
                        rs.getString("Email"),
                        rs.getDate("Birthdate"),
                        rs.getString("Gender"),
                        rs.getString("Address"),
                        rs.getInt("RollID"));
                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

}

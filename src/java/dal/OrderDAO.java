package dal;

import Model.Category;
import Model.Order;
import Model.OrderDetail;
import java.util.*;
import java.lang.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderDAO extends DBContext {

    public void addOrder(String address, String date, int userID, int payID) {
        String sql = "INSERT INTO [dbo].[Order]\n"
                + "           ([Address]\n"
                + "           ,[total]\n"
                + "           ,[OrderDate]\n"
                + "           ,[UserID]\n"
                + "           ,[PayID])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,0\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, address);
            st.setString(2, date);
            st.setInt(3, userID);
            st.setInt(4, payID);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
public Order getOrderByUserID(String userID) {
        String sql = "SELECT [OrderID]\n"
                + "      ,[Address]\n"
                + "      ,[total]\n"
                + "      ,[OrderDate]\n"
                + "      ,[UserID]\n"
                + "      ,[PayID]\n"
                + "  FROM [dbo].[Order]\n"
                + "  WHERE UserID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userID);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Order o = new Order(rs.getInt("OrderID"),
                                    rs.getString("Address"),
                                    rs.getDouble("total"),
                                          rs.getDate("OrderDate"),
                                    rs.getInt("UserID"),
                                    rs.getInt("PayID"));
                return o;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
}

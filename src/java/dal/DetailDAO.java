package dal;

import Model.Cart;
import Model.Category;
import Model.OrderDetail;
import java.util.*;
import java.lang.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

public class DetailDAO extends DBContext {

    public static void main(String[] args) {
        DetailDAO d = new DetailDAO();
        d.addOrderDetail(1, 0, 3, 1);
    }

    // them vao gio hang
    // in ra gio hang cua tung nguoi 
    // chuyen trang thai thanh toan
    public void addOrderDetail(int count, int status, int OrderID, int ProductID) {
        String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                + "           ([countProduct]\n"
                + "           ,[status]\n"
                + "           ,[OrderID]\n"
                + "           ,[ProductID])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, count);
            st.setInt(2, 0);
            st.setInt(3, OrderID);
            st.setInt(4, ProductID);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // chuyen trang thai thanh toan
    public void update(int id) {
        String sql = "UPDATE [dbo].[OrderDetail]\n"
                + "   SET [status] = 1\n"
                + " WHERE DetailId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Cart> getAll(int id) {
        List<Cart> list = new ArrayList<>();
        String sql = "SELECT Product.ProductID, Product.ProductName, Product.Price, Product.image, Product.describe, OrderDetail.DetailId, OrderDetail.status FROM Product INNER JOIN OrderDetail ON Product.ProductID = OrderDetail.ProductID WHERE OrderDetail.OrderID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Cart c = new Cart(rs.getString("ProductID"), rs.getString("ProductName"), rs.getString("Price"),
                        rs.getString("image"), rs.getString("describe"), rs.getString("DetailId"), rs.getString("status"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //delete
    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[OrderDetail]\n"
                + "      WHERE DetailId = ?";
        try {
            PreparedStatement rs = connection.prepareStatement(sql);
            rs.setInt(1, id);
            rs.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

}

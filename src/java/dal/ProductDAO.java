package dal;

/**
 *
 * @author DELL
 */
import Model.Product;
import java.util.*;
import java.lang.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDAO extends DBContext {

    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        p.insert("Nike V2K Run", 259.0, "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/3f5d7755-cb09-4429-bd42-f0c7002ba732/NIKE+V2K+RUN.png", "Trendy", 1);
    }

    // get all
    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product(rs.getInt("ProductID"), rs.getString("ProductName"), rs.getDouble("Price"),
                        rs.getString("image"), rs.getString("describe"), rs.getInt("CategoryID"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    // get by id
    public Product getProductById(int id) {
        String sql = "SELECT [ProductID]\n"
                + "      ,[ProductName]\n"
                + "      ,[Price]\n"
                + "      ,[image]\n"
                + "      ,[describe]\n"
                + "      ,[CategoryID]\n"
                + "  FROM [dbo].[Product]\n"
                + "  WHERE ProductID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Product c = new Product(rs.getInt("ProductID"), rs.getString("ProductName"), rs.getDouble("Price"),
                        rs.getString("image"), rs.getString("describe"), rs.getInt("CategoryID"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    // create
    public void insert(String name, double price, String image, String describe, int catID) {
        String sql = "INSERT INTO [dbo].[Product] "
                + "([ProductName], [Price], [image], [describe], [CategoryID]) "
                + "VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setDouble(2, price);
            st.setString(3, image);
            st.setString(4, describe);
            st.setInt(5, catID);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // update
    public void update(String name, double price, String image, String describe, int catID, int ProductID) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [ProductName] = ?\n"
                + "      ,[Price] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[describe] = ?\n"
                + "      ,[CategoryID] = ?\n"
                + " WHERE ProductID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setDouble(2, price);
            st.setString(3, image);
            st.setString(4, describe);
            st.setInt(5, catID);
            st.setInt(6, ProductID);

            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    // Delete
    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE ProductID = ?";
        try {
            PreparedStatement rs = connection.prepareStatement(sql);
            rs.setInt(1, id);
            rs.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}

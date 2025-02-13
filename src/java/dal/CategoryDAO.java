package dal;

import Model.Category;
import java.util.*;
import java.lang.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryDAO extends DBContext {

    // get all
    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Category";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("CategoryID"), rs.getString("CatergoryName"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    // get by id
    public Category getCategoryById(int id) {
        String sql = "select * from Category where CategoryID=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Category c = new Category(rs.getInt("CategoryID"), rs.getString("CatergoryName"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    // create
    public void insert(String name) {
        String sql = "INSERT INTO [dbo].[Category]\n"
                + "           ([CatergoryName])\n"
                + "     VALUES\n"
                + "           (?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // update
    public void update(String name, int id) {
        String sql = "UPDATE [dbo].[Categories]\n"
                + "   SET [name] = ?\n"
                + " WHERE CategoryID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    // Delete
    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Category]\n"
                + "      WHERE CategoryID = ?";
        try {
            PreparedStatement rs = connection.prepareStatement(sql);
            rs.setInt(1, id);
            rs.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}

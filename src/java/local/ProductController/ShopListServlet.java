package local.ProductController;

import Model.Product;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "ShopListServlet", urlPatterns = {"/shoplist"})
public class ShopListServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ShopListServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ShopListServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO p = new ProductDAO();
        List<Product> listP = p.getAll();
        HttpSession session = request.getSession();

        // Lọc theo `CategoryID` nếu có tham số `category`
        String categoryParam = request.getParameter("category");
        if (categoryParam != null && !categoryParam.isEmpty()) {
            int categoryID = Integer.parseInt(categoryParam);
            listP = listP.stream()
                    .filter(product -> product.getCategoryID() == categoryID)
                    .collect(Collectors.toList());
        }

        // Lọc theo giá nếu có tham số `price_min` và `price_max`
        String priceMinParam = request.getParameter("price_min");
        String priceMaxParam = request.getParameter("price_max");
        if (priceMinParam != null && !priceMinParam.isEmpty()) {
            double priceMin = Double.parseDouble(priceMinParam);
            listP = listP.stream()
                    .filter(product -> product.getPrice() >= priceMin)
                    .collect(Collectors.toList());
        }
        if (priceMaxParam != null && !priceMaxParam.isEmpty()) {
            double priceMax = Double.parseDouble(priceMaxParam);
            listP = listP.stream()
                    .filter(product -> product.getPrice() <= priceMax)
                    .collect(Collectors.toList());
        }

        // Sắp xếp như hiện tại
        String sortParam = request.getParameter("sort");
        if (sortParam != null) {
            switch (sortParam) {
                case "name-asc":
                    Collections.sort(listP, Comparator.comparing(Product::getProductName));
                    break;
                case "name-desc":
                    Collections.sort(listP, Comparator.comparing(Product::getProductName).reversed());
                    break;
                case "price-asc":
                    Collections.sort(listP, Comparator.comparing(Product::getPrice));
                    break;
                case "price-desc":
                    Collections.sort(listP, Comparator.comparing(Product::getPrice).reversed());
                    break;
            }
        }

        // Phân trang như cũ
        int itemsPerPage = 6;
        int totalItems = listP.size();
        int totalPages = (int) Math.ceil((double) totalItems / itemsPerPage);
        int firstPage = 1;
        int lastPage = (int) Math.ceil((double) totalItems / itemsPerPage);
        String pageStr = request.getParameter("page");
        int currentPage = pageStr == null ? 1 : Integer.parseInt(pageStr);
        int startItem = (currentPage - 1) * itemsPerPage;
        int endItem = Math.min(startItem + itemsPerPage, totalItems);

        List<Product> productsPage = listP.subList(startItem, endItem);
        session.setAttribute("firstPage", firstPage);
        session.setAttribute("lastPage", lastPage);
        session.setAttribute("currentPage", currentPage);
        session.setAttribute("totalPages", totalPages);
        session.setAttribute("listP", productsPage);
        session.setAttribute("sort", sortParam);
        session.setAttribute("category", categoryParam);
        session.setAttribute("price_min", priceMinParam);
        session.setAttribute("price_max", priceMaxParam);

        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO p = new ProductDAO();
        List<Product> listP = p.getAll();
        HttpSession session = request.getSession();

        // Nhận giá trị tìm kiếm từ trường tìm kiếm
        String searchQuery = request.getParameter("search");
        String searchParam = request.getParameter("search");
        if (searchParam != null && !searchParam.isEmpty()) {
            listP = listP.stream()
                    .filter(product -> product.getProductName().toLowerCase().contains(searchParam.toLowerCase()))
                    .collect(Collectors.toList());
        }

        // Phần lọc theo CategoryID, giá, và sắp xếp vẫn giữ nguyên
        // (Có thể copy và dán lại mã lọc ở đây từ phương thức doGet)
        // Sắp xếp như hiện tại (cũng copy và dán nếu cần)
        // Phân trang (cũng copy và dán nếu cần)
        // Thiết lập thuộc tính cho JSP
        String categoryParam = request.getParameter("category");
        if (categoryParam != null && !categoryParam.isEmpty()) {
            int categoryID = Integer.parseInt(categoryParam);
            listP = listP.stream()
                    .filter(product -> product.getCategoryID() == categoryID)
                    .collect(Collectors.toList());
        }

        // Lọc theo giá nếu có tham số `price_min` và `price_max`
        String priceMinParam = request.getParameter("price_min");
        String priceMaxParam = request.getParameter("price_max");
        if (priceMinParam != null && !priceMinParam.isEmpty()) {
            double priceMin = Double.parseDouble(priceMinParam);
            listP = listP.stream()
                    .filter(product -> product.getPrice() >= priceMin)
                    .collect(Collectors.toList());
        }
        if (priceMaxParam != null && !priceMaxParam.isEmpty()) {
            double priceMax = Double.parseDouble(priceMaxParam);
            listP = listP.stream()
                    .filter(product -> product.getPrice() <= priceMax)
                    .collect(Collectors.toList());
        }

        // Sắp xếp như hiện tại
        String sortParam = request.getParameter("sort");
        if (sortParam != null) {
            switch (sortParam) {
                case "name-asc":
                    Collections.sort(listP, Comparator.comparing(Product::getProductName));
                    break;
                case "name-desc":
                    Collections.sort(listP, Comparator.comparing(Product::getProductName).reversed());
                    break;
                case "price-asc":
                    Collections.sort(listP, Comparator.comparing(Product::getPrice));
                    break;
                case "price-desc":
                    Collections.sort(listP, Comparator.comparing(Product::getPrice).reversed());
                    break;
            }
        }

        // Phân trang như cũ
        int itemsPerPage = 6;
        int totalItems = listP.size();
        int totalPages = (int) Math.ceil((double) totalItems / itemsPerPage);

        String pageStr = request.getParameter("page");
        int currentPage = pageStr == null ? 1 : Integer.parseInt(pageStr);
        int startItem = (currentPage - 1) * itemsPerPage;
        int endItem = Math.min(startItem + itemsPerPage, totalItems);

        List<Product> productsPage = listP.subList(startItem, endItem);

        session.setAttribute("currentPage", currentPage);
        session.setAttribute("totalPages", totalPages);
        session.setAttribute("listP", productsPage);
        session.setAttribute("sort", sortParam);
        session.setAttribute("category", categoryParam);
        session.setAttribute("price_min", priceMinParam);
        session.setAttribute("price_max", priceMaxParam);
        session.setAttribute("search", searchQuery);  // Thêm thuộc tính tìm kiếm
        session.setAttribute("search", searchParam); // Đặt giá trị tìm kiếm

        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

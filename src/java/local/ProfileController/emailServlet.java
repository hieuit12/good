package local.ProfileController;

import Model.User;
import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.regex.Pattern;
import util.MaHoa;

@WebServlet(name = "emailServlet", urlPatterns = {"/emailServlet"})
public class emailServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String EMAIL_REGEX = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$";
    private boolean updateSuccessful;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String newEmail = request.getParameter("email");
        HttpSession session = request.getSession();
        User currentUser = (User) session.getAttribute("account");

        if (!Pattern.matches(EMAIL_REGEX, newEmail)) {
            request.setAttribute("error", "Invalid email format.");
            request.getRequestDispatcher("accountsettings.jsp").forward(request, response);
            return;
        }


        UserDAO userDAO = new UserDAO();
        if (userDAO.updateEmail(currentUser.getUserID(), newEmail)) {
            currentUser.setEmail(newEmail); 
            session.setAttribute("account", currentUser); 
            session.setAttribute("success", "Email updated successfully.");
        } else {
            request.setAttribute("error", "Failed to update email. Please try again.");
        }

        request.getRequestDispatcher("accountsettings.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet to update user email in profile settings";
    }
}

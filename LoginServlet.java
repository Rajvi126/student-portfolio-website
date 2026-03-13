package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsersDAO;
import model.Users;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UsersDAO dao = new UsersDAO();
        Users user = dao.login(email, password);

        if (user != null) { 

            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            session.setAttribute("userId", user.getId());
            session.setAttribute("role", user.getRole().toLowerCase());

            // Redirect after successful login
            res.sendRedirect(req.getContextPath() + "/index.jsp"); 

        } else {
            // Invalid login
        	res.sendRedirect(req.getContextPath() + "/login.jsp?error=true"); 
        }
    }
}

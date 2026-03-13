package servlet;

import java.io.IOException; 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.*; 
import model.Project; 
import dao.ProjectDAO; 

@WebServlet("/projects")
public class ProjectServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("userId") == null) {
            res.sendRedirect("login.jsp");
            return;
        }

        int userId = (int) session.getAttribute("userId");

        ProjectDAO dao = new ProjectDAO();
        List<Project> projects = dao.getProjectsByUser(userId);

        req.setAttribute("projects", projects);
        req.getRequestDispatcher("projects.jsp").forward(req, res);
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("userId") == null) {
            res.sendRedirect("login.jsp");
            return;
        }

        int userId = (int) session.getAttribute("userId");
        String action = req.getParameter("action");

        ProjectDAO dao = new ProjectDAO();

        if ("add".equals(action)) {

            Project p = new Project();
            p.setTitle(req.getParameter("title"));
            p.setDescription(req.getParameter("description"));
            p.setTechStack(req.getParameter("techStack"));
            p.setGithubLink(req.getParameter("githubLink"));
            p.setUserId(userId);

            dao.addProject(p);
            res.sendRedirect("projects");
        }

        else if ("update".equals(action)) {

            Project p = new Project();
            p.setId(Integer.parseInt(req.getParameter("id")));
            p.setTitle(req.getParameter("title"));
            p.setDescription(req.getParameter("description"));
            p.setTechStack(req.getParameter("techStack"));
            p.setGithubLink(req.getParameter("githubLink"));
            p.setUserId(userId);

            dao.updateProject(p);
            res.sendRedirect("projects");
        }

        else if ("delete".equals(action)) {

            int projectId = Integer.parseInt(req.getParameter("id"));
            dao.deleteProject(projectId, userId);
            res.sendRedirect("projects");
        }
    }
} 
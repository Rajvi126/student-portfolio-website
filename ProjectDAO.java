package dao;

import java.sql.*; 
import java.util.*;
import model.Project;
import util.DBConnection;

public class ProjectDAO {

    // For guests: load all projects
    public List<Project> getAllProjects() {
        List<Project> list = new ArrayList<>();
        try {
            Connection con = DBConnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM projects");

            while (rs.next()) {
                Project p = new Project();
                p.setId(rs.getInt("id")); 
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                p.setTechStack(rs.getString("tech_stack"));     // ✅ ADD THIS
                p.setGithubLink(rs.getString("github_link")); 
                p.setUserId(rs.getInt("user_id"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // For logged-in user: load only own projects
    public List<Project> getProjectsByUser(int userId) {
        List<Project> list = new ArrayList<>();
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps =
                con.prepareStatement("SELECT * FROM projects WHERE user_id=?");
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Project p = new Project(); 
                p.setId(rs.getInt("id"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                p.setTechStack(rs.getString("tech_stack"));     // ✅ ADD THIS
                p.setGithubLink(rs.getString("github_link")); 
                p.setUserId(rs.getInt("user_id"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    //add project for logged in users
    public void addProject(Project p) {

        try {
            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO projects (title, description, tech_stack, github_link, user_id) VALUES (?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, p.getTitle());
            ps.setString(2, p.getDescription());
            ps.setString(3, p.getTechStack());
            ps.setString(4, p.getGithubLink());
            ps.setInt(5, p.getUserId());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    //delete project
    public void deleteProject(int projectId, int userId) {
        String sql = "DELETE FROM projects WHERE id = ? AND user_id = ?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, projectId);
            ps.setInt(2, userId);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //update project
    public void updateProject(Project project) {
        String sql = "UPDATE projects SET title = ?, description = ?, tech_stack = ?, github_link = ? WHERE id = ? AND user_id = ?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, project.getTitle());
            ps.setString(2, project.getDescription());
            ps.setString(3, project.getTechStack());
            ps.setString(4, project.getGithubLink());
            ps.setInt(5, project.getId());
            ps.setInt(6, project.getUserId());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

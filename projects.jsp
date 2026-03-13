<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Project" %>
<%
    String role = (String) session.getAttribute("role");
    int loggedInUserId = (int) session.getAttribute("userId");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projects</title>

<style>
html, body {
    height: 100%;
    margin: 0;
}

body {
    font-family: Arial, sans-serif;
    background: #f4f6f8;
    display: flex;
    flex-direction: column;
}

header, footer {
    background: #2c3e50;
    color: white;
    text-align: center;
    padding: 15px;
}

nav {
    background: #34495e;
    padding: 10px;
    text-align: center;
}

nav a {
    color: white;
    margin: 0 15px;
    text-decoration: none;
    font-weight: bold;
}

.main-content {
    flex: 1;
    padding: 30px;
}

.project-card {
    background: white;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 6px;
    box-shadow: 0 0 8px rgba(0,0,0,0.1);
}

input, textarea {
    width: 100%;
    padding: 8px;
    margin: 6px 0;
}

.btn {
    background: #3498db;
    color: white;
    padding: 8px 16px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.btn:hover {
    background: #2980b9;
}
</style>
</head>

<body>

<header>
    <h1>My Projects</h1>
</header>

<nav>
    <a href="index.jsp">Home</a>
    <a href="about.jsp">About</a>
    <a href="projects">Projects</a>
</nav>

<div class="main-content">

<%
    Integer userId = (Integer) session.getAttribute("userId");
    List<Project> projects = (List<Project>) request.getAttribute("projects");
%>

<% if ("user".equals(role)) { %> 
<h2>Add New Project</h2> 

<form action="projects" method="post">
    <input type="hidden" name="action" value="add">

    <input type="text" name="title" placeholder="Project Title" required>
    <textarea name="description" placeholder="Project Description" required></textarea>
    <input type="text" name="techStack" placeholder="Tech Stack" required>
    <input type="text" name="githubLink" placeholder="GitHub Link">

    <button type="submit" class="btn">Add Project</button>
</form>

<hr>
<% } %>

<h2>Your Projects</h2>

<%
if (projects != null && !projects.isEmpty()) {
    for (Project p : projects) {
%>
    <div class="project-card">
        <h3><%= p.getTitle() %></h3>
        <p><%= p.getDescription() %></p>
        <p><b>Tech Stack:</b> <%= p.getTechStack() %></p>

        <% if (p.getGithubLink() != null && !p.getGithubLink().isEmpty()) { %>
            <a href="<%= p.getGithubLink() %>" target="_blank">View on GitHub</a>
        <% } %>
        <!-- 👇 EDIT / DELETE BUTTONS GO HERE -->
        <% if ("user".equals(role) && p.getUserId() == loggedInUserId) { %>

    <!-- EDIT -->
    <form action="projects" method="post">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="<%= p.getId() %>">

        <input type="text" name="title" value="<%= p.getTitle() %>">
        <textarea name="description"><%= p.getDescription() %></textarea>
        <input type="text" name="techStack" value="<%= p.getTechStack() %>">
        <input type="text" name="githubLink" value="<%= p.getGithubLink() %>">

        <button class="btn edit">Update</button>
    </form>

    <!-- DELETE -->
    <form action="projects" method="post">
        <input type="hidden" name="action" value="delete">
        <input type="hidden" name="id" value="<%= p.getId() %>">
        <button class="btn delete">Delete</button>
    </form>

<% } %>
        
    </div>
<%
    }
} else {
%>
    <p>No projects found.</p>
<%
}
%>

</div>

<footer>
    <p>© 2026 Rajvi Shah | Portfolio Website</p>
</footer>

</body>
</html>

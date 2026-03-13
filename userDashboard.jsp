<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Users" %>
<%
    Users user = (Users) session.getAttribute("user");
    if(user == null){
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
    <title>User Dashboard! </title> 
</head> 
<body>
    <h2>Welcome, <%= user.getName() %> 👋</h2>

    <a href="editProfile.jsp">Edit Profile</a><br><br>
    <a href="manageProjects.jsp">Manage Projects</a><br><br>
    <a href="manageSkills.jsp">Manage Skills</a><br><br>

    <a href="../logout">Logout</a>
</body>
</html>

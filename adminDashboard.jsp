<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Users" %>
<%
    Users user = (Users) session.getAttribute("user");
    if(user == null || !user.getRole().equals("ADMIN")){
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
    <title>Admin Dashboard</title>
</head>
<body>
    <h2>Admin Panel - <%= user.getName() %></h2>

    <a href="viewUsers.jsp">View Users</a><br><br>
    <a href="manageProjects.jsp">View Projects</a><br><br>
    <a href="../logout">Logout</a>
</body>
</html>

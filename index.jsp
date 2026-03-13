<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Portfolio</title>

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

        header {
            background: #2c3e50;
            color: white;
            padding: 20px;
            text-align: center;
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

        nav a:hover {
            text-decoration: underline;
        }

        .main-content {
            flex: 1;
        }

        section {
            padding: 40px;
            text-align: center;
        }

        .btn {
            background: #3498db;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            margin-top: 15px;
        }

        .btn:hover {
            background: #2980b9;
        }

        footer {
            background: #2c3e50;
            color: white;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>

<body>

<header>
    <h1>Welcome to My Portfolio</h1>
    <p>Java Developer | Web Developer | Problem Solver</p>
</header>

<nav>
    <a href="<%=request.getContextPath()%>/index.jsp">Home</a>
    <a href="<%=request.getContextPath()%>/about.jsp">About</a>
    <a href="<%=request.getContextPath()%>/projects.jsp">Projects</a>
    <a href="<%=request.getContextPath()%>/skills.jsp">Skills</a>
    <a href="<%=request.getContextPath()%>/contact.jsp">Contact</a>

    <% if (role == null) { %>
        <a href="<%=request.getContextPath()%>/login.jsp">Login</a>
    <% } else if ("ADMIN".equalsIgnoreCase(role)) { %>
        <a href="<%=request.getContextPath()%>/adminDashboard.jsp">Admin Dashboard</a>
        <a href="<%=request.getContextPath()%>/logout">Logout</a>
    <% } else { %>
        <a href="<%=request.getContextPath()%>/userDashboard.jsp">My Dashboard</a>
        <a href="<%=request.getContextPath()%>/logout">Logout</a>
    <% } %>
</nav>

<div class="main-content">
    <section>
        <h2>Hi, I'm Rajvi 👋</h2>
        <p>
            This is my dynamic personal portfolio built using Java, Servlets, JSP, and MySQL.
        </p>
        <a href="<%=request.getContextPath()%>/projects.jsp" class="btn">View My Work</a>
    </section>
</div>

<footer>
    <p>© 2026 Rajvi Shah | Portfolio Website</p>
</footer>

</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Me</title>

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
            padding: 40px;
        }

        .about-box {
            max-width: 800px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
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
    <h1>About Me</h1>
    <p>Get to know me better</p>
</header>

<nav>
    <a href="index.jsp">Home</a>
    <a href="about.jsp">About</a>
    <a href="projects.jsp">Projects</a>
    <a href="skills.jsp">Skills</a>
    <a href="contact.jsp">Contact</a>
    <a href="login.jsp">Login</a>
</nav>

<div class="main-content">
    <div class="about-box">
        <h2>Hi, I'm Rajvi 👋</h2>
        <p>
            I am a passionate Java developer with a strong interest in building
            dynamic and user-friendly web applications.
        </p>

        <p>
            This portfolio website is developed using <b>Java, Servlets, JSP, JDBC, and MySQL</b>.
            It follows the MVC architecture and supports CRUD operations.
        </p>

        <p>
            My goal is to continuously improve my technical skills and work on
            real-world projects that solve meaningful problems.
        </p>

        <h3>Career Objective</h3>
        <p>
            To obtain a challenging position where I can apply my technical
            knowledge, learn new technologies, and grow as a software developer.
        </p>
    </div>
</div>

<footer>
    <p>© 2026 Rajvi Shah | Portfolio Website</p>
</footer>

</body>
</html> 

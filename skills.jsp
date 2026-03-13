<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Skills</title>

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

        .main-content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .skills-card {
            background: white;
            padding: 30px 50px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            min-width: 400px;
        }

        .skills-card ul {
            list-style: none;
            padding: 0;
        }

        .skills-card li {
            background: #3498db;
            color: white;
            padding: 12px;
            margin: 10px 0;
            border-radius: 5px;
            font-weight: bold;
            text-align: center;
        }
        
        .back-btn {
    		display: inline-block;
    		padding: 8px 16px;
    		background: #3498db;
    		color: white;
    		text-decoration: none;
    		border-radius: 4px;
    		font-weight: bold;
		}

		.back-btn:hover {
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
<div style="margin: 20px;">
    <a href="index.jsp" class="back-btn">← Back to Home</a>
</div>
<header>
    <h1>My Skills</h1>
</header>

<main class="main-content">
    <div class="skills-card">
        <ul>
            <li>Java</li>
            <li>JSP & Servlets</li>
            <li>MySQL</li>
            <li>HTML & CSS</li>
            <li>Git & GitHub</li>
        </ul>
    </div>
</main>

<footer>
    <p>© 2026 Rajvi Shah</p>
</footer>

</body>
</html>

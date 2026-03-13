<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contact</title>

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

        .contact-card {
            background: white;
            padding: 30px 50px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: left;
            min-width: 400px;
        }

        .contact-item {
            margin: 15px 0;
            font-size: 18px;
        }

        .contact-item a {
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }

        .contact-item a:hover {
            text-decoration: underline;
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
    <h1>Contact Me</h1>
</header>

<main class="main-content">
    <div class="contact-card">
        <div class="contact-item">📧 Email: 
            <a href="mailto:rajvi@portfolio.com">rajvi@portfolio.com</a>
        </div>

        <div class="contact-item">💻 GitHub: 
            <a href="https://github.com/rajvishah" target="_blank">
                github.com/rajvishah
            </a>
        </div>

        <div class="contact-item">🔗 LinkedIn: 
            <a href="#">linkedin.com/in/rajvishah</a>
        </div>
    </div>
</main>

<footer>
    <p>© 2026 Rajvi Shah</p>
</footer>

</body>
</html>

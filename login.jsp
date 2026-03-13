<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-box {
            background: white;
            padding: 30px;
            width: 300px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-top: 8px;
        }

        button {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            background: #3498db;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background: #2980b9;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
    </style> 
</head>

<body>

<div class="login-box">
    <h2>Login</h2>

    <form action="login" method="post">
        <label>Email</label>
        <input type="email" name="email" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <button type="submit">Login</button>
    </form>

    <%-- Optional error message --%>
    <%
        String error = request.getParameter("error");
        if ("true".equals(error)) {
    %>
        <div class="error">Invalid email or password</div>
    <%
        }
    %>
</div>

</body>
</html>

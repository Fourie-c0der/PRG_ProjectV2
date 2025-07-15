<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #a18cd1, #fbc2eb); /* Purple-ish gradient */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .login-container {
        background: #ffffff;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
        width: 320px;
        transition: transform 0.3s ease;
    }

    .login-container:hover {
        transform: translateY(-2px);
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #4c2c72;
    }

    label {
        display: block;
        margin-bottom: 6px;
        color: #5c487a;
        font-weight: 500;
    }

    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 18px;
        border: 1px solid #c9bdd6;
        border-radius: 8px;
        box-sizing: border-box;
        background-color: #f7f1fa;
        color: #342a48;
    }

    input[type="submit"] {
        width: 100%;
        background-color: #7c4dcc;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-weight: 600;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #693bb5;
    }

    .register-link, .home-link {
        display: block;
        text-align: center;
        margin-top: 14px;
        font-size: 0.95em;
    }

    .register-link a, .home-link a {
        color: #6c3bb9;
        text-decoration: none;
        font-weight: 500;
    }

    .register-link a:hover, .home-link a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="login-container">
        <h2>User Login </h2>
        <form action="LoginServlet" method="post">
            <label for="email">Email:</label>
            <input placeholder="example@gmail.com" type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Login">
        </form>
        <div class="register-link">
            <a href="register.jsp">Don’t have an account? Register</a>
        </div>
        <div class="home-link">
            <a href="index.jsp">← Back to Home</a>
        </div>
    </div>
</body>
</html>

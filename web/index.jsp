<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome - Student Wellness System</title>
    <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #c790e8, #dfa9f8); /* Soft purple gradient */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .welcome-container {
        background: #ffffff;
        padding: 40px;
        border-radius: 14px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
        text-align: center;
        width: 340px;
        transition: transform 0.3s ease;
    }

    .welcome-container:hover {
        transform: translateY(-2px);
    }

    h2 {
        margin-bottom: 30px;
        font-size: 24px;
        color: #5e2a84;
    }

    .welcome-button {
        display: block;
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        margin-left: -10px;
        border: none;
        border-radius: 8px;
        background-color: #9b59b6;
        color: white;
        font-size: 16px;
        font-weight: bold;
        text-decoration: none;
        text-align: center;
        transition: background-color 0.3s ease;
    }

    .welcome-button:hover {
        background-color: #8134a7;
    }

    .secondary-link {
        display: block;
        margin-top: 20px;
        color: #6f42c1;
        text-decoration: none;
        font-weight: 500;
    }

    .secondary-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="welcome-container">
        <h2>Welcome to the Student Wellness System</h2>

        <a class="welcome-button" href="login.jsp">Login</a>
        <a class="welcome-button" href="register.jsp" style="background-color: #007bff;">Register</a>

       <%-- <a class="secondary-link" href="#">Learn more</a>  Optional extra link --%>
    </div>
</body>
</html>

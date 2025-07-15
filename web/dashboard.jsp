<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<%@ page session="true" %>
<%
    // Handle logout request
    if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("logout") != null) {
        session.invalidate();
        response.sendRedirect("login.jsp");
        return;
    }

    // Check if user is logged in
    String name = (String) session.getAttribute("studentName");
    if (name == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
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

        .dashboard-container {
        background: #ffffff;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
        width: 320px;
        transition: transform 0.3s ease;
        }

        h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #4c2c72;
        }

        p {
            margin-left: 50%;
            margin-bottom: 30px;
            color: #555;
        }

        .logout-button {
            padding: 10px 20px;
            background-color: #dc3545;
            color: white;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
        }

        .logout-button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h2>Welcome, <%= name %>!</h2>  
        <p>This is your student dashboard.</p>

        <form method="post">
            <input type="hidden" name="logout" value="true">
            <button type="submit" class="logout-button">Logout</button>
        </form>
    </div>
</body>
</html>

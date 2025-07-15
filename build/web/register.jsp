<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
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

        .register-container {
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

        label {
        display: block;
        margin-bottom: 6px;
        color: #5c487a;
        font-weight: 500;
        }

        input[type="text"],
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

        .back-link {
        display: block;
        text-align: center;
        margin-top: 14px;
        font-size: 0.95em;
        }

        .back-link a {
        color: #6c3bb9;
        text-decoration: none;
        font-weight: 500;
        }

        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Register New Student</h2>
        <form action="RegisterServlet" method="post">
            <label>Student Number:</label>
            <input type="text" name="student_number" required>

            <label>Name:</label>
            <input type="text" name="name" required>

            <label>Surname:</label>
            <input type="text" name="surname" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Phone:</label>
            <input type="text" name="phone" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <input type="submit" value="Register">
        </form>
        <div class="back-link">
            <a href="index.jsp">← Back to Home</a>
        </div>
    </div>
</body>
</html>

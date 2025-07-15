# Student Wellness System — PRG381 Project

This is a Java-based web application developed as part of the PRG381 module at Belgium Campus ITversity. The system provides a simple platform for managing student wellness, including user registration and login functionality.

---

## Technologies Used

- **Java** (JSP & Servlets)  
- **PostgreSQL** — Database  
- **JDBC** — Database Connectivity  
- **Apache NetBeans** — IDE  
- **Apache Tomcat** — Web Server  
- **Git & GitHub** — Version Control  

---

## Project Structure


StudentWellnessSystem/
├── src/ # Java source code
├── web/ # JSP pages (register.jsp, login.jsp, dashboard.jsp)
├── nbproject/ # NetBeans project config
├── build/ # Ignored build files
├── README.md # Project overview


---

## How to Run the Application

1. Open the project in **NetBeans**
2. Ensure **Apache Tomcat** is installed and running
3. Deploy the project
4. Open `register.jsp` in your browser
5. Register a new user, then log in via `login.jsp`

---

## SQL Initialization Script

If available, use `init_db.sql` to create and populate the `users` table in your PostgreSQL database.

---

## Additional Notes

- Follows the **MVC architecture**
- Passwords are securely hashed using **SHA-256**
- Login sessions are managed using **HTTP sessions**
- User is redirected to `dashboard.jsp` upon successful login

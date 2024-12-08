<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student - Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 15px 10px;
            text-align: center;
        }
        .container {
            display: flex;
            height: 100vh;
        }
        .sidebar {
            width: 250px;
            background-color: #333;
            color: white;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            cursor: pointer;
        }
        .sidebar a:hover {
            background-color: #575757;
        }
        .main {
            flex: 1;
            padding: 20px;
            background-color: #fff;
        }
        .hidden {
            display: none;
        }
        .input-container {
            margin: 20px 0;
        }
        label {
            font-size: 1em;
            color: #333;
        }
        input[type="text"], input[type="password"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
        }
        button {
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <header>
        <h1>Admin Dashboard - Student Management System</h1>
    </header>
    <div class="container">
        <div class="sidebar">
            <h2>Navigation</h2>
            <a href="admin.jsp"><i class="fas fa-home"></i> Dashboard</a>
            <a href="viewStudents.jsp"><i class="fas fa-users"></i> View Students</a>
            <a href="addstudent.jsp"><i class="fas fa-user-plus"></i> Add Student</a>
            <a href="updateMarks.jsp"><i class="fas fa-edit"></i> Update Marks</a>
            <a href="manageTests.jsp"><i class="fas fa-file-alt"></i> Manage Tests</a>
            <a href="viewCourses.jsp"><i class="fas fa-book"></i> View Courses</a>
            <a href="addCourse.jsp"><i class="fas fa-plus-circle"></i> Add Course</a>
            <a href="home.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
        <div class="main">
            <h2>Add New Student</h2>
            <form action="addstudent.jsp" method="post">
                <div class="input-container">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="input-container">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="input-container">
                    <label for="branch">Branch:</label>
                    <input type="text" id="branch" name="branch" required>
                </div>
                <button type="submit">Add Student</button>
            </form>

            <% 
                // Check if form is submitted
                if ("POST".equalsIgnoreCase(request.getMethod())) {
                    // Collect form data
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    String branch = request.getParameter("branch");

                    // Database connection
                    Connection conn = null;
                    PreparedStatement stmt = null;

                    try {
                        // DB Connection details
                        String dbUrl = "jdbc:mysql://localhost:3306/pro";
                        String dbUser = "root";
                        String dbPass = "2323";
                        conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

                        // SQL Insert statement
                        String query = "INSERT INTO student (username, password, branch) VALUES (?, ?, ?)";
                        stmt = conn.prepareStatement(query);
                        stmt.setString(1, username);
                        stmt.setString(2, password);
                        stmt.setString(3, branch);

                        // Execute query
                        int rowsAffected = stmt.executeUpdate();

                        if (rowsAffected > 0) {
                            out.println("<div class='alert alert-success'>Student added successfully!</div>");
                        } else {
                            out.println("<div class='alert alert-danger'>Failed to add student.</div>");
                        }

                    } catch (SQLException e) {
                        out.println("<div class='alert alert-danger'>Error: " + e.getMessage() + "</div>");
                    } finally {
                        try {
                            if (stmt != null) stmt.close();
                            if (conn != null) conn.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                }
            %>
        </div>
    </div>
</body>
</html>

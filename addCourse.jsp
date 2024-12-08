<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Course</title>
    <style>
        /* Basic styling for the form */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .input-container {
            margin-bottom: 15px;
        }

        label {
            font-size: 14px;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            margin-top: 10px;
        }

        button:hover {
            background-color: #45a049;
        }

        .alert {
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
        }

        .alert-success {
            background-color: #d4edda;
            color: #155724;
        }

        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
        }

        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }

        a:hover {
            color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">

    <% 
        String successMessage = "";
        String errorMessage = "";

        // Check if the form is submitted
        if(request.getMethod().equalsIgnoreCase("POST")) {
            String courseCode = request.getParameter("courseCode");
            String courseName = request.getParameter("courseName");
            String semester = request.getParameter("semester");
            
            if(courseCode != null && courseName != null && semester != null) {
                Connection conn = null;
                PreparedStatement stmt = null;
                try {
                    // Database connection setup
                    String dbUrl = "jdbc:mysql://localhost:3306/pro";  // Update this URL with your database name
                    String dbUser = "root";  // Update with your MySQL username
                    String dbPass = "2323";  // Update with your MySQL password
                    conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

                    // Insert query
                    String query = "INSERT INTO courses (courseCode, courseName, semester) VALUES (?, ?, ?)";
                    stmt = conn.prepareStatement(query);
                    stmt.setString(1, courseCode);
                    stmt.setString(2, courseName);
                    stmt.setString(3, semester);
                    
                    // Execute the update and get the number of rows affected
                    int rowsAffected = stmt.executeUpdate();
                    
                    // Debugging: Check if rows were affected
                    if (rowsAffected > 0) {
                        successMessage = "Course added successfully!";
                    } else {
                        errorMessage = "Failed to add course. No rows affected.";
                    }
                } catch (SQLException e) {
                    // Detailed error handling
                    errorMessage = "Error occurred: " + e.getMessage();
                    e.printStackTrace(); // Print stack trace to server logs for debugging
                } finally {
                    try {
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        errorMessage = "Error closing database connection: " + e.getMessage();
                    }
                }
            } else {
                errorMessage = "All fields are required!";
            }
        }
    %>

    <!-- Display success or error messages -->
    <% if (!successMessage.isEmpty()) { %>
        <div class="alert alert-success"><%= successMessage %></div>
    <% } %>

    <% if (!errorMessage.isEmpty()) { %>
        <div class="alert alert-danger"><%= errorMessage %></div>
    <% } %>

    <!-- Add Course Form -->
    <h2>Add New Course</h2>
    <form action="addCourse.jsp" method="POST">
        <div class="input-container">
            <label for="courseCode">Course Code:</label>
            <input type="text" id="courseCode" name="courseCode" required>
        </div>
        <div class="input-container">
            <label for="courseName">Course Name:</label>
            <input type="text" id="courseName" name="courseName" required>
        </div>
        <div class="input-container">
            <label for="semester">Semester:</label>
            <input type="text" id="semester" name="semester" required>
        </div>
        <button type="submit">Add Course</button>
    </form>

    <!-- Optionally, provide a link to go back to the dashboard -->
    <a href="admin.jsp">Go back to Dashboard</a>

</div>

</body>
</html>

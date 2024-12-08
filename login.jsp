<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <a class="navbar-brand" href="#">Academics</a>
        </div>
    </nav>

    <div class="container mt-5">
        <h2 class="text-center">Welcome <%= request.getParameter("role") %> Login</h2>

        <!-- Login form -->
        <form action="login.jsp" method="post">
            <!-- Hidden field to pass the role -->
            <input type="hidden" name="role" value="<%= request.getParameter("role") %>">
            
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            
            <button type="submit" class="btn btn-primary w-100">Login</button>
        </form>

        <%
            // Handle login validation and insertion here
            String role = request.getParameter("role");
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username != null && password != null && !username.isEmpty() && !password.isEmpty()) {
                Connection conn = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;

                try {
                    // Load MySQL JDBC Driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Database connection setup
                    String dbUrl = "jdbc:mysql://localhost:3306/pro?useSSL=false&serverTimezone=UTC";
                    String dbUser = "root";
                    String dbPass = "2323";
                    conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

                    // Adjust query based on the selected role (student or admin)
                    String table = (role != null && role.equals("admin")) ? "admin" : "student";
                    String checkQuery = "SELECT * FROM " + table + " WHERE username = ?";
                    stmt = conn.prepareStatement(checkQuery);
                    stmt.setString(1, username);
                    rs = stmt.executeQuery();

                    if (rs.next()) {
                        // User exists, validate credentials
                        String dbPassword = rs.getString("password");
                        if (password.equals(dbPassword)) {
                            // If valid, redirect based on role
                            if ("admin".equals(role)) {
                                response.sendRedirect("admin.jsp"); // Redirect to admin page
                            } else {
                                response.sendRedirect("student.jsp"); // Redirect to student page
                            }
                        } else {
                            out.println("<div class='alert alert-danger'>Invalid credentials, please try again.</div>");
                        }
                    } else {
                        // User doesn't exist, insert into database
                        String insertQuery = "INSERT INTO " + table + " (username, password, role) VALUES (?, ?, ?)";
                        stmt = conn.prepareStatement(insertQuery);
                        stmt.setString(1, username);
                        stmt.setString(2, password);
                        stmt.setString(3, role);
                        int rowsAffected = stmt.executeUpdate();

                        if (rowsAffected > 0) {
                            // If inserted successfully, redirect based on role
                            if ("admin".equals(role)) {
                                response.sendRedirect("admin.jsp"); // Redirect to admin page
                            } else {
                                response.sendRedirect("student.jsp"); // Redirect to student page
                            }
                        } else {
                            out.println("<div class='alert alert-danger'>Error occurred while registering, please try again.</div>");
                        }
                    }
                } catch (ClassNotFoundException e) {
                    out.println("<div class='alert alert-danger'>MySQL Driver not found: " + e.getMessage() + "</div>");
                } catch (SQLException e) {
                    out.println("<div class='alert alert-danger'>Database Error: " + e.getMessage() + "</div>");
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
    </div>
</body>
</html>

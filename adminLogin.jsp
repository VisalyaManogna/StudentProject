<%-- adminLogin.jsp --%>
<%@ page import="java.sql.*, java.io.*" %>
<% 
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String errorMessage = "";
    
    if (username != null && password != null) {
        // Establish the connection to the database
        String dbURL = "jdbc:mysql://localhost:3306/your_database";
        String dbUser = "root";
        String dbPass = "2323";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);
            String query = "SELECT * FROM admins WHERE username = ? AND password = ?";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                // Successful login
                response.sendRedirect("admin_dashboard.jsp");
            } else {
                errorMessage = "Invalid username or password!";
            }
        } catch (Exception e) {
            errorMessage = "Database connection error!";
            e.printStackTrace();
        }
    }
%>

<div class="container mt-5">
    <h2>Admin Login</h2>
    <form action="adminLogin.jsp" method="POST">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
        <% if (!errorMessage.isEmpty()) { %>
            <div class="alert alert-danger mt-2">
                <%= errorMessage %>
            </div>
        <% } %>
    </form>
</div>

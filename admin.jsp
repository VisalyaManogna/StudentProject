<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Student Management System</title>
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }
        table th, table td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        table th {
            background-color: #4CAF50;
            color: white;
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
        .input-container {
            margin: 20px 0;
        }
        .course-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 20px;
        }
        .course-box {
            width: 22%;
            padding: 15px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .course-box h3 {
            font-size: 1.2em;
            margin-bottom: 10px;
            color: #333;
        }
        .course-box p {
            font-size: 1em;
            margin: 5px 0;
            color: #666;
        }
        .btn-add-course {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            text-align: center;
            text-decoration: none;
        }
        .btn-add-course:hover {
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
            <a onclick="showSection('viewStudents')"><i class="fas fa-users"></i> View Students</a>
            <a onclick="showSection('addStudents')"><i class="fas fa-user-plus"></i> Add Student</a>
            <a onclick="showSection('updateMarks')"><i class="fas fa-edit"></i> Update Marks</a>
            <a onclick="showSection('manageTests')"><i class="fas fa-file-alt"></i> Manage Tests</a>
            <a onclick="showSection('viewCourses')"><i class="fas fa-book"></i> View Courses</a>
            <a onclick="showSection('addCourses')"><i class="fas fa-plus-circle"></i> Add Course</a>
            <a href="home.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
        <div class="main">
            <!-- View Students -->
            <div id="viewStudents" class="hidden">
                <h2>Students List</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Branch</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            Connection conn = null;
                            PreparedStatement stmt = null;
                            ResultSet rs = null;

                            try {
                                String dbUrl = "jdbc:mysql://localhost:3306/pro";  
                                String dbUser = "root";  
                                String dbPass = "2323";  
                                conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

                                String query = "SELECT username, branch FROM student";  
                                stmt = conn.prepareStatement(query);
                                rs = stmt.executeQuery();

                                while (rs.next()) {
                                    String username = rs.getString("username");
                                    String branch = rs.getString("branch");
                        %>
                        <tr>
                            <td><%= username %></td>
                            <td><%= branch %></td>
                        </tr>
                        <%
                                }
                            } catch (SQLException e) {
                                e.printStackTrace();
                                out.println("<div class='alert alert-danger'>Error occurred: " + e.getMessage() + "</div>");
                            } finally {
                                try {
                                    if (rs != null) rs.close();
                                    if (stmt != null) stmt.close();
                                    if (conn != null) conn.close();
                                } catch (SQLException e) {
                                    e.printStackTrace();
                                }
                            }
                        %>
                    </tbody>
                </table>
            </div>
            <!-- Update Marks -->
            <div id="updateMarks" class="hidden">
                <h2>Update Marks</h2>
                <form action="updateMarks.jsp" method="post">
                    <div class="input-container">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" required>
                    </div>
                    <div class="input-container">
                        <label for="subject">Subject:</label>
                        <input type="text" id="subject" name="subject" required>
                    </div>
                    <div class="input-container">
                        <label for="marks">Marks:</label>
                        <input type="number" id="marks" name="marks" min="0" max="100" required>
                    </div>
                    <button type="submit">Update Marks</button>
                </form>
            </div>
            <!-- Manage Tests -->
            <div id="manageTests" class="hidden">
                <h2>Manage Tests</h2>
                <h3>Select Course for Analysis</h3>
                <form id="courseForm">
                    <div class="input-container">
                        <label for="courseName">Course Name:</label>
                        <select id="courseName" name="courseName">
                            <option value="Course1">Course 1</option>
                            <option value="Course2">Course 2</option>
                            <option value="Course3">Course 3</option>
                            <option value="Course4">Course 4</option>
                        </select>
                    </div>
                    <button type="button" onclick="getCourseAnalysis()">View Analysis</button>
                </form>
                
                <div id="chartContainer" style="width: 80%; margin-top: 30px;">
                    <canvas id="courseChart"></canvas>
                </div>
            </div>
            <!-- Add Student -->
            <div id="addStudents" class="hidden">
                <h2>Add New Student</h2>
                <form action="addStudent.jsp" method="post">
                    <div class="input-container">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" required>
                    </div>
                    <div class="input-container">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <button type="submit">Add Student</button>
                </form>
            </div>

            <!-- Add Course Section (Initially hidden) -->
            <div id="addCourseSection" class="hidden">
                <a href="addCourse.jsp">
                    <button type="button" class="btn-add-course">Add Course</button>
                </a>
            </div>

            <!-- View Courses Section -->
            <div id="viewCourses" class="hidden">
                <h2>View Courses</h2>
                <div class="course-container">
                    <div class="course-box">
                        <h3>Course 1</h3>
                        <p><strong>Subject:</strong> PYTHON</p>
                        <p><strong>Information:</strong> Information about Course 1.</p>
                    </div>
                    <div class="course-box">
                        <h3>Course 2</h3>
                        <p><strong>Subject:</strong> C</p>
                        <p><strong>Information:</strong> Information about Course 2.</p>
                    </div>
                    <div class="course-box">
                        <h3>Course 3</h3>
                        <p><strong>Subject:</strong> OBJECT ORIENTED PROGRAMMING</p>
                        <p><strong>Information:</strong> Information about Course 3.</p>
                    </div>
                    <div class="course-box">
                        <h3>Course 4</h3>
                        <p><strong>Subject:</strong> JAVA</p>
                        <p><strong>Information:</strong> Information about Course 4.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function showSection(sectionId) {
            const sections = document.querySelectorAll('.main > div');
            sections.forEach(section => section.classList.add('hidden'));

            if (sectionId === 'addCourses') {
                document.getElementById('addCourseSection').classList.remove('hidden');
            } else {
                document.getElementById('addCourseSection').classList.add('hidden');
            }

            document.getElementById(sectionId).classList.remove('hidden');
        }
    </script>
</body>
</html>

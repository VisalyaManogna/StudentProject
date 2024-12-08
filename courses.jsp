<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: url('background-image-path.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #2A2B8D;
        }
        .header {
            background-color: #2A2B8D;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
        }
        .header .logo {
            display: flex;
            align-items: center;
        }
        .header .logo span {
            font-size: 20px;
            font-weight: bold;
            margin-left: 10px;
        }
        .header .logout {
            text-decoration: none;
            color: white;
            font-size: 16px;
            font-weight: bold;
            display: flex;
            align-items: center;
        }
        .header .logout i {
            margin-right: 5px;
        }
        .sidebar {
            width: 250px;
            background-color: white;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }
        .sidebar h2 {
            text-align: center;
            color: #2A2B8D;
            margin-bottom: 20px;
            font-size: 22px;
            border-bottom: 2px solid #f0f0f0;
            padding-bottom: 10px;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .sidebar ul li {
            padding: 15px 20px;
            display: flex;
            align-items: center;
            border-bottom: 1px solid #f0f0f0;
            cursor: pointer;
        }
        .sidebar ul li i {
            font-size: 20px;
            margin-right: 10px;
            color: #2A2B8D;
        }
        .sidebar ul li span {
            font-size: 16px;
            font-weight: bold;
            color: #2A2B8D;
        }
        .sidebar ul li:hover {
            background-color: #f9f9f9;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
        }
        .content h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .courses-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            background-color: white;
        }
        .courses-table th, .courses-table td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }
        .courses-table th {
            background-color: #2A2B8D;
            color: white;
            font-size: 16px;
        }
        .courses-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .courses-table tr:hover {
            background-color: #f1f1f1;
        }
        .courses-table td {
            font-size: 14px;
        }
        #attendanceSection, #feedbackForm {
            display: none;
        }
        .feedback-form {
            background-color: white;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            max-width: 600px;
            margin: 20px auto;
        }
        .feedback-form input, .feedback-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        .feedback-form button {
            background-color: #2A2B8D;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
        }
        .feedback-form button:hover {
            background-color: #1a1b73;
        }
        .attendance-table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        .attendance-table th, .attendance-table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        .attendance-table th {
            background-color: #2A2B8D;
            color: white;
        }
    </style>
    <script>
        function showCourses(type) {
            // Hide all sections first
            document.getElementById("attendanceSection").style.display = "none";
            document.getElementById("feedbackForm").style.display = "none";
            document.getElementById("coursesTable").style.display = "none";

            const tbody = document.getElementById("coursesBody");
            const heading = document.getElementById("coursesHeading");

            if (type === "all") {
                heading.innerText = "All Courses";
                tbody.innerHTML = ` 
                    <tr>
                        <td>22CS22023</td>
                        <td>Python</td>
                        <td>Even</td>
                    </tr>
                    <tr>
                        <td>22CS22024</td>
                        <td>Java</td>
                        <td>Odd</td>
                    </tr>
                    <tr>
                        <td>22CS22025</td>
                        <td>Data Structures</td>
                        <td>Even</td>
                    </tr>
                `;
                document.getElementById("coursesTable").style.display = "table";
            } else if (type === "enrolled") {
                heading.innerText = "Enrolled Courses";
                tbody.innerHTML = ` 
                    <tr>
                        <td>22CS22023</td>
                        <td>Python</td>
                        <td>Even</td>
                        <td class="enrolled">&#10004; Enrolled</td>
                    </tr>
                    <tr>
                        <td>22CS22024</td>
                        <td>Java</td>
                        <td>Odd</td>
                        <td class="not-enrolled">&#10008; Not Enrolled</td>
                    </tr>
                    <tr>
                        <td>22CS22025</td>
                        <td>Data Structures</td>
                        <td>Even</td>
                        <td class="enrolled">&#10004; Enrolled</td>
                    </tr>
                `;
                document.getElementById("coursesTable").style.display = "table";
            }
        }

        // Function to show attendance
        function showAttendance() {
            // Hide other sections
            document.getElementById("coursesTable").style.display = "none";
            document.getElementById("feedbackForm").style.display = "none";
            document.getElementById("attendanceSection").style.display = "none";

            const tbody = document.getElementById("attendanceBody");
            const heading = document.getElementById("attendanceHeading");

            heading.innerText = "Course Attendance";

            // Updated attendance data
            tbody.innerHTML = ` 
                <tr>
                    <td>Python</td>
                    <td>22CS22023</td>
                    <td>70%</td>
                    <td>80%</td>
                </tr>
                <tr>
                    <td>Java</td>
                    <td>22CS22024</td>
                    <td>65%</td>
                    <td>75%</td>
                </tr>
                <tr>
                    <td>Data Structures</td>
                    <td>22CS22025</td>
                    <td>80%</td>
                    <td>85%</td>
                </tr>
            `;
            document.getElementById("attendanceSection").style.display = "block";
        }

        // Function to show feedback form
        function showFeedback() {
            // Hide other sections
            document.getElementById("coursesTable").style.display = "none";
            document.getElementById("attendanceSection").style.display = "none";
            document.getElementById("feedbackForm").style.display = "none";

            document.getElementById("feedbackForm").style.display = "block";
        }
    </script>
</head>
<body>
    <div class="header">
        <div class="logo">
            <i class="fa fa-book"></i>
            <span>Student Dashboard</span>
        </div>
        <div class="logout">
            <i class="fa fa-sign-out-alt"></i>
            <a href="#">Logout</a>
        </div>
    </div>
    <div class="sidebar">
        <h2>Menu</h2>
        <ul>
            <li onclick="showCourses('all')">
                <i class="fa fa-list"></i>
                <span>All Courses</span>
            </li>
            <li onclick="showCourses('enrolled')">
                <i class="fa fa-check-circle"></i>
                <span>Enrolled Courses</span>
            </li>
            <li onclick="showAttendance()">
                <i class="fa fa-calendar-check"></i>
                <span>Attendance</span>
            </li>
            <li onclick="showFeedback()">
                <i class="fa fa-comment-dots"></i>
                <span>Feedback</span>
            </li>
        </ul>
    </div>
    <div class="content">
        <h2 id="coursesHeading">Courses</h2>
        <table id="coursesTable" class="courses-table" style="display:none;">
            <thead>
                <tr>
                    <th>Course Code</th>
                    <th>Course Name</th>
                    <th>Semester</th>
                </tr>
            </thead>
            <tbody id="coursesBody"></tbody>
        </table>

        <div id="attendanceSection">
            <h2 id="attendanceHeading">Attendance</h2>
            <table class="attendance-table">
                <thead>
                    <tr>
                        <th>Course Name</th>
                        <th>Course Code</th>
                        <th>Practical %</th>
                        <th>Skill %</th>
                    </tr>
                </thead>
                <tbody id="attendanceBody"></tbody>
            </table>
        </div>

        <div id="feedbackForm">
            <h2>Course Feedback</h2>
            <form class="feedback-form">
                <input type="text" placeholder="Course Code" required>
                <textarea rows="5" placeholder="Write your feedback..." required></textarea>
                <button type="submit">Submit Feedback</button>
            </form>
        </div>
    </div>
</body>
</html>

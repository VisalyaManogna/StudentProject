<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            height: 100vh;
            overflow: hidden;
        }

        /* Full-screen background image */
        .background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('images/projectpic.png') no-repeat center center fixed; /* Use relative path */
            background-size: cover;
            z-index: -1; /* Place background behind all content */
        }

        .container {
            text-align: center;
            padding: 50px 20px;
            color: white;
            z-index: 1; /* Ensure content stays on top */
        }

        h1 {
            font-size: 48px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #FFA500;
        }

        .welcome-message {
            font-size: 24px;
            margin-bottom: 30px;
        }

        .discover-more-btn {
            padding: 12px 24px;
            font-size: 18px;
            color: white;
            background-color: #FF8C00;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-bottom: 50px;
        }

        .discover-more-btn:hover {
            background-color: #FF4500;
        }

        .sections {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-top: 40px;
            flex-wrap: wrap;
        }

        .section {
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 15px;
            padding: 25px;
            width: 200px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .section:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        .section a {
            text-decoration: none;
            color: #FFA500;
            font-weight: bold;
            font-size: 18px;
            transition: color 0.3s;
        }

        .section a:hover {
            color: #FFD700;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            h1 {
                font-size: 36px;
            }

            .discover-more-btn {
                font-size: 16px;
                padding: 10px 20px;
            }

            .sections {
                flex-direction: column;
                gap: 30px;
            }

            .section {
                width: 250px;
            }
        }
    </style>
</head>
<body>
    <div class="background"></div>
    <div class="container">
        <!-- Fetching username from the request -->
        <%
            String username = request.getParameter("username");
            if (username == null || username.trim().isEmpty()) {
                username = "Guest"; // Default fallback
            }
        %>
        <h1>Inspired Institute Of Management</h1>
        <p class="welcome-message">Welcome, <%= username %>!</p>
        <button class="discover-more-btn">DISCOVER MORE</button>

        <div class="sections">
            <div class="section">
                <a href="courses.jsp">COURSES</a>
            </div>
            <div class="section">
                <a href="analysis.jsp">ANALYSIS</a>
            </div>
            <div class="section">
                <a href="profile.jsp">PROFILE</a>
            </div>
        </div>
    </div>
</body>
</html>

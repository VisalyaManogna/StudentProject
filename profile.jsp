<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Profile</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            background: url('background-image-path.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #2A2B8D;
        }

        .navbar {
            width: 250px;
            height: 100vh;
            background-color: white;
            position: fixed;
            top: 0;
            left: 0;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }
        .navbar h2 {
            text-align: center;
            color: #2A2B8D;
            margin-bottom: 20px;
            font-size: 22px;
            border-bottom: 2px solid #f0f0f0;
            padding-bottom: 10px;
        }
        .navbar ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .navbar ul li {
            padding: 15px 20px;
            display: flex;
            align-items: center;
            cursor: pointer;
            border-bottom: 1px solid #f0f0f0;
        }
        .navbar ul li i {
            margin-right: 10px;
            font-size: 20px;
            color: #2A2B8D;
        }
        .navbar ul li:hover {
            background-color: #f9f9f9;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
        }

        .profile-card {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            margin: 30px auto;
        }

        .profile-card h2 {
            color: #2A2B8D;
            font-size: 28px;
            text-align: center;
            margin-bottom: 30px;
        }

        .profile-details {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            font-size: 16px;
            color: #333;
        }

        .profile-details .profile-item {
            padding: 10px;
            background-color: #f9f9f9;
            border-radius: 8px;
            font-weight: bold;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .profile-details .profile-item span {
            font-weight: normal;
            color: #555;
        }

        .profile-button {
            display: block;
            width: 200px;
            margin: 30px auto;
            padding: 12px;
            background-color: #2A2B8D;
            color: white;
            text-align: center;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease;
        }

        .profile-button:hover {
            background-color: #4A4DBF;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <h2>Menu</h2>
        <ul>
            <li><i class="fa fa-user"></i><span>Profile</span></li>
            <li><i class="fa fa-cogs"></i><span>Settings</span></li>
        </ul>
    </div>

    <!-- Content Area -->
    <div class="content">
        <div class="profile-card">
            <h2>Student Profile</h2>

            <div class="profile-details">
                <div class="profile-item">
                    <span>Student ID:</span> 123456
                </div>
                <div class="profile-item">
                    <span>Full Name:</span> John Doe
                </div>
                <div class="profile-item">
                    <span>Last Name:</span> Doe
                </div>
                <div class="profile-item">
                    <span>Email:</span> johndoe@example.com
                </div>
                <div class="profile-item">
                    <span>Address:</span> 123 Main Street, City, State
                </div>
                <div class="profile-item">
                    <span>Aadhar Card:</span> 1234 5678 9012
                </div>
                <div class="profile-item">
                    <span>Branch:</span> Computer Science
                </div>
                <div class="profile-item">
                    <span>Zip Code:</span> 12345
                </div>
                <div class="profile-item">
                    <span>Year:</span> 3rd Year
                </div>
                <div class="profile-item">
                    <span>Semester:</span> 6th Semester
                </div>
            </div>

            <a href="editProfile.jsp" class="profile-button">Edit Profile</a>
        </div>
    </div>
    
</body>
</html>

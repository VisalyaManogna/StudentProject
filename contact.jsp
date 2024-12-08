<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: url('background-image-path.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }

        /* Navbar Style */
        .navbar {
            width: 100%;
            background-color: #2A2B8D;
            position: fixed;
            top: 0;
            left: 0;
            padding: 15px 20px;
            color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .navbar h2 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
            display: inline-block;
        }

        .navbar ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: inline-block;
            float: right;
        }

        .navbar ul li {
            display: inline;
            margin-right: 20px;
        }

        .navbar ul li a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            font-weight: 500;
        }

        .navbar ul li a:hover {
            text-decoration: underline;
        }

        /* Content area */
        .content {
            padding-top: 100px; /* Space for fixed navbar */
            padding: 50px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .contact-box {
            width: 80%;
            max-width: 900px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .contact-box h3 {
            font-size: 24px;
            color: #2A2B8D;
            margin-bottom: 15px;
        }

        .contact-box p {
            font-size: 18px;
            color: #555;
            margin-bottom: 10px;
        }

        .contact-box a {
            display: inline-block;
            margin-top: 10px;
            font-size: 16px;
            color: #2A2B8D;
            text-decoration: none;
            font-weight: bold;
        }

        .contact-box a:hover {
            text-decoration: underline;
        }

        .contact-box i {
            font-size: 30px;
            color: #2A2B8D;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <h2>Inspired Institute of Management</h2>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="courses.jsp">Courses</a></li>
            <li><a href="analysis.jsp">Analysis</a></li>
            <li><a href="profile.jsp">Profile</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
    </div>

    <!-- Content Area -->
    <div class="content">
        <!-- Contact Number -->
        <div class="contact-box">
            <i class="fa fa-phone"></i>
            <h3>Contact Number</h3>
            <p>For inquiries, reach us at:</p>
            <p>+91 123 456 7890</p>
            <a href="tel:+911234567890">Call Now</a>
        </div>

        <!-- College Awards -->
        <div class="contact-box">
            <i class="fa fa-trophy"></i>
            <h3>College Awards</h3>
            <p>We are proud to have won several prestigious awards in academics and sports.</p>
            <a href="#">Learn More</a>
        </div>

        <!-- LEI (Local Education Institution) -->
        <div class="contact-box">
            <i class="fa fa-building"></i>
            <h3>LEI (Local Education Institution)</h3>
            <p>Our institution is recognized by the Ministry of Education as a top Local Education Institution.</p>
            <a href="#">View Certificate</a>
        </div>

        <!-- Chairman -->
        <div class="contact-box">
            <i class="fa fa-user-tie"></i>
            <h3>Chairman</h3>
            <p>Mr. John Doe, Chairman of Inspired Institute of Management</p>
            <a href="#">Read Message</a>
        </div>

        <!-- General Contact -->
        <div class="contact-box">
            <i class="fa fa-envelope"></i>
            <h3>General Contact</h3>
            <p>For any queries, feel free to email us at:</p>
            <p>info@institution.com</p>
            <a href="mailto:info@institution.com">Email Us</a>
        </div>
    </div>

</body>
</html>

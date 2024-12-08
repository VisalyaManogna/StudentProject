<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="styles.css">
    <!-- Link to Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
            text-align: center;
        }

        .about-box {
            width: 80%;
            max-width: 900px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .about-box h3 {
            font-size: 28px;
            color: #2A2B8D;
            margin-bottom: 20px;
        }

        .about-box p {
            font-size: 18px;
            color: #555;
            margin-bottom: 10px;
            line-height: 1.6;
        }

        .about-box .highlight {
            font-weight: bold;
            color: #2A2B8D;
        }

        .about-box img {
            width: 100%;
            max-width: 600px;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        /* Icons in the about-box */
        .about-box i {
            color: #2A2B8D;
            margin-right: 10px;
            font-size: 24px;
        }

        .about-box ul {
            list-style: none;
            padding: 0;
        }

        .about-box ul li {
            font-size: 18px;
            color: #555;
            line-height: 1.6;
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
            <li><a href="aboutus.jsp">About Us</a></li>
        </ul>
    </div>

    <!-- Content Area -->
    <div class="content">
        <!-- About Us Section -->
        <div class="about-box">
            <h3><i class="fas fa-building"></i> About Inspired Institute of Management</h3>
            <img src="college-image.jpg" alt="College Image">
            <p>Welcome to the <span class="highlight">Inspired Institute of Management</span>, a premier educational institution offering world-class programs in management and business. We are committed to shaping the future leaders of tomorrow by providing quality education, cutting-edge research opportunities, and a strong focus on practical experience.</p>
            <p>Founded in <span class="highlight">2005</span>, our institution has grown to become one of the most respected names in education, providing a range of undergraduate and postgraduate programs designed to foster leadership, innovation, and critical thinking.</p>
        </div>

        <!-- Mission & Vision Section -->
        <div class="about-box">
            <h3><i class="fas fa-bullseye"></i> Our Mission & Vision</h3>
            <p><span class="highlight">Mission:</span> To provide high-quality, affordable education that empowers students to become successful leaders in the business world. We aim to build a nurturing environment for both academic and personal growth.</p>
            <p><span class="highlight">Vision:</span> To be a globally recognized institution that promotes excellence in management education, producing graduates who are innovative, socially responsible, and ready to tackle the challenges of the future.</p>
        </div>

        <!-- Leadership -->
        <div class="about-box">
            <h3><i class="fas fa-chalkboard-teacher"></i> Leadership</h3>
            <p>Under the guidance of our <span class="highlight">Chairman, Mr. John Doe</span>, Inspired Institute of Management has developed a strong academic foundation and a reputation for excellence. Our faculty members are experienced professionals who bring real-world expertise into the classroom, enriching the student experience.</p>
        </div>

        <!-- Achievements -->
        <div class="about-box">
            <h3><i class="fas fa-trophy"></i> Our Achievements</h3>
            <p>Over the years, Inspired Institute of Management has been recognized for its contributions to education and student success. Some of our key achievements include:</p>
            <ul>
                <li><i class="fas fa-check-circle"></i> Top-ranked institution in the region for business education.</li>
                <li><i class="fas fa-check-circle"></i> Multiple national-level awards for innovation in teaching and research.</li>
                <li><i class="fas fa-check-circle"></i> Strong alumni network with successful entrepreneurs and leaders in various industries.</li>
            </ul>
        </div>
    </div>

</body>
</html>

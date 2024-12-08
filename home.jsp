<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Performance Analysis</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
        }
        /* Navbar */
        .navbar {
            padding: 1rem;
        }
        .navbar-brand img {
            max-height: 40px;
            margin-right: 10px;
        }
        .navbar-nav .nav-link {
            font-weight: 500;
        }

        /* Hero Section Styling */
        .hero-section {
            background: url('hero.jpg') center/cover no-repeat;
            height: 80vh;
            background-color: rgba(0, 0, 0, 0.6);
            background-blend-mode: overlay;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 2rem;
        }
        .hero-section h1 {
            font-size: 3.5rem;
            font-weight: 700;
        }
        .hero-section p {
            font-size: 1.2rem;
            max-width: 800px;
            margin: 0 auto;
        }
        .btn-custom {
            padding: 12px 25px;
            font-size: 1rem;
            font-weight: 600;
            margin-top: 1rem;
            border-radius: 30px;
        }

        /* Modal Customization */
        .modal-content {
            border-radius: 15px;
        }
        .modal-body .btn {
            font-size: 1.2rem;
            padding: 12px;
            border-radius: 30px;
        }
        .modal-body .btn-primary {
            background-color: #007bff;
        }
        .modal-body .btn-secondary {
            background-color: #6c757d;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <a class="navbar-brand" href="#">
                 ACADEMICS
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#roleSelectionModal">Login</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="aboutus.jsp">About Us</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <header class="hero-section">
        <div class="container">
            <h1 class="display-4 fw-bold">Best Education For Graduation</h1>
            <p class="lead">The ideal graduation field varies by interest. Computer Science suits tech lovers, Business Administration appeals to future leaders, and Engineering is great for analytical minds. Select a path that aligns with your passion and career aspirations for a fulfilling future.</p>
        </div>
    </header>

    <!-- Modal for Role Selection -->
    <div class="modal fade" id="roleSelectionModal" tabindex="-1" aria-labelledby="roleSelectionModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="roleSelectionModalLabel">Select Your Role</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <button class="btn btn-primary w-100" onclick="window.location.href='login.jsp?role=student'">Student</button>
                    <button class="btn btn-secondary w-100 mt-3" onclick="window.location.href='login.jsp?role=admin'">Admin</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

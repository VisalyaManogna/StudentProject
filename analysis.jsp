<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Analysis</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
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
        .marks-section, .attendance-section {
            display: none;
        }
        .marks-table, .attendance-table {
            width: 100%;
            border-collapse: collapse;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            background-color: white;
        }
        .marks-table th, .attendance-table th {
            background-color: #2A2B8D;
            color: white;
            padding: 12px;
            text-align: center;
        }
        .marks-table td, .attendance-table td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        .marks-table tr:nth-child(even), .attendance-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .marks-table tr:hover, .attendance-table tr:hover {
            background-color: #f1f1f1;
        }
        .chart-container {
            width: 50%;
            margin: 20px auto;
        }
    </style>
    <script>
        function showMarks() {
            document.getElementById("marksSection").style.display = "block";
            document.getElementById("attendanceSection").style.display = "none";
            document.getElementById("attendanceChart").style.display = "none";
            document.getElementById("marksChart").style.display = "block";
        }

        function showAttendance() {
            document.getElementById("attendanceSection").style.display = "block";
            document.getElementById("marksSection").style.display = "none";
            document.getElementById("marksChart").style.display = "none";
            document.getElementById("attendanceChart").style.display = "block";
        }
        
        // Pie chart for Marks
        const marksData = {
            labels: ['Python', 'Java', 'Data Structures'],
            datasets: [{
                data: [85, 90, 78],
                backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56'],
                hoverBackgroundColor: ['#FF6384', '#36A2EB', '#FFCE56']
            }]
        };

        const marksConfig = {
            type: 'pie',
            data: marksData,
        };

        // Bar chart for Attendance
        const attendanceData = {
            labels: ['Python', 'Java', 'Data Structures'],
            datasets: [{
                label: 'Attendance Percentage',
                data: [80, 75, 90],
                backgroundColor: '#36A2EB',
                borderColor: '#2A2B8D',
                borderWidth: 1
            }]
        };

        const attendanceConfig = {
            type: 'bar',
            data: attendanceData,
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        };

        window.onload = function() {
            const marksChartCanvas = document.getElementById('marksPieChart');
            const attendanceChartCanvas = document.getElementById('attendanceBarChart');
            
            // Creating the charts when the window loads
            const marksChart = new Chart(marksChartCanvas, marksConfig);
            const attendanceChart = new Chart(attendanceChartCanvas, attendanceConfig);
        };
    </script>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <h2>Menu</h2>
        <ul>
            <li onclick="showMarks()"><i class="fa fa-graduation-cap"></i><span>Marks</span></li>
            <li onclick="showAttendance()"><i class="fa fa-calendar"></i><span>Attendance</span></li>
        </ul>
    </div>

    <!-- Content Area -->
    <div class="content">
        <h2>Analysis</h2>

        <!-- Marks Section -->
        <div id="marksSection" class="marks-section">
            <h3>Marks Analysis</h3>
            <table class="marks-table">
                <thead>
                    <tr>
                        <th>Course Code</th>
                        <th>Course Name</th>
                        <th>Marks Obtained</th>
                        <th>Max Marks</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>22CS22023</td>
                        <td>Python</td>
                        <td>85</td>
                        <td>100</td>
                    </tr>
                    <tr>
                        <td>22CS22024</td>
                        <td>Java</td>
                        <td>90</td>
                        <td>100</td>
                    </tr>
                    <tr>
                        <td>22CS22025</td>
                        <td>Data Structures</td>
                        <td>78</td>
                        <td>100</td>
                    </tr>
                </tbody>
            </table>
            <!-- Pie Chart for Marks -->
            <div id="marksChart" class="chart-container">
                <canvas id="marksPieChart"></canvas>
            </div>
        </div>

        <!-- Attendance Section -->
        <div id="attendanceSection" class="attendance-section">
            <h3>Attendance Analysis</h3>
            <table class="attendance-table">
                <thead>
                    <tr>
                        <th>Course Name</th>
                        <th>Attendance Percentage</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Python</td>
                        <td>80%</td>
                    </tr>
                    <tr>
                        <td>Java</td>
                        <td>75%</td>
                    </tr>
                    <tr>
                        <td>Data Structures</td>
                        <td>90%</td>
                    </tr>
                </tbody>
            </table>
            <!-- Bar Chart for Attendance -->
            <div id="attendanceChart" class="chart-container">
                <canvas id="attendanceBarChart"></canvas>
            </div>
        </div>
    </div>
</body>
</html>

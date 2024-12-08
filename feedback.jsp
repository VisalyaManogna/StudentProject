<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: url('background-image-path.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
        }
        .container {
            text-align: center;
            padding: 50px 20px;
        }
        .container h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }
        .feedback-table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
        }
        .feedback-table th, .feedback-table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        .feedback-table th {
            background-color: #2A2B8D;
            color: white;
            font-size: 16px;
        }
        .feedback-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .feedback-table tr:hover {
            background-color: #f1f1f1;
        }
        .feedback-form {
            margin-top: 20px;
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
    </style>
</head>
<body>
    <div class="container">
        <h1>Course Feedback</h1>

        <!-- Table for courses -->
        <table class="feedback-table">
            <thead>
                <tr>
                    <th>Course Code</th>
                    <th>Course Name</th>
                    <th>Rating (1-5)</th>
                    <th>Side Comments</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>22CS22023</td>
                    <td>Python</td>
                    <td>
                        <input type="number" min="1" max="5" placeholder="Rate 1-5" />
                    </td>
                    <td>
                        <textarea placeholder="Any side comments"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>22CS22024</td>
                    <td>Java</td>
                    <td>
                        <input type="number" min="1" max="5" placeholder="Rate 1-5" />
                    </td>
                    <td>
                        <textarea placeholder="Any side comments"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>22CS22025</td>
                    <td>Data Structures</td>
                    <td>
                        <input type="number" min="1" max="5" placeholder="Rate 1-5" />
                    </td>
                    <td>
                        <textarea placeholder="Any side comments"></textarea>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Submit Feedback Form -->
        <div class="feedback-form">
            <button type="submit">Submit Feedback</button>
        </div>
    </div>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to KL Library Management System - Login</title>
    <style>
        /* Global Styles */
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f0f2f5, #d5dae3);
            color: #333;
        }

        /* Container Styles */
        .container {
            background-color: #ffffff;
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            max-width: 400px;
            width: 100%;
            text-align: center;
            transition: transform 0.3s;
        }
        
        .container:hover {
            transform: scale(1.02);
        }

        /* Header Styles */
        .container h2 {
            font-size: 30px;
            color: #34495e;
            margin-bottom: 20px;
        }

        /* Form Styles */
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-weight: 600;
            color: #34495e;
            text-align: left;
            margin-left: 5px;
            font-size: 14px;
        }

        input[type="text"],
        input[type="password"] {
            padding: 12px;
            font-size: 16px;
            border: 1px solid #bdc3c7;
            border-radius: 8px;
            outline: none;
            transition: border-color 0.3s, box-shadow 0.3s;
            box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.05);
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #3498db;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.3);
        }

        input[type="submit"] {
            padding: 14px;
            font-size: 18px;
            color: #ffffff;
            background-color: #3498db;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s, box-shadow 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
            box-shadow: 0 4px 12px rgba(41, 128, 185, 0.4);
        }

        /* Footer Styles */
        .footer {
            margin-top: 20px;
            font-size: 13px;
            color: #95a5a6;
        }

        /* Responsive adjustments */
        @media (max-width: 500px) {
            .container {
                padding: 30px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to KL Library Management System</h2>
        <form action="LoginServlet" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            
            <input type="submit" value="Login">
        </form>
        <div class="footer">
            <p>&copy; Project Developed by Keerti Krishna Sreenivas S(Section 11)</p>
        </div>	
    </div>
</body>
</html>

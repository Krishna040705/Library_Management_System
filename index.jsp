<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 70%;
            margin: 40px auto;
            padding: 40px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #2C3E50;
            font-size: 36px;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            color: #7f8c8d;
            margin-bottom: 30px;
        }
        .menu-container {
            display: flex;
            justify-content: center; /* Center the menu horizontally */
        }
        .menu {
            display: grid;
            grid-template-columns: 1fr;
            gap: 20px;
        }
        .menu a {
            display: inline-block;
            padding: 15px 25px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }
        .menu a:hover {
            background-color: #2980b9;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            transform: translateY(-4px);
        }
        .menu a:active {
            background-color: #1abc9c;
            transform: translateY(2px);
        }
        .footer {
            text-align: center;
            margin-top: 40px;
            color: #7f8c8d;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the KL Library Management System</h1>
        <p>Select an Option below:</p>
        
        <div class="menu-container">
            <div class="menu">
                <a href="addBook.jsp">Add a Book</a>
                <a href="searchBook.jsp">Search for Books</a>
                <a href="borrowBook.jsp">Borrow a Book</a>
                <a href="fineManagement.jsp">Manage Fines</a>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; This Website is Developed by Keerti Krishna Sreenivas S(Section 11)</p>
    </div>
</body>
</html>

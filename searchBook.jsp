<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KL Library Management System - Search</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            font-size: 2.5em;
            font-weight: bold;
            color: #333;
            text-align: center;
            background-color: #007bff;
            color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 80%;
            margin-bottom: 30px;
        }

        .form-container {
            width: 300px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            font-size: 1.5em;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 1em;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <h1>Welcome to the KL Library Management System</h1>

    <div class="form-container">
        <h2>Search for a Book</h2>
        <form action="searchBook" method="get">
            <input type="text" name="title" placeholder="Enter book title">
            <input type="text" name="author" placeholder="Enter author name">
            <input type="text" name="genre" placeholder="Enter genre">
            <button type="submit">Search</button>
        </form>
    </div>

</body>
</html>

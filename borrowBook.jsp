<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Borrow a Book</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body and Layout */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            height: 100vh;
        }

        .form-container {
            background-color: #ffffff;
            padding: 2rem;
            max-width: 500px;
            width: 100%;
            border-radius: 12px;
            box-shadow: 0px 8px 24px rgba(0, 0, 0, 0.15);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .form-container:hover {
            transform: translateY(-5px);
            box-shadow: 0px 12px 30px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #333;
            font-size: 2rem;
            margin-bottom: 1.5rem;
            font-weight: bold;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #555;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 0.8rem;
            margin-bottom: 1.2rem;
            border: 2px solid #ddd;
            border-radius: 6px;
            font-size: 1rem;
            color: #333;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #2a9d8f;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            padding: 0.9rem;
            font-size: 1.1rem;
            color: #fff;
            background-color: #2a9d8f;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #21867a;
            transform: scale(1.05);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 1.5rem;
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Borrow a Book</h2>
        <form action="BorrowBookServlet" method="post">
            <label for="bookName">Book Name:</label>
            <input type="text" id="bookName" name="bookName" required>

            <label for="userName">Your Name:</label>
            <input type="text" id="userName" name="userName" required>

            <input type="submit" value="Borrow Book">
        </form>
    </div>
</body>
</html>

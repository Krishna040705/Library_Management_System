<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.text.SimpleDateFormat, java.util.Date" %>
<%@ page import="com.library.util.DBConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Borrow Confirmation</title>
    <style>
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            text-align: center;
            color: #333;
        }

        h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #4A90E2;
        }

        p {
            font-size: 18px;
            line-height: 1.6;
            color: #555;
            margin-bottom: 20px;
        }

        strong {
            color: #333;
            font-weight: bold;
        }

        a {
            display: inline-block;
            padding: 12px 25px;
            background-color: #4A90E2;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        a:hover {
            background-color: #357ABD;
        }

        /* Responsive design */
        @media (max-width: 600px) {
            .container {
                padding: 30px;
            }

            h2 {
                font-size: 20px;
            }

            p {
                font-size: 16px;
            }

            a {
                padding: 10px 20px;
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Borrow Confirmation</h2>
        <%
            // Retrieve bookName, userName, and dueDate from the request attributes
            String bookName = (String) request.getAttribute("bookName");
            String userName = (String) request.getAttribute("userName");
            String dueDateStr = (String) request.getAttribute("dueDate");

            // Database operation to insert into borrowlist table
            Connection connection = null;
            PreparedStatement statement = null;
            boolean recordInserted = false;

            try {
                // Convert dueDate from String to java.sql.Date
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  // Assuming date is in yyyy-MM-dd format
                Date parsedDate = sdf.parse(dueDateStr);
                java.sql.Date dueDate = new java.sql.Date(parsedDate.getTime());

                // Get the connection from DBConnection utility class
                connection = DBConnection.getConnection();

                // Insert data into borrowlist table
                String sql = "INSERT INTO borrowlist (userName, bookName, dueDate) VALUES (?, ?, ?)";
                statement = connection.prepareStatement(sql);
                statement.setString(1, userName);
                statement.setString(2, bookName);
                statement.setDate(3, dueDate);  // Set the dueDate as java.sql.Date

                // Execute the update
                int rowsInserted = statement.executeUpdate();
                recordInserted = (rowsInserted > 0);

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // Close resources
                if (statement != null) try { statement.close(); } catch (Exception ex) { ex.printStackTrace(); }
                if (connection != null) try { connection.close(); } catch (Exception ex) { ex.printStackTrace(); }
            }
        %>
        <p>The book "<strong><%= bookName %></strong>" has been successfully borrowed by <strong><%= userName %></strong>.</p>
        <p>It is due back in one week (due date: <strong><%= dueDateStr %></strong>).</p>
        <%
            if (recordInserted) {
        %>
            <p>Borrow record has been successfully added to the database.</p>
        <%
            } else {
        %>
            <p>Failed to add the borrow record to the database.</p>
        <%
            }
        %>
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>

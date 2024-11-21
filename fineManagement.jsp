<%@ page import="com.library.fine.Fine" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KL Library Management System - Fine Management</title>
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
            text-align: left;
        }

        .form-container p {
            font-size: 1em;
            color: #333;
            margin: 10px 0;
        }

        .form-container label {
            font-size: 0.9em;
            color: #555;
            display: inline-block;
            margin-top: 10px;
        }

        .form-container input[type="checkbox"] {
            margin-left: 5px;
            vertical-align: middle;
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

        .message {
            font-size: 1em;
            color: green;
            margin-top: 15px;
            text-align: center;
        }

        .message.error {
            color: red;
        }
    </style>
</head>
<body>

    <h1>Welcome to the KL Library Management System</h1>

    <div class="form-container">
        <h2>Fine Management</h2>

        <%-- Retrieve the Fine object from the request --%>
        <%
            Fine fine = (Fine) request.getAttribute("fine");
        %>

        <%-- Check if the fine object is available --%>
        <%
            if (fine != null) {
        %>
            <p>User ID: <%= fine.getUserId() %></p>
            <p>Total Fine: $<%= fine.getAmount() %></p>

            <form method="post" action="manageFine">
                <input type="hidden" name="fineId" value="<%= fine.getFineId() %>">
                <label for="paid">Paid: </label>
                <input type="checkbox" name="paid" value="true" <%= fine.isPaid() ? "checked" : "" %>><br><br>
                <button type="submit">Update Fine Status</button>
            </form>
        <%
            } else {
        %>
            <p>No fines found for this user.</p>
        <%
            }
        %>

        <%-- Display success or error messages --%>
        <%
            if (request.getParameter("success") != null) {
        %>
            <p class="message">Fine updated successfully!</p>
        <%
            } else if (request.getParameter("error") != null) {
        %>
            <p class="message error">Error updating fine!</p>
        <%
            }
        %>
    </div>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.library.book.Book" %> <!-- Adjust the package based on your project structure -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Books - KL Library Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
        }

        h1 {
            font-size: 2.5em;
            font-weight: bold;
            color: white;
            background-color: #007bff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 80%;
            text-align: center;
            margin-bottom: 30px;
        }

        .table-container {
            width: 80%;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        .add-book-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 1em;
            text-decoration: none;
            text-align: center;
        }

        .add-book-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <h1>Library Books</h1>

    <div class="table-container">
        <%
            // Retrieve the list of books from the request scope
List<Book> bookList = (List<Book>) request.getAttribute("bookList");
            
            if (bookList == null || bookList.isEmpty()) {
        %>
            <p>No books available.</p>
        <%
            } else {
        %>
            <table>
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Genre</th>
                    <th>Availability</th>
                </tr>
                <%
                    // Loop through each book in the list and display its details
                    for (Book book : bookList) {
                %>
                <tr>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getAuthor() %></td>
                    <td><%= book.getGenre() %></td>
                    <td><%= book.isAvailable() ? "Available" : "Not Available" %></td>
                </tr>
                <%
                    }
                %>
            </table>
        <%
            }
        %>
    </div>

    <a href="addBook.jsp" class="add-book-button">Add a New Book</a>

</body>
</html>

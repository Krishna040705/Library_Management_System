<%@ page import="java.util.List" %>
<%@ page import="com.library.book.Book" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #2C3E50;
            font-size: 28px;
            text-align: center;
            margin-bottom: 20px;
        }
        .results-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        table {
            width: 100%;
            max-width: 800px;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table th, table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        table th {
            background-color: #3498db;
            color: white;
            font-size: 16px;
        }
        table tr:hover {
            background-color: #f1f1f1;
        }
        table td {
            font-size: 14px;
            color: #2C3E50;
        }
        .no-results {
            color: #7f8c8d;
            font-size: 18px;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="results-container">
        <h1>Search Results</h1>
        
        <% 
            // Get the list of books from request attributes
            List<Book> books = (List<Book>) request.getAttribute("books");
            String message = (String) request.getAttribute("message");

            // Display message if no books found
            if (message != null) {
        %>
            <p class="no-results"><%= message %></p>
        <% 
            } else if (books != null && !books.isEmpty()) { 
        %>
        
            <table>
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Available</th>
                        <th>Book ID</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Book book : books) { %>
                        <tr>
                            <td><%= book.getTitle() != null ? book.getTitle() : "No Title" %></td> <!-- Default to "No Title" if title is null -->
                            <td><%= book.getAuthor() != null ? book.getAuthor() : "No Author" %></td>
                            <td><%= book.getGenre() != null ? book.getGenre() : "No Genre" %></td>
                            <td>Yes</td> 
                            <td><%= book.getBookId() %></td> <!-- Show the book ID -->
                        </tr>
                    <% } %>
                </tbody>
            </table>
        
        <% } %>
    </div>
</body>
</html>

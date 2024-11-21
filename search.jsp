<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Book</title>
</head>
<body>
    <h2>Search for a Book</h2>
   <form action="SearchBookServlet" method="POST">
    <input type="text" name="keyword" placeholder="Enter book title or author">
    <button type="submit">Search</button>
</form>
</body>
</html>

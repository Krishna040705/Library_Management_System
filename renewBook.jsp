<!-- renewBook.jsp -->
<html>
<head><title>Renew Book</title></head>
<body>
    <h2>Renew Book</h2>
    <form action="RenewBookServlet" method="post">
        Borrowing ID: <input type="text" name="borrowingId" required><br>
        <input type="submit" value="Renew">
    </form>

    <c:if test="${param.error != null}">
        <p style="color:red;">An error occurred while renewing the book. Please try again.</p>
    </c:if>
</body>
</html>

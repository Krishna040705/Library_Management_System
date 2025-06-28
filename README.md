# Library Management System

This project is a web-based Library Management System developed using Java Servlets, JSP, and JDBC. It provides an end-to-end solution for managing library operations such as user registration, book management, issue/return of books, and fine calculation. The system is designed to be deployed on an Apache Tomcat server and connected to a relational database using JDBC.

---

## Features

- User authentication and registration
- Book addition, viewing, and search functionality
- Book issue and return with tracking
- Fine management for overdue returns
- Administrative control for book and user records
- JSP-based user interface

---

## Technology Stack

| Component       | Technology                |
|----------------|---------------------------|
| Frontend        | JSP, HTML, CSS            |
| Backend         | Java, Java Servlets       |
| Database Layer  | JDBC                      |
| Database        | MySQL (or compatible RDBMS)|
| Server          | Apache Tomcat             |

---

## Project Structure

- `*.java` - Source files containing servlet logic and business processing
- `*.class` - Compiled bytecode files
- `*.jsp` - Presentation layer pages for user interaction
- `DAO` classes - Data Access Objects handling DB transactions
- `Servlet` classes - Request handlers (e.g., login, registration, book search)
- `LMS.zip` - Packaged source code for distribution
- `README.md` - Documentation and project details

Example files from the project:
- `LoginServlet.java`, `RegisterServlet.java`, `SearchBookServlet.java`
- `UserDAO.java`, `BorrowDAO.java`, `FineDAO.java`
- `addBook.jsp`, `borrowBook.jsp`, `confirmation.jsp`

---

## Setup and Execution

To run this project locally:

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/library-management-system.git

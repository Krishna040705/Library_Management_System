package com.klibrary.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // For simplicity, we check hardcoded credentials (replace with database validation)
        if ("admin".equals(username) && "admin123".equals(password)) {
            // Start session and set the user attribute
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            // Redirect to the home page after successful login
            response.sendRedirect("home.jsp");
        } else {
            // If login fails, redirect back to the login page with error
            response.sendRedirect("login.jsp?error=true");
        }
    }
}

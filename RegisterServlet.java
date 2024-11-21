package com.klibrary.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Here, you would typically add user information to the database
        // For now, we'll simulate the registration process with a log message
        System.out.println("New User Registered: " + username + ", " + email);

        // Redirect to login page after successful registration
        response.sendRedirect("login.jsp?registration=true");
    }
}
